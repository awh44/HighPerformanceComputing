   1              		.file	"test4h.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu test4h.c
   6              	# -mtune=opteron-sse3 -msse3 -march=x86-64 -mfpmath=sse -g -fverbose-asm
   7              	# -ftree-vectorize -ftree-vectorizer-verbose=7 -ffast-math
   8              	# -fstack-protector -Wformat -Wformat-security
   9              	# options enabled:  -faggressive-loop-optimizations -fassociative-math
  10              	# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg -fcommon
  11              	# -fcx-limited-range -fdelete-null-pointer-checks -fdwarf2-cfi-asm
  12              	# -fearly-inlining -feliminate-unused-debug-types -ffinite-math-only
  13              	# -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique -fident
  14              	# -finline-atomics -fira-hoist-pressure -fira-share-save-slots
  15              	# -fira-share-spill-slots -fivopts -fkeep-static-consts
  16              	# -fleading-underscore -fmerge-debug-strings -fmove-loop-invariants
  17              	# -fpeephole -fprefetch-loop-arrays -freciprocal-math -freg-struct-return
  18              	# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
  19              	# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
  20              	# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
  21              	# -fsched-stalled-insns-dep -fshow-column -fsplit-ivs-in-unroller
  22              	# -fstack-protector -fstrict-volatile-bitfields -fsync-libcalls
  23              	# -ftree-coalesce-vars -ftree-cselim -ftree-forwprop -ftree-loop-if-convert
  24              	# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
  25              	# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
  26              	# -ftree-scev-cprop -ftree-slp-vectorize -ftree-vect-loop-version
  27              	# -ftree-vectorize -funit-at-a-time -funsafe-math-optimizations
  28              	# -funwind-tables -fverbose-asm -fzero-initialized-in-bss
  29              	# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
  30              	# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc
  31              	# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
  32              	# -msse3 -mtls-direct-seg-refs
  33              	
  34              		.text
  35              	.Ltext0:
  36              		.comm	a,4096,16
  37              		.comm	b,4096,16
  38              		.globl	main
  40              	main:
  41              	.LFB0:
  42              		.file 1 "test4h.c"
   1:test4h.c      **** #define SIZE 1024
   2:test4h.c      **** 
   3:test4h.c      **** float __attribute__((aligned (16))) a[SIZE], b[SIZE];
   4:test4h.c      **** int dx();
   5:test4h.c      **** 
   6:test4h.c      **** int main(int argc, char *argv[])
   7:test4h.c      ****  {
  43              		.loc 1 7 0
  44              		.cfi_startproc
  45 0000 55       		pushq	%rbp	#
  46              		.cfi_def_cfa_offset 16
  47              		.cfi_offset 6, -16
  48 0001 4889E5   		movq	%rsp, %rbp	#,
  49              		.cfi_def_cfa_register 6
  50 0004 4883EC20 		subq	$32, %rsp	#,
  51 0008 897DEC   		movl	%edi, -20(%rbp)	# argc, argc
  52 000b 488975E0 		movq	%rsi, -32(%rbp)	# argv, argv
   8:test4h.c      ****   int i, n;
   9:test4h.c      **** 
  10:test4h.c      ****   for (i = 0; i < SIZE; i++)
  53              		.loc 1 10 0
  54 000f C745F800 		movl	$0, -8(%rbp)	#, i
  54      000000
  55 0016 EB29     		jmp	.L2	#
  56              	.L3:
  11:test4h.c      ****    {
  12:test4h.c      ****     a[i] = (float) i;
  57              		.loc 1 12 0 discriminator 2
  58 0018 F30F2A45 		cvtsi2ss	-8(%rbp), %xmm0	# i, D.1757
  58      F8
  59 001d 8B45F8   		movl	-8(%rbp), %eax	# i, tmp68
  60 0020 4898     		cltq
  61 0022 F30F1104 		movss	%xmm0, a(,%rax,4)	# D.1757, a
  61      85000000 
  61      00
  13:test4h.c      ****     b[i] = 1.0;
  62              		.loc 1 13 0 discriminator 2
  63 002b 8B45F8   		movl	-8(%rbp), %eax	# i, tmp70
  64 002e 4863D0   		movslq	%eax, %rdx	# tmp70, tmp69
  65 0031 8B050000 		movl	.LC0(%rip), %eax	#, tmp71
  65      0000
  66 0037 89049500 		movl	%eax, b(,%rdx,4)	# tmp71, b
  66      000000
  10:test4h.c      ****    {
  67              		.loc 1 10 0 discriminator 2
  68 003e FF45F8   		incl	-8(%rbp)	# i
  69              	.L2:
  10:test4h.c      ****    {
  70              		.loc 1 10 0 is_stmt 0 discriminator 1
  71 0041 817DF8FF 		cmpl	$1023, -8(%rbp)	#, i
  71      030000
  72 0048 7ECE     		jle	.L3	#,
  14:test4h.c      ****    }
  15:test4h.c      **** 
  16:test4h.c      ****   for (i = 0; i < SIZE; i++)
  73              		.loc 1 16 0 is_stmt 1
  74 004a C745F800 		movl	$0, -8(%rbp)	#, i
  74      000000
  75 0051 EB31     		jmp	.L4	#
  76              	.L5:
  17:test4h.c      ****    {
  18:test4h.c      ****     a[i] = a[i] + b[i];
  77              		.loc 1 18 0 discriminator 2
  78 0053 8B45F8   		movl	-8(%rbp), %eax	# i, tmp73
  79 0056 4898     		cltq
  80 0058 F30F100C 		movss	a(,%rax,4), %xmm1	# a, D.1757
  80      85000000 
  80      00
  81 0061 8B45F8   		movl	-8(%rbp), %eax	# i, tmp75
  82 0064 4898     		cltq
  83 0066 F30F1004 		movss	b(,%rax,4), %xmm0	# b, D.1757
  83      85000000 
  83      00
  84 006f F30F58C1 		addss	%xmm1, %xmm0	# D.1757, D.1757
  85 0073 8B45F8   		movl	-8(%rbp), %eax	# i, tmp77
  86 0076 4898     		cltq
  87 0078 F30F1104 		movss	%xmm0, a(,%rax,4)	# D.1757, a
  87      85000000 
  87      00
  16:test4h.c      ****    {
  88              		.loc 1 16 0 discriminator 2
  89 0081 FF45F8   		incl	-8(%rbp)	# i
  90              	.L4:
  16:test4h.c      ****    {
  91              		.loc 1 16 0 is_stmt 0 discriminator 1
  92 0084 817DF8FF 		cmpl	$1023, -8(%rbp)	#, i
  92      030000
  93 008b 7EC6     		jle	.L5	#,
  19:test4h.c      ****    }
  20:test4h.c      **** 
  21:test4h.c      ****   n = dx(a[0]);
  94              		.loc 1 21 0 is_stmt 1
  95 008d F30F1005 		movss	a(%rip), %xmm0	# a, D.1757
  95      00000000 
  96 0095 F30F5AC0 		cvtss2sd	%xmm0, %xmm0	# D.1757, D.1758
  97 0099 B8010000 		movl	$1, %eax	#,
  97      00
  98 009e E8000000 		call	dx	#
  98      00
  99 00a3 8945FC   		movl	%eax, -4(%rbp)	# tmp78, n
  22:test4h.c      ****   return(n);
 100              		.loc 1 22 0
 101 00a6 8B45FC   		movl	-4(%rbp), %eax	# n, D.1759
  23:test4h.c      ****  }
 102              		.loc 1 23 0
 103 00a9 C9       		leave
 104              		.cfi_def_cfa 7, 8
 105 00aa C3       		ret
 106              		.cfi_endproc
 107              	.LFE0:
 109              		.section	.rodata
 110              		.align 4
 111              	.LC0:
 112 0000 0000803F 		.long	1065353216
 113              		.text
 114              	.Letext0:
