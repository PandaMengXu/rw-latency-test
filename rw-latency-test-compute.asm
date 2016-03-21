
rw-latency-test-compute:     file format elf64-x86-64


Disassembly of section .init:

0000000000400620 <_init>:
  400620:	48 83 ec 08          	sub    $0x8,%rsp
  400624:	e8 f3 00 00 00       	callq  40071c <call_gmon_start>
  400629:	e8 82 01 00 00       	callq  4007b0 <frame_dummy>
  40062e:	e8 2d 09 00 00       	callq  400f60 <__do_global_ctors_aux>
  400633:	48 83 c4 08          	add    $0x8,%rsp
  400637:	c3                   	retq   

Disassembly of section .plt:

0000000000400640 <puts@plt-0x10>:
  400640:	ff 35 aa 19 20 00    	pushq  0x2019aa(%rip)        # 601ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400646:	ff 25 ac 19 20 00    	jmpq   *0x2019ac(%rip)        # 601ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40064c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400650 <puts@plt>:
  400650:	ff 25 aa 19 20 00    	jmpq   *0x2019aa(%rip)        # 602000 <_GLOBAL_OFFSET_TABLE_+0x18>
  400656:	68 00 00 00 00       	pushq  $0x0
  40065b:	e9 e0 ff ff ff       	jmpq   400640 <_init+0x20>

0000000000400660 <__stack_chk_fail@plt>:
  400660:	ff 25 a2 19 20 00    	jmpq   *0x2019a2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x20>
  400666:	68 01 00 00 00       	pushq  $0x1
  40066b:	e9 d0 ff ff ff       	jmpq   400640 <_init+0x20>

0000000000400670 <printf@plt>:
  400670:	ff 25 9a 19 20 00    	jmpq   *0x20199a(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x28>
  400676:	68 02 00 00 00       	pushq  $0x2
  40067b:	e9 c0 ff ff ff       	jmpq   400640 <_init+0x20>

0000000000400680 <sched_setscheduler@plt>:
  400680:	ff 25 92 19 20 00    	jmpq   *0x201992(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x30>
  400686:	68 03 00 00 00       	pushq  $0x3
  40068b:	e9 b0 ff ff ff       	jmpq   400640 <_init+0x20>

0000000000400690 <sched_setaffinity@plt>:
  400690:	ff 25 8a 19 20 00    	jmpq   *0x20198a(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x38>
  400696:	68 04 00 00 00       	pushq  $0x4
  40069b:	e9 a0 ff ff ff       	jmpq   400640 <_init+0x20>

00000000004006a0 <__libc_start_main@plt>:
  4006a0:	ff 25 82 19 20 00    	jmpq   *0x201982(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x40>
  4006a6:	68 05 00 00 00       	pushq  $0x5
  4006ab:	e9 90 ff ff ff       	jmpq   400640 <_init+0x20>

00000000004006b0 <fprintf@plt>:
  4006b0:	ff 25 7a 19 20 00    	jmpq   *0x20197a(%rip)        # 602030 <_GLOBAL_OFFSET_TABLE_+0x48>
  4006b6:	68 06 00 00 00       	pushq  $0x6
  4006bb:	e9 80 ff ff ff       	jmpq   400640 <_init+0x20>

00000000004006c0 <malloc@plt>:
  4006c0:	ff 25 72 19 20 00    	jmpq   *0x201972(%rip)        # 602038 <_GLOBAL_OFFSET_TABLE_+0x50>
  4006c6:	68 07 00 00 00       	pushq  $0x7
  4006cb:	e9 70 ff ff ff       	jmpq   400640 <_init+0x20>

00000000004006d0 <atoi@plt>:
  4006d0:	ff 25 6a 19 20 00    	jmpq   *0x20196a(%rip)        # 602040 <_GLOBAL_OFFSET_TABLE_+0x58>
  4006d6:	68 08 00 00 00       	pushq  $0x8
  4006db:	e9 60 ff ff ff       	jmpq   400640 <_init+0x20>

00000000004006e0 <fwrite@plt>:
  4006e0:	ff 25 62 19 20 00    	jmpq   *0x201962(%rip)        # 602048 <_GLOBAL_OFFSET_TABLE_+0x60>
  4006e6:	68 09 00 00 00       	pushq  $0x9
  4006eb:	e9 50 ff ff ff       	jmpq   400640 <_init+0x20>

Disassembly of section .text:

00000000004006f0 <_start>:
  4006f0:	31 ed                	xor    %ebp,%ebp
  4006f2:	49 89 d1             	mov    %rdx,%r9
  4006f5:	5e                   	pop    %rsi
  4006f6:	48 89 e2             	mov    %rsp,%rdx
  4006f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4006fd:	50                   	push   %rax
  4006fe:	54                   	push   %rsp
  4006ff:	49 c7 c0 50 0f 40 00 	mov    $0x400f50,%r8
  400706:	48 c7 c1 c0 0e 40 00 	mov    $0x400ec0,%rcx
  40070d:	48 c7 c7 0f 0c 40 00 	mov    $0x400c0f,%rdi
  400714:	e8 87 ff ff ff       	callq  4006a0 <__libc_start_main@plt>
  400719:	f4                   	hlt    
  40071a:	90                   	nop
  40071b:	90                   	nop

000000000040071c <call_gmon_start>:
  40071c:	48 83 ec 08          	sub    $0x8,%rsp
  400720:	48 8b 05 b9 18 20 00 	mov    0x2018b9(%rip),%rax        # 601fe0 <_DYNAMIC+0x190>
  400727:	48 85 c0             	test   %rax,%rax
  40072a:	74 02                	je     40072e <call_gmon_start+0x12>
  40072c:	ff d0                	callq  *%rax
  40072e:	48 83 c4 08          	add    $0x8,%rsp
  400732:	c3                   	retq   
  400733:	90                   	nop
  400734:	90                   	nop
  400735:	90                   	nop
  400736:	90                   	nop
  400737:	90                   	nop
  400738:	90                   	nop
  400739:	90                   	nop
  40073a:	90                   	nop
  40073b:	90                   	nop
  40073c:	90                   	nop
  40073d:	90                   	nop
  40073e:	90                   	nop
  40073f:	90                   	nop

0000000000400740 <__do_global_dtors_aux>:
  400740:	55                   	push   %rbp
  400741:	48 89 e5             	mov    %rsp,%rbp
  400744:	53                   	push   %rbx
  400745:	48 83 ec 08          	sub    $0x8,%rsp
  400749:	80 3d 18 19 20 00 00 	cmpb   $0x0,0x201918(%rip)        # 602068 <completed.6531>
  400750:	75 4b                	jne    40079d <__do_global_dtors_aux+0x5d>
  400752:	bb 40 1e 60 00       	mov    $0x601e40,%ebx
  400757:	48 8b 05 12 19 20 00 	mov    0x201912(%rip),%rax        # 602070 <dtor_idx.6533>
  40075e:	48 81 eb 38 1e 60 00 	sub    $0x601e38,%rbx
  400765:	48 c1 fb 03          	sar    $0x3,%rbx
  400769:	48 83 eb 01          	sub    $0x1,%rbx
  40076d:	48 39 d8             	cmp    %rbx,%rax
  400770:	73 24                	jae    400796 <__do_global_dtors_aux+0x56>
  400772:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400778:	48 83 c0 01          	add    $0x1,%rax
  40077c:	48 89 05 ed 18 20 00 	mov    %rax,0x2018ed(%rip)        # 602070 <dtor_idx.6533>
  400783:	ff 14 c5 38 1e 60 00 	callq  *0x601e38(,%rax,8)
  40078a:	48 8b 05 df 18 20 00 	mov    0x2018df(%rip),%rax        # 602070 <dtor_idx.6533>
  400791:	48 39 d8             	cmp    %rbx,%rax
  400794:	72 e2                	jb     400778 <__do_global_dtors_aux+0x38>
  400796:	c6 05 cb 18 20 00 01 	movb   $0x1,0x2018cb(%rip)        # 602068 <completed.6531>
  40079d:	48 83 c4 08          	add    $0x8,%rsp
  4007a1:	5b                   	pop    %rbx
  4007a2:	5d                   	pop    %rbp
  4007a3:	c3                   	retq   
  4007a4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4007ab:	00 00 00 00 00 

00000000004007b0 <frame_dummy>:
  4007b0:	48 83 3d 90 16 20 00 	cmpq   $0x0,0x201690(%rip)        # 601e48 <__JCR_END__>
  4007b7:	00 
  4007b8:	55                   	push   %rbp
  4007b9:	48 89 e5             	mov    %rsp,%rbp
  4007bc:	74 12                	je     4007d0 <frame_dummy+0x20>
  4007be:	b8 00 00 00 00       	mov    $0x0,%eax
  4007c3:	48 85 c0             	test   %rax,%rax
  4007c6:	74 08                	je     4007d0 <frame_dummy+0x20>
  4007c8:	5d                   	pop    %rbp
  4007c9:	bf 48 1e 60 00       	mov    $0x601e48,%edi
  4007ce:	ff e0                	jmpq   *%rax
  4007d0:	5d                   	pop    %rbp
  4007d1:	c3                   	retq   
  4007d2:	90                   	nop
  4007d3:	90                   	nop

00000000004007d4 <rdtsc>:
  4007d4:	55                   	push   %rbp
  4007d5:	48 89 e5             	mov    %rsp,%rbp
  4007d8:	41 54                	push   %r12
  4007da:	53                   	push   %rbx
  4007db:	0f 31                	rdtsc  
  4007dd:	89 d3                	mov    %edx,%ebx
  4007df:	41 89 c4             	mov    %eax,%r12d
  4007e2:	44 89 65 e8          	mov    %r12d,-0x18(%rbp)
  4007e6:	89 5d ec             	mov    %ebx,-0x14(%rbp)
  4007e9:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4007ec:	8b 55 ec             	mov    -0x14(%rbp),%edx
  4007ef:	48 c1 e2 20          	shl    $0x20,%rdx
  4007f3:	48 09 d0             	or     %rdx,%rax
  4007f6:	5b                   	pop    %rbx
  4007f7:	41 5c                	pop    %r12
  4007f9:	5d                   	pop    %rbp
  4007fa:	c3                   	retq   

00000000004007fb <sw_barrier>:
  4007fb:	55                   	push   %rbp
  4007fc:	48 89 e5             	mov    %rsp,%rbp
  4007ff:	5d                   	pop    %rbp
  400800:	c3                   	retq   

0000000000400801 <hw_barrier>:
  400801:	55                   	push   %rbp
  400802:	48 89 e5             	mov    %rsp,%rbp
  400805:	0f ae f0             	mfence 
  400808:	5d                   	pop    %rbp
  400809:	c3                   	retq   

000000000040080a <clflush>:
  40080a:	55                   	push   %rbp
  40080b:	48 89 e5             	mov    %rsp,%rbp
  40080e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400812:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400816:	0f ae 38             	clflush (%rax)
  400819:	5d                   	pop    %rbp
  40081a:	c3                   	retq   

000000000040081b <usage>:
  40081b:	55                   	push   %rbp
  40081c:	48 89 e5             	mov    %rsp,%rbp
  40081f:	bf b0 0f 40 00       	mov    $0x400fb0,%edi
  400824:	e8 27 fe ff ff       	callq  400650 <puts@plt>
  400829:	5d                   	pop    %rbp
  40082a:	c3                   	retq   

000000000040082b <flush_array>:
  40082b:	55                   	push   %rbp
  40082c:	48 89 e5             	mov    %rsp,%rbp
  40082f:	48 83 ec 20          	sub    $0x20,%rsp
  400833:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400837:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40083b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400842:	eb 15                	jmp    400859 <flush_array+0x2e>
  400844:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400847:	48 98                	cltq   
  400849:	48 03 45 e8          	add    -0x18(%rbp),%rax
  40084d:	48 89 c7             	mov    %rax,%rdi
  400850:	e8 b5 ff ff ff       	callq  40080a <clflush>
  400855:	83 45 fc 40          	addl   $0x40,-0x4(%rbp)
  400859:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40085c:	48 98                	cltq   
  40085e:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  400862:	7c e0                	jl     400844 <flush_array+0x19>
  400864:	c9                   	leaveq 
  400865:	c3                   	retq   

0000000000400866 <init_array>:
  400866:	55                   	push   %rbp
  400867:	48 89 e5             	mov    %rsp,%rbp
  40086a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40086e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400872:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400879:	eb 10                	jmp    40088b <init_array+0x25>
  40087b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40087e:	48 98                	cltq   
  400880:	48 03 45 e8          	add    -0x18(%rbp),%rax
  400884:	c6 00 01             	movb   $0x1,(%rax)
  400887:	83 45 fc 40          	addl   $0x40,-0x4(%rbp)
  40088b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40088e:	48 98                	cltq   
  400890:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  400894:	7c e5                	jl     40087b <init_array+0x15>
  400896:	5d                   	pop    %rbp
  400897:	c3                   	retq   

0000000000400898 <read_array>:
  400898:	55                   	push   %rbp
  400899:	48 89 e5             	mov    %rsp,%rbp
  40089c:	53                   	push   %rbx
  40089d:	48 83 ec 28          	sub    $0x28,%rsp
  4008a1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4008a5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  4008a9:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  4008b0:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  4008b7:	eb 58                	jmp    400911 <read_array+0x79>
  4008b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4008be:	e8 38 ff ff ff       	callq  4007fb <sw_barrier>
  4008c3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4008c6:	48 98                	cltq   
  4008c8:	48 03 45 d8          	add    -0x28(%rbp),%rax
  4008cc:	0f b6 00             	movzbl (%rax),%eax
  4008cf:	88 45 ef             	mov    %al,-0x11(%rbp)
  4008d2:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
  4008d6:	89 c1                	mov    %eax,%ecx
  4008d8:	03 4d e8             	add    -0x18(%rbp),%ecx
  4008db:	ba 01 80 00 80       	mov    $0x80008001,%edx
  4008e0:	89 c8                	mov    %ecx,%eax
  4008e2:	f7 ea                	imul   %edx
  4008e4:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
  4008e7:	89 c2                	mov    %eax,%edx
  4008e9:	c1 fa 0f             	sar    $0xf,%edx
  4008ec:	89 c8                	mov    %ecx,%eax
  4008ee:	c1 f8 1f             	sar    $0x1f,%eax
  4008f1:	89 d3                	mov    %edx,%ebx
  4008f3:	29 c3                	sub    %eax,%ebx
  4008f5:	89 d8                	mov    %ebx,%eax
  4008f7:	89 45 e8             	mov    %eax,-0x18(%rbp)
  4008fa:	8b 55 e8             	mov    -0x18(%rbp),%edx
  4008fd:	89 d0                	mov    %edx,%eax
  4008ff:	c1 e0 10             	shl    $0x10,%eax
  400902:	29 d0                	sub    %edx,%eax
  400904:	89 ca                	mov    %ecx,%edx
  400906:	29 c2                	sub    %eax,%edx
  400908:	89 d0                	mov    %edx,%eax
  40090a:	89 45 e8             	mov    %eax,-0x18(%rbp)
  40090d:	83 45 e4 40          	addl   $0x40,-0x1c(%rbp)
  400911:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400914:	48 98                	cltq   
  400916:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  40091a:	7c 9d                	jl     4008b9 <read_array+0x21>
  40091c:	b8 e1 0f 40 00       	mov    $0x400fe1,%eax
  400921:	8b 55 e8             	mov    -0x18(%rbp),%edx
  400924:	89 d6                	mov    %edx,%esi
  400926:	48 89 c7             	mov    %rax,%rdi
  400929:	b8 00 00 00 00       	mov    $0x0,%eax
  40092e:	e8 3d fd ff ff       	callq  400670 <printf@plt>
  400933:	48 83 c4 28          	add    $0x28,%rsp
  400937:	5b                   	pop    %rbx
  400938:	5d                   	pop    %rbp
  400939:	c3                   	retq   

000000000040093a <write_array>:
  40093a:	55                   	push   %rbp
  40093b:	48 89 e5             	mov    %rsp,%rbp
  40093e:	53                   	push   %rbx
  40093f:	48 83 ec 28          	sub    $0x28,%rsp
  400943:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400947:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  40094b:	c6 45 ef 01          	movb   $0x1,-0x11(%rbp)
  40094f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  400956:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  40095d:	eb 63                	jmp    4009c2 <write_array+0x88>
  40095f:	b8 00 00 00 00       	mov    $0x0,%eax
  400964:	e8 92 fe ff ff       	callq  4007fb <sw_barrier>
  400969:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40096c:	48 98                	cltq   
  40096e:	48 03 45 d8          	add    -0x28(%rbp),%rax
  400972:	0f b6 55 ef          	movzbl -0x11(%rbp),%edx
  400976:	88 10                	mov    %dl,(%rax)
  400978:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40097b:	48 98                	cltq   
  40097d:	48 03 45 d8          	add    -0x28(%rbp),%rax
  400981:	0f b6 00             	movzbl (%rax),%eax
  400984:	0f be c0             	movsbl %al,%eax
  400987:	89 c1                	mov    %eax,%ecx
  400989:	03 4d e8             	add    -0x18(%rbp),%ecx
  40098c:	ba 01 80 00 80       	mov    $0x80008001,%edx
  400991:	89 c8                	mov    %ecx,%eax
  400993:	f7 ea                	imul   %edx
  400995:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
  400998:	89 c2                	mov    %eax,%edx
  40099a:	c1 fa 0f             	sar    $0xf,%edx
  40099d:	89 c8                	mov    %ecx,%eax
  40099f:	c1 f8 1f             	sar    $0x1f,%eax
  4009a2:	89 d3                	mov    %edx,%ebx
  4009a4:	29 c3                	sub    %eax,%ebx
  4009a6:	89 d8                	mov    %ebx,%eax
  4009a8:	89 45 e8             	mov    %eax,-0x18(%rbp)
  4009ab:	8b 55 e8             	mov    -0x18(%rbp),%edx
  4009ae:	89 d0                	mov    %edx,%eax
  4009b0:	c1 e0 10             	shl    $0x10,%eax
  4009b3:	29 d0                	sub    %edx,%eax
  4009b5:	89 ca                	mov    %ecx,%edx
  4009b7:	29 c2                	sub    %eax,%edx
  4009b9:	89 d0                	mov    %edx,%eax
  4009bb:	89 45 e8             	mov    %eax,-0x18(%rbp)
  4009be:	83 45 e4 40          	addl   $0x40,-0x1c(%rbp)
  4009c2:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4009c5:	48 98                	cltq   
  4009c7:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  4009cb:	7c 92                	jl     40095f <write_array+0x25>
  4009cd:	b8 ee 0f 40 00       	mov    $0x400fee,%eax
  4009d2:	8b 55 e8             	mov    -0x18(%rbp),%edx
  4009d5:	89 d6                	mov    %edx,%esi
  4009d7:	48 89 c7             	mov    %rax,%rdi
  4009da:	b8 00 00 00 00       	mov    $0x0,%eax
  4009df:	e8 8c fc ff ff       	callq  400670 <printf@plt>
  4009e4:	48 83 c4 28          	add    $0x28,%rsp
  4009e8:	5b                   	pop    %rbx
  4009e9:	5d                   	pop    %rbp
  4009ea:	c3                   	retq   

00000000004009eb <print_latency>:
  4009eb:	55                   	push   %rbp
  4009ec:	48 89 e5             	mov    %rsp,%rbp
  4009ef:	48 83 ec 50          	sub    $0x50,%rsp
  4009f3:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  4009f7:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  4009fb:	89 55 bc             	mov    %edx,-0x44(%rbp)
  4009fe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400a05:	00 00 
  400a07:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a0b:	31 c0                	xor    %eax,%eax
  400a0d:	8b 05 f6 05 00 00    	mov    0x5f6(%rip),%eax        # 401009 <_IO_stdin_used+0x61>
  400a13:	89 45 f0             	mov    %eax,-0x10(%rbp)
  400a16:	0f b7 05 f0 05 00 00 	movzwl 0x5f0(%rip),%eax        # 40100d <_IO_stdin_used+0x65>
  400a1d:	66 89 45 f4          	mov    %ax,-0xc(%rbp)
  400a21:	8b 05 e8 05 00 00    	mov    0x5e8(%rip),%eax        # 40100f <_IO_stdin_used+0x67>
  400a27:	89 45 e0             	mov    %eax,-0x20(%rbp)
  400a2a:	0f b7 05 e2 05 00 00 	movzwl 0x5e2(%rip),%eax        # 401013 <_IO_stdin_used+0x6b>
  400a31:	66 89 45 e4          	mov    %ax,-0x1c(%rbp)
  400a35:	0f b6 05 d9 05 00 00 	movzbl 0x5d9(%rip),%eax        # 401015 <_IO_stdin_used+0x6d>
  400a3c:	88 45 e6             	mov    %al,-0x1a(%rbp)
  400a3f:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
  400a43:	75 08                	jne    400a4d <print_latency+0x62>
  400a45:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400a49:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  400a4d:	83 7d bc 01          	cmpl   $0x1,-0x44(%rbp)
  400a51:	75 08                	jne    400a5b <print_latency+0x70>
  400a53:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400a57:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  400a5b:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
  400a62:	eb 4e                	jmp    400ab2 <print_latency+0xc7>
  400a64:	8b 45 dc             	mov    -0x24(%rbp),%eax
  400a67:	48 98                	cltq   
  400a69:	48 c1 e0 03          	shl    $0x3,%rax
  400a6d:	48 03 45 c8          	add    -0x38(%rbp),%rax
  400a71:	48 8b 00             	mov    (%rax),%rax
  400a74:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  400a79:	f2 0f 10 0d 47 06 00 	movsd  0x647(%rip),%xmm1        # 4010c8 <_IO_stdin_used+0x120>
  400a80:	00 
  400a81:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  400a85:	8b 45 dc             	mov    -0x24(%rbp),%eax
  400a88:	48 98                	cltq   
  400a8a:	48 c1 e0 03          	shl    $0x3,%rax
  400a8e:	48 03 45 c8          	add    -0x38(%rbp),%rax
  400a92:	48 8b 10             	mov    (%rax),%rdx
  400a95:	b8 fc 0f 40 00       	mov    $0x400ffc,%eax
  400a9a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  400a9e:	48 89 ce             	mov    %rcx,%rsi
  400aa1:	48 89 c7             	mov    %rax,%rdi
  400aa4:	b8 01 00 00 00       	mov    $0x1,%eax
  400aa9:	e8 c2 fb ff ff       	callq  400670 <printf@plt>
  400aae:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
  400ab2:	8b 45 dc             	mov    -0x24(%rbp),%eax
  400ab5:	48 98                	cltq   
  400ab7:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  400abb:	7c a7                	jl     400a64 <print_latency+0x79>
  400abd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400ac1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400ac8:	00 00 
  400aca:	74 05                	je     400ad1 <print_latency+0xe6>
  400acc:	e8 8f fb ff ff       	callq  400660 <__stack_chk_fail@plt>
  400ad1:	c9                   	leaveq 
  400ad2:	c3                   	retq   

0000000000400ad3 <pin_to_cpu>:
  400ad3:	55                   	push   %rbp
  400ad4:	48 89 e5             	mov    %rsp,%rbp
  400ad7:	53                   	push   %rbx
  400ad8:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
  400adf:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%rbp)
  400ae5:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  400aec:	48 89 c6             	mov    %rax,%rsi
  400aef:	b8 00 00 00 00       	mov    $0x0,%eax
  400af4:	ba 10 00 00 00       	mov    $0x10,%edx
  400af9:	48 89 f7             	mov    %rsi,%rdi
  400afc:	48 89 d1             	mov    %rdx,%rcx
  400aff:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  400b02:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
  400b08:	48 98                	cltq   
  400b0a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  400b0e:	48 81 7d d8 ff 03 00 	cmpq   $0x3ff,-0x28(%rbp)
  400b15:	00 
  400b16:	77 4a                	ja     400b62 <pin_to_cpu+0x8f>
  400b18:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400b1c:	48 c1 e8 06          	shr    $0x6,%rax
  400b20:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  400b27:	00 
  400b28:	48 8d 8d 50 ff ff ff 	lea    -0xb0(%rbp),%rcx
  400b2f:	48 01 ca             	add    %rcx,%rdx
  400b32:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
  400b39:	00 
  400b3a:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  400b41:	48 01 c8             	add    %rcx,%rax
  400b44:	48 8b 00             	mov    (%rax),%rax
  400b47:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  400b4b:	83 e1 3f             	and    $0x3f,%ecx
  400b4e:	be 01 00 00 00       	mov    $0x1,%esi
  400b53:	48 89 f3             	mov    %rsi,%rbx
  400b56:	48 d3 e3             	shl    %cl,%rbx
  400b59:	48 89 d9             	mov    %rbx,%rcx
  400b5c:	48 09 c8             	or     %rcx,%rax
  400b5f:	48 89 02             	mov    %rax,(%rdx)
  400b62:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  400b69:	48 89 c2             	mov    %rax,%rdx
  400b6c:	be 80 00 00 00       	mov    $0x80,%esi
  400b71:	bf 00 00 00 00       	mov    $0x0,%edi
  400b76:	e8 15 fb ff ff       	callq  400690 <sched_setaffinity@plt>
  400b7b:	85 c0                	test   %eax,%eax
  400b7d:	74 2b                	je     400baa <pin_to_cpu+0xd7>
  400b7f:	48 8b 05 da 14 20 00 	mov    0x2014da(%rip),%rax        # 602060 <__bss_start>
  400b86:	48 89 c2             	mov    %rax,%rdx
  400b89:	b8 16 10 40 00       	mov    $0x401016,%eax
  400b8e:	48 89 d1             	mov    %rdx,%rcx
  400b91:	ba 18 00 00 00       	mov    $0x18,%edx
  400b96:	be 01 00 00 00       	mov    $0x1,%esi
  400b9b:	48 89 c7             	mov    %rax,%rdi
  400b9e:	e8 3d fb ff ff       	callq  4006e0 <fwrite@plt>
  400ba3:	b8 03 00 00 00       	mov    $0x3,%eax
  400ba8:	eb 5b                	jmp    400c05 <pin_to_cpu+0x132>
  400baa:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400bae:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  400bb4:	c7 45 e0 63 00 00 00 	movl   $0x63,-0x20(%rbp)
  400bbb:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400bbf:	48 89 c2             	mov    %rax,%rdx
  400bc2:	be 01 00 00 00       	mov    $0x1,%esi
  400bc7:	bf 00 00 00 00       	mov    $0x0,%edi
  400bcc:	e8 af fa ff ff       	callq  400680 <sched_setscheduler@plt>
  400bd1:	85 c0                	test   %eax,%eax
  400bd3:	74 2b                	je     400c00 <pin_to_cpu+0x12d>
  400bd5:	48 8b 05 84 14 20 00 	mov    0x201484(%rip),%rax        # 602060 <__bss_start>
  400bdc:	48 89 c2             	mov    %rax,%rdx
  400bdf:	b8 2f 10 40 00       	mov    $0x40102f,%eax
  400be4:	48 89 d1             	mov    %rdx,%rcx
  400be7:	ba 19 00 00 00       	mov    $0x19,%edx
  400bec:	be 01 00 00 00       	mov    $0x1,%esi
  400bf1:	48 89 c7             	mov    %rax,%rdi
  400bf4:	e8 e7 fa ff ff       	callq  4006e0 <fwrite@plt>
  400bf9:	b8 04 00 00 00       	mov    $0x4,%eax
  400bfe:	eb 05                	jmp    400c05 <pin_to_cpu+0x132>
  400c00:	b8 00 00 00 00       	mov    $0x0,%eax
  400c05:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
  400c0c:	5b                   	pop    %rbx
  400c0d:	5d                   	pop    %rbp
  400c0e:	c3                   	retq   

0000000000400c0f <main>:
  400c0f:	55                   	push   %rbp
  400c10:	48 89 e5             	mov    %rsp,%rbp
  400c13:	53                   	push   %rbx
  400c14:	48 83 ec 58          	sub    $0x58,%rsp
  400c18:	89 7d ac             	mov    %edi,-0x54(%rbp)
  400c1b:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
  400c1f:	83 7d ac 03          	cmpl   $0x3,-0x54(%rbp)
  400c23:	7f 14                	jg     400c39 <main+0x2a>
  400c25:	b8 00 00 00 00       	mov    $0x0,%eax
  400c2a:	e8 ec fb ff ff       	callq  40081b <usage>
  400c2f:	b8 01 00 00 00       	mov    $0x1,%eax
  400c34:	e9 77 02 00 00       	jmpq   400eb0 <main+0x2a1>
  400c39:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  400c3d:	48 83 c0 08          	add    $0x8,%rax
  400c41:	48 8b 00             	mov    (%rax),%rax
  400c44:	48 89 c7             	mov    %rax,%rdi
  400c47:	e8 84 fa ff ff       	callq  4006d0 <atoi@plt>
  400c4c:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  400c4f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  400c53:	48 83 c0 10          	add    $0x10,%rax
  400c57:	48 8b 00             	mov    (%rax),%rax
  400c5a:	48 89 c7             	mov    %rax,%rdi
  400c5d:	e8 6e fa ff ff       	callq  4006d0 <atoi@plt>
  400c62:	89 45 e8             	mov    %eax,-0x18(%rbp)
  400c65:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  400c69:	48 83 c0 18          	add    $0x18,%rax
  400c6d:	48 8b 00             	mov    (%rax),%rax
  400c70:	48 89 c7             	mov    %rax,%rdi
  400c73:	e8 58 fa ff ff       	callq  4006d0 <atoi@plt>
  400c78:	89 45 ec             	mov    %eax,-0x14(%rbp)
  400c7b:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
  400c7f:	78 06                	js     400c87 <main+0x78>
  400c81:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
  400c85:	79 29                	jns    400cb0 <main+0xa1>
  400c87:	be 50 10 40 00       	mov    $0x401050,%esi
  400c8c:	48 8b 05 cd 13 20 00 	mov    0x2013cd(%rip),%rax        # 602060 <__bss_start>
  400c93:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  400c96:	8b 55 e8             	mov    -0x18(%rbp),%edx
  400c99:	48 89 c7             	mov    %rax,%rdi
  400c9c:	b8 00 00 00 00       	mov    $0x0,%eax
  400ca1:	e8 0a fa ff ff       	callq  4006b0 <fprintf@plt>
  400ca6:	b8 01 00 00 00       	mov    $0x1,%eax
  400cab:	e9 00 02 00 00       	jmpq   400eb0 <main+0x2a1>
  400cb0:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400cb3:	c1 e0 0a             	shl    $0xa,%eax
  400cb6:	48 98                	cltq   
  400cb8:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  400cbc:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  400cc0:	48 89 c7             	mov    %rax,%rdi
  400cc3:	e8 f8 f9 ff ff       	callq  4006c0 <malloc@plt>
  400cc8:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  400ccc:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400ccf:	48 98                	cltq   
  400cd1:	48 c1 e0 03          	shl    $0x3,%rax
  400cd5:	48 89 c7             	mov    %rax,%rdi
  400cd8:	e8 e3 f9 ff ff       	callq  4006c0 <malloc@plt>
  400cdd:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  400ce1:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400ce4:	48 98                	cltq   
  400ce6:	48 c1 e0 03          	shl    $0x3,%rax
  400cea:	48 89 c7             	mov    %rax,%rdi
  400ced:	e8 ce f9 ff ff       	callq  4006c0 <malloc@plt>
  400cf2:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  400cf6:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  400cfb:	74 0e                	je     400d0b <main+0xfc>
  400cfd:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
  400d02:	74 07                	je     400d0b <main+0xfc>
  400d04:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
  400d09:	75 32                	jne    400d3d <main+0x12e>
  400d0b:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  400d0f:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  400d13:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  400d17:	be 80 10 40 00       	mov    $0x401080,%esi
  400d1c:	48 8b 05 3d 13 20 00 	mov    0x20133d(%rip),%rax        # 602060 <__bss_start>
  400d23:	49 89 f8             	mov    %rdi,%r8
  400d26:	48 89 c7             	mov    %rax,%rdi
  400d29:	b8 00 00 00 00       	mov    $0x0,%eax
  400d2e:	e8 7d f9 ff ff       	callq  4006b0 <fprintf@plt>
  400d33:	b8 01 00 00 00       	mov    $0x1,%eax
  400d38:	e9 73 01 00 00       	jmpq   400eb0 <main+0x2a1>
  400d3d:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400d40:	89 c7                	mov    %eax,%edi
  400d42:	e8 8c fd ff ff       	callq  400ad3 <pin_to_cpu>
  400d47:	85 c0                	test   %eax,%eax
  400d49:	74 29                	je     400d74 <main+0x165>
  400d4b:	b9 b0 10 40 00       	mov    $0x4010b0,%ecx
  400d50:	48 8b 05 09 13 20 00 	mov    0x201309(%rip),%rax        # 602060 <__bss_start>
  400d57:	8b 55 ec             	mov    -0x14(%rbp),%edx
  400d5a:	48 89 ce             	mov    %rcx,%rsi
  400d5d:	48 89 c7             	mov    %rax,%rdi
  400d60:	b8 00 00 00 00       	mov    $0x0,%eax
  400d65:	e8 46 f9 ff ff       	callq  4006b0 <fprintf@plt>
  400d6a:	b8 02 00 00 00       	mov    $0x2,%eax
  400d6f:	e9 3c 01 00 00       	jmpq   400eb0 <main+0x2a1>
  400d74:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  400d78:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400d7c:	48 89 d6             	mov    %rdx,%rsi
  400d7f:	48 89 c7             	mov    %rax,%rdi
  400d82:	e8 df fa ff ff       	callq  400866 <init_array>
  400d87:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
  400d8e:	eb 67                	jmp    400df7 <main+0x1e8>
  400d90:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  400d94:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400d98:	48 89 d6             	mov    %rdx,%rsi
  400d9b:	48 89 c7             	mov    %rax,%rdi
  400d9e:	e8 88 fa ff ff       	callq  40082b <flush_array>
  400da3:	b8 00 00 00 00       	mov    $0x0,%eax
  400da8:	e8 54 fa ff ff       	callq  400801 <hw_barrier>
  400dad:	e8 22 fa ff ff       	callq  4007d4 <rdtsc>
  400db2:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  400db6:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  400dba:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400dbe:	48 89 d6             	mov    %rdx,%rsi
  400dc1:	48 89 c7             	mov    %rax,%rdi
  400dc4:	e8 cf fa ff ff       	callq  400898 <read_array>
  400dc9:	e8 06 fa ff ff       	callq  4007d4 <rdtsc>
  400dce:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  400dd2:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400dd5:	48 98                	cltq   
  400dd7:	48 c1 e0 03          	shl    $0x3,%rax
  400ddb:	48 03 45 c0          	add    -0x40(%rbp),%rax
  400ddf:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  400de3:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  400de7:	48 89 cb             	mov    %rcx,%rbx
  400dea:	48 29 d3             	sub    %rdx,%rbx
  400ded:	48 89 da             	mov    %rbx,%rdx
  400df0:	48 89 10             	mov    %rdx,(%rax)
  400df3:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
  400df7:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400dfa:	3b 45 e8             	cmp    -0x18(%rbp),%eax
  400dfd:	7c 91                	jl     400d90 <main+0x181>
  400dff:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
  400e06:	eb 67                	jmp    400e6f <main+0x260>
  400e08:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  400e0c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400e10:	48 89 d6             	mov    %rdx,%rsi
  400e13:	48 89 c7             	mov    %rax,%rdi
  400e16:	e8 10 fa ff ff       	callq  40082b <flush_array>
  400e1b:	b8 00 00 00 00       	mov    $0x0,%eax
  400e20:	e8 dc f9 ff ff       	callq  400801 <hw_barrier>
  400e25:	e8 aa f9 ff ff       	callq  4007d4 <rdtsc>
  400e2a:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  400e2e:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  400e32:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400e36:	48 89 d6             	mov    %rdx,%rsi
  400e39:	48 89 c7             	mov    %rax,%rdi
  400e3c:	e8 f9 fa ff ff       	callq  40093a <write_array>
  400e41:	e8 8e f9 ff ff       	callq  4007d4 <rdtsc>
  400e46:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  400e4a:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400e4d:	48 98                	cltq   
  400e4f:	48 c1 e0 03          	shl    $0x3,%rax
  400e53:	48 03 45 c8          	add    -0x38(%rbp),%rax
  400e57:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  400e5b:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  400e5f:	48 89 cb             	mov    %rcx,%rbx
  400e62:	48 29 d3             	sub    %rdx,%rbx
  400e65:	48 89 da             	mov    %rbx,%rdx
  400e68:	48 89 10             	mov    %rdx,(%rax)
  400e6b:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
  400e6f:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400e72:	3b 45 e8             	cmp    -0x18(%rbp),%eax
  400e75:	7c 91                	jl     400e08 <main+0x1f9>
  400e77:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400e7a:	48 63 c8             	movslq %eax,%rcx
  400e7d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400e81:	ba 00 00 00 00       	mov    $0x0,%edx
  400e86:	48 89 ce             	mov    %rcx,%rsi
  400e89:	48 89 c7             	mov    %rax,%rdi
  400e8c:	e8 5a fb ff ff       	callq  4009eb <print_latency>
  400e91:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400e94:	48 63 c8             	movslq %eax,%rcx
  400e97:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400e9b:	ba 01 00 00 00       	mov    $0x1,%edx
  400ea0:	48 89 ce             	mov    %rcx,%rsi
  400ea3:	48 89 c7             	mov    %rax,%rdi
  400ea6:	e8 40 fb ff ff       	callq  4009eb <print_latency>
  400eab:	b8 00 00 00 00       	mov    $0x0,%eax
  400eb0:	48 83 c4 58          	add    $0x58,%rsp
  400eb4:	5b                   	pop    %rbx
  400eb5:	5d                   	pop    %rbp
  400eb6:	c3                   	retq   
  400eb7:	90                   	nop
  400eb8:	90                   	nop
  400eb9:	90                   	nop
  400eba:	90                   	nop
  400ebb:	90                   	nop
  400ebc:	90                   	nop
  400ebd:	90                   	nop
  400ebe:	90                   	nop
  400ebf:	90                   	nop

0000000000400ec0 <__libc_csu_init>:
  400ec0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400ec5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  400eca:	48 8d 2d 53 0f 20 00 	lea    0x200f53(%rip),%rbp        # 601e24 <__init_array_end>
  400ed1:	4c 8d 25 4c 0f 20 00 	lea    0x200f4c(%rip),%r12        # 601e24 <__init_array_end>
  400ed8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  400edd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400ee2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400ee7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  400eec:	48 83 ec 38          	sub    $0x38,%rsp
  400ef0:	4c 29 e5             	sub    %r12,%rbp
  400ef3:	41 89 fd             	mov    %edi,%r13d
  400ef6:	49 89 f6             	mov    %rsi,%r14
  400ef9:	48 c1 fd 03          	sar    $0x3,%rbp
  400efd:	49 89 d7             	mov    %rdx,%r15
  400f00:	e8 1b f7 ff ff       	callq  400620 <_init>
  400f05:	48 85 ed             	test   %rbp,%rbp
  400f08:	74 1c                	je     400f26 <__libc_csu_init+0x66>
  400f0a:	31 db                	xor    %ebx,%ebx
  400f0c:	0f 1f 40 00          	nopl   0x0(%rax)
  400f10:	4c 89 fa             	mov    %r15,%rdx
  400f13:	4c 89 f6             	mov    %r14,%rsi
  400f16:	44 89 ef             	mov    %r13d,%edi
  400f19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400f1d:	48 83 c3 01          	add    $0x1,%rbx
  400f21:	48 39 eb             	cmp    %rbp,%rbx
  400f24:	75 ea                	jne    400f10 <__libc_csu_init+0x50>
  400f26:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400f2b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400f30:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400f35:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  400f3a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  400f3f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400f44:	48 83 c4 38          	add    $0x38,%rsp
  400f48:	c3                   	retq   
  400f49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f50 <__libc_csu_fini>:
  400f50:	f3 c3                	repz retq 
  400f52:	90                   	nop
  400f53:	90                   	nop
  400f54:	90                   	nop
  400f55:	90                   	nop
  400f56:	90                   	nop
  400f57:	90                   	nop
  400f58:	90                   	nop
  400f59:	90                   	nop
  400f5a:	90                   	nop
  400f5b:	90                   	nop
  400f5c:	90                   	nop
  400f5d:	90                   	nop
  400f5e:	90                   	nop
  400f5f:	90                   	nop

0000000000400f60 <__do_global_ctors_aux>:
  400f60:	55                   	push   %rbp
  400f61:	48 89 e5             	mov    %rsp,%rbp
  400f64:	53                   	push   %rbx
  400f65:	48 83 ec 08          	sub    $0x8,%rsp
  400f69:	48 8b 05 b8 0e 20 00 	mov    0x200eb8(%rip),%rax        # 601e28 <__CTOR_LIST__>
  400f70:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400f74:	74 19                	je     400f8f <__do_global_ctors_aux+0x2f>
  400f76:	bb 28 1e 60 00       	mov    $0x601e28,%ebx
  400f7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400f80:	48 83 eb 08          	sub    $0x8,%rbx
  400f84:	ff d0                	callq  *%rax
  400f86:	48 8b 03             	mov    (%rbx),%rax
  400f89:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400f8d:	75 f1                	jne    400f80 <__do_global_ctors_aux+0x20>
  400f8f:	48 83 c4 08          	add    $0x8,%rsp
  400f93:	5b                   	pop    %rbx
  400f94:	5d                   	pop    %rbp
  400f95:	c3                   	retq   
  400f96:	90                   	nop
  400f97:	90                   	nop

Disassembly of section .fini:

0000000000400f98 <_fini>:
  400f98:	48 83 ec 08          	sub    $0x8,%rsp
  400f9c:	e8 9f f7 ff ff       	callq  400740 <__do_global_dtors_aux>
  400fa1:	48 83 c4 08          	add    $0x8,%rsp
  400fa5:	c3                   	retq   
