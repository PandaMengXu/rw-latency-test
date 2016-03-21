#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sched.h>
#include <string.h>

#define ARRAYSIZE(arr)      (sizeof(arr)/sizeof(arr[0]))
#define CACHE_LINE_SIZE     64

#if defined(__i386__)
static __inline__ unsigned long long rdtsc(void)
{
  unsigned long long int x;
     __asm__ volatile (".byte 0x0f, 0x31" : "=A" (x));
     return x;
}
#elif defined(__x86_64__)
static __inline__ unsigned long long rdtsc(void)
{
  unsigned hi, lo;
  __asm__ __volatile__ ("rdtsc" : "=a"(lo), "=d"(hi));
  return ( (unsigned long long)lo)|( ((unsigned long long)hi)<<32 );
}
#endif

inline void
sw_barrier()
{
    asm volatile("": : :"memory");
}

inline void
hw_barrier()
{
    __sync_synchronize();
}

#define T_READ  0
#define T_WRITE 1

inline void
clflush(volatile void *p)
{
    asm volatile ("clflush (%0)" :: "r"(p));
}

int usage()
{
    printf("[Usage] ./program array_size_kb iters cpu_to_pin\n");
}

inline void
flush_array(char* array, long size)
{
    int i;
    for ( i = 0; i < size; i+= CACHE_LINE_SIZE )
    {
        clflush(array + i);
    }
    return;
}

inline void
init_array(char* array, long size)
{
    int i;
    for ( i = 0; i < size; i+= CACHE_LINE_SIZE )
    {
        array[i] = i % 255;
    }
    return;
}

inline void
read_array(char* array, long size)
{
    int i;
    char tmp;
//    int sum = 0;
    for ( i = 0; i < size; i+= CACHE_LINE_SIZE )
    {
        sw_barrier();
        tmp = array[i];
//        sum = (sum + tmp) % 65535;
    }
    return;
}

inline void
write_array(char* array, long size)
{
    int i;
    char tmp = 1;
//    int sum = 0;
    for ( i = 0; i < size; i+= CACHE_LINE_SIZE )
    {
        sw_barrier();
        array[i] = tmp;
//        sum = (sum + array[i]) % 65535;
    }
    return;
}

void print_latency(long *array, long size, int type)
{
    int i;
    char type_read[] = "read\0";
    char type_write[] = "write\0";
    char *type_str;

    if ( type == T_READ )
        type_str = type_read;
    if ( type == T_WRITE )
        type_str = type_write;

    for ( i = 0; i < size; i+=1 )
        printf("%s\t%ld\t%.3f\n", type_str, array[i], array[i] * 1.0 / 1000);

    return;
}

int pin_to_cpu(int cpu)
{
    cpu_set_t cpuset;
    struct sched_param sched_param;

    /* set cpu affinity */
    CPU_ZERO(&cpuset);
    CPU_SET(cpu, &cpuset);
    if ( sched_setaffinity(0, sizeof(cpuset), &cpuset) )
    {
        fprintf(stderr, "setaffinity fails. exit\n");
        return 3;
    }

    /* set sched to SCHED_FIFO and highest priority */
    memset(&sched_param, 0, sizeof(struct sched_param));
    sched_param.sched_priority = 99; /* highest priority in FIFO */
    if ( sched_setscheduler(0, SCHED_FIFO, &sched_param) )
    {
        fprintf(stderr, "setscheduler fails. exit\n");
        return 4;
    }
    return 0;
}

int main (int argc, char* argv[])
{
    int array_size_kb;
    long array_size;
    int iters;
    char *array;
    int i;
    long start, finish;
    long *read_latency, *write_latency;
    int cpu;

    if (argc < 4)
    {
        usage();
        return 1;
    }

    array_size_kb = atoi(argv[1]);
    iters = atoi(argv[2]);
    cpu = atoi(argv[3]);

    if ( iters < 0 || array_size_kb < 0 )
    {
        fprintf(stderr, "iters=%d or array_size_kb=%d is invalid\n",
                iters, array_size_kb);
        return 1;
    }

    array_size = array_size_kb * 1024;
    array = (char *) malloc( array_size );
    read_latency = (long *) malloc( iters * sizeof(long) );
    write_latency = (long *) malloc( iters * sizeof(long) );
    if ( !array || !read_latency || !write_latency )
    {
        fprintf(stderr, "array=%lx, read_latency=%lx, write_latency=%lx\n",
                (long) array, (long) read_latency, (long) write_latency);
        return 1;
    }

    if ( pin_to_cpu(cpu) )
    {
        fprintf(stderr, "pin to cpu %d fails\n", cpu);
        return 2;
    }
    
    init_array(array, array_size);

    for ( i = 0; i < iters; i+=1 )
    {
        flush_array(array, array_size);
        start = rdtsc();
        read_array(array, array_size);
        finish = rdtsc();
        read_latency[i] = finish - start;
    }

    for ( i = 0; i < iters; i+=1 )
    {
        flush_array(array, array_size);
        start = rdtsc();
        write_array(array, array_size);
        finish = rdtsc();
        write_latency[i] = finish - start;
    }
    
    print_latency(read_latency, iters, T_READ);
    print_latency(write_latency, iters, T_WRITE);

    return 0;
}
