all: rw-latency-test rw-latency-test-compute

rw-latency-test: rw-latency-test.c
	gcc -O0 -o rw-latency-test rw-latency-test.c

rw-latency-test-compute: rw-latency-test-compute.c
	gcc -O0 -o rw-latency-test-compute rw-latency-test-compute.c

clean:
	rm rw-latency-test rw-latency-test-compute
