   1              		.file	"test21.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu test21.c
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
  42              		.file 1 "test21.c"
   1:test21.c      **** #define SIZE 1024
   2:test21.c      **** 
   3:test21.c      **** float __attribute__((aligned (16))) a[SIZE], b[SIZE];
   4:test21.c      **** int dx();
   5:test21.c      **** 
   6:test21.c      **** int main(int argc, char *argv[])
   7:test21.c      ****  {
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
   8:test21.c      ****   int i, n;
   9:test21.c      ****   float y __attribute__ ((aligned (16)));
  10:test21.c      **** 
  11:test21.c      ****   for (i = 0; i < SIZE; i++)
  53              		.loc 1 11 0
  54 000f C745F800 		movl	$0, -8(%rbp)	#, i
  54      000000
  55 0016 EB29     		jmp	.L2	#
  56              	.L3:
  12:test21.c      ****    {
  13:test21.c      ****     a[i] = (float) i;
  57              		.loc 1 13 0 discriminator 2
  58 0018 F30F2A45 		cvtsi2ss	-8(%rbp), %xmm0	# i, D.1755
  58      F8
  59 001d 8B45F8   		movl	-8(%rbp), %eax	# i, tmp65
  60 0020 4898     		cltq
  61 0022 F30F1104 		movss	%xmm0, a(,%rax,4)	# D.1755, a
  61      85000000 
  61      00
  14:test21.c      ****     b[i] = 1.0;
  62              		.loc 1 14 0 discriminator 2
  63 002b 8B45F8   		movl	-8(%rbp), %eax	# i, tmp67
  64 002e 4863D0   		movslq	%eax, %rdx	# tmp67, tmp66
  65 0031 8B050000 		movl	.LC0(%rip), %eax	#, tmp68
  65      0000
  66 0037 89049500 		movl	%eax, b(,%rdx,4)	# tmp68, b
  66      000000
  11:test21.c      ****    {
  67              		.loc 1 11 0 discriminator 2
  68 003e FF45F8   		incl	-8(%rbp)	# i
  69              	.L2:
  11:test21.c      ****    {
  70              		.loc 1 11 0 is_stmt 0 discriminator 1
  71 0041 817DF8FF 		cmpl	$1023, -8(%rbp)	#, i
  71      030000
  72 0048 7ECE     		jle	.L3	#,
  15:test21.c      ****    }
  16:test21.c      **** 
  17:test21.c      ****   y = 0.0;
  73              		.loc 1 17 0 is_stmt 1
  74 004a 8B050000 		movl	.LC1(%rip), %eax	#, tmp69
  74      0000
  75 0050 8945F0   		movl	%eax, -16(%rbp)	# tmp69, y
  18:test21.c      ****   for (i = 0; i < SIZE; i++)
  76              		.loc 1 18 0
  77 0053 C745F800 		movl	$0, -8(%rbp)	#, i
  77      000000
  78 005a EB1F     		jmp	.L4	#
  79              	.L5:
  19:test21.c      ****    {
  20:test21.c      ****     y = y + a[i];
  80              		.loc 1 20 0 discriminator 2
  81 005c 8B45F8   		movl	-8(%rbp), %eax	# i, tmp71
  82 005f 4898     		cltq
  83 0061 F30F1004 		movss	a(,%rax,4), %xmm0	# a, D.1755
  83      85000000 
  83      00
  84 006a F30F104D 		movss	-16(%rbp), %xmm1	# y, tmp73
  84      F0
  85 006f F30F58C1 		addss	%xmm1, %xmm0	# tmp73, tmp72
  86 0073 F30F1145 		movss	%xmm0, -16(%rbp)	# tmp72, y
  86      F0
  18:test21.c      ****   for (i = 0; i < SIZE; i++)
  87              		.loc 1 18 0 discriminator 2
  88 0078 FF45F8   		incl	-8(%rbp)	# i
  89              	.L4:
  18:test21.c      ****   for (i = 0; i < SIZE; i++)
  90              		.loc 1 18 0 is_stmt 0 discriminator 1
  91 007b 817DF8FF 		cmpl	$1023, -8(%rbp)	#, i
  91      030000
  92 0082 7ED8     		jle	.L5	#,
  21:test21.c      ****    }
  22:test21.c      **** 
  23:test21.c      ****   n = dx(y);
  93              		.loc 1 23 0 is_stmt 1
  94 0084 F30F5A45 		cvtss2sd	-16(%rbp), %xmm0	# y, D.1756
  94      F0
  95 0089 B8010000 		movl	$1, %eax	#,
  95      00
  96 008e E8000000 		call	dx	#
  96      00
  97 0093 8945FC   		movl	%eax, -4(%rbp)	# tmp74, n
  24:test21.c      ****   return(n);
  98              		.loc 1 24 0
  99 0096 8B45FC   		movl	-4(%rbp), %eax	# n, D.1757
  25:test21.c      ****  }
 100              		.loc 1 25 0
 101 0099 C9       		leave
 102              		.cfi_def_cfa 7, 8
 103 009a C3       		ret
 104              		.cfi_endproc
 105              	.LFE0:
 107              		.section	.rodata
 108              		.align 4
 109              	.LC0:
 110 0000 0000803F 		.long	1065353216
 111              		.align 4
 112              	.LC1:
 113 0004 00000000 		.long	0
 114              		.text
 115              	.Letext0:
