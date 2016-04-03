   1              		.file	"test4f.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu test4f.c
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
  42              		.file 1 "test4f.c"
   1:test4f.c      **** #define SIZE 1024
   2:test4f.c      ****   
   3:test4f.c      **** int __attribute__((aligned (16))) a[SIZE], b[SIZE];
   4:test4f.c      **** int dx();
   5:test4f.c      **** 
   6:test4f.c      **** int main(int argc, char *argv[])
   7:test4f.c      ****  {
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
   8:test4f.c      ****   int i, n;
   9:test4f.c      **** 
  10:test4f.c      ****   for (i = 0; i < SIZE; i++)
  53              		.loc 1 10 0
  54 000f C745F800 		movl	$0, -8(%rbp)	#, i
  54      000000
  55 0016 EB22     		jmp	.L2	#
  56              	.L3:
  11:test4f.c      ****    {
  12:test4f.c      ****     a[i] = i;
  57              		.loc 1 12 0 discriminator 2
  58 0018 8B45F8   		movl	-8(%rbp), %eax	# i, tmp66
  59 001b 4898     		cltq
  60 001d 8B55F8   		movl	-8(%rbp), %edx	# i, tmp67
  61 0020 89148500 		movl	%edx, a(,%rax,4)	# tmp67, a
  61      000000
  13:test4f.c      ****     b[i] = 1;
  62              		.loc 1 13 0 discriminator 2
  63 0027 8B45F8   		movl	-8(%rbp), %eax	# i, tmp69
  64 002a 4898     		cltq
  65 002c C7048500 		movl	$1, b(,%rax,4)	#, b
  65      00000001 
  65      000000
  10:test4f.c      ****    {
  66              		.loc 1 10 0 discriminator 2
  67 0037 FF45F8   		incl	-8(%rbp)	# i
  68              	.L2:
  10:test4f.c      ****    {
  69              		.loc 1 10 0 is_stmt 0 discriminator 1
  70 003a 817DF8FF 		cmpl	$1023, -8(%rbp)	#, i
  70      030000
  71 0041 7ED5     		jle	.L3	#,
  14:test4f.c      ****    }
  15:test4f.c      ****   
  16:test4f.c      ****   for (i = 0; i < SIZE; i++)
  72              		.loc 1 16 0 is_stmt 1
  73 0043 C745F800 		movl	$0, -8(%rbp)	#, i
  73      000000
  74 004a EB29     		jmp	.L4	#
  75              	.L5:
  17:test4f.c      ****    {
  18:test4f.c      ****     a[i] = a[i] + b[i];
  76              		.loc 1 18 0 discriminator 2
  77 004c 8B45F8   		movl	-8(%rbp), %eax	# i, tmp71
  78 004f 4898     		cltq
  79 0051 8B148500 		movl	a(,%rax,4), %edx	# a, D.1755
  79      000000
  80 0058 8B45F8   		movl	-8(%rbp), %eax	# i, tmp73
  81 005b 4898     		cltq
  82 005d 8B048500 		movl	b(,%rax,4), %eax	# b, D.1755
  82      000000
  83 0064 01C2     		addl	%eax, %edx	# D.1755, D.1755
  84 0066 8B45F8   		movl	-8(%rbp), %eax	# i, tmp75
  85 0069 4898     		cltq
  86 006b 89148500 		movl	%edx, a(,%rax,4)	# D.1755, a
  86      000000
  16:test4f.c      ****    {
  87              		.loc 1 16 0 discriminator 2
  88 0072 FF45F8   		incl	-8(%rbp)	# i
  89              	.L4:
  16:test4f.c      ****    {
  90              		.loc 1 16 0 is_stmt 0 discriminator 1
  91 0075 817DF8FF 		cmpl	$1023, -8(%rbp)	#, i
  91      030000
  92 007c 7ECE     		jle	.L5	#,
  19:test4f.c      ****    }
  20:test4f.c      **** 
  21:test4f.c      ****   n = dx(a[0]);
  93              		.loc 1 21 0 is_stmt 1
  94 007e 8B050000 		movl	a(%rip), %eax	# a, D.1755
  94      0000
  95 0084 89C7     		movl	%eax, %edi	# D.1755,
  96 0086 B8000000 		movl	$0, %eax	#,
  96      00
  97 008b E8000000 		call	dx	#
  97      00
  98 0090 8945FC   		movl	%eax, -4(%rbp)	# tmp76, n
  22:test4f.c      ****   return(n);
  99              		.loc 1 22 0
 100 0093 8B45FC   		movl	-4(%rbp), %eax	# n, D.1755
  23:test4f.c      ****  }
 101              		.loc 1 23 0
 102 0096 C9       		leave
 103              		.cfi_def_cfa 7, 8
 104 0097 C3       		ret
 105              		.cfi_endproc
 106              	.LFE0:
 108              	.Letext0:
