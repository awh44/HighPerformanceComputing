   1              		.file	"test4f.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu test4f.c
   6              	# -mtune=opteron-sse3 -msse3 -march=x86-64 -mfpmath=sse -g -O2
   7              	# -fverbose-asm -ftree-vectorize -ftree-vectorizer-verbose=7
   8              	# -fstack-protector -Wformat -Wformat-security
   9              	# options enabled:  -faggressive-loop-optimizations
  10              	# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
  11              	# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
  12              	# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
  13              	# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
  14              	# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
  15              	# -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
  16              	# -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
  17              	# -fif-conversion -fif-conversion2 -findirect-inlining -finline
  18              	# -finline-atomics -finline-functions-called-once -finline-small-functions
  19              	# -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
  20              	# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
  21              	# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
  22              	# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
  23              	# -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
  24              	# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
  25              	# -fprefetch-loop-arrays -free -freg-struct-return -fregmove
  26              	# -freorder-blocks -freorder-functions -frerun-cse-after-loop
  27              	# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
  28              	# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
  29              	# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
  30              	# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
  31              	# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
  32              	# -fstack-protector -fstrict-aliasing -fstrict-overflow
  33              	# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
  34              	# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
  35              	# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
  36              	# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
  37              	# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
  38              	# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
  39              	# -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
  40              	# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
  41              	# -ftree-slsr -ftree-sra -ftree-switch-conversion -ftree-tail-merge
  42              	# -ftree-ter -ftree-vect-loop-version -ftree-vectorize -ftree-vrp
  43              	# -funit-at-a-time -funwind-tables -fvar-tracking
  44              	# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss
  45              	# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
  46              	# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc
  47              	# -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse
  48              	# -msse2 -msse3 -mtls-direct-seg-refs
  49              	
  50              		.text
  51              	.Ltext0:
  52              		.section	.text.startup,"ax",@progbits
  53              		.p2align 4,,15
  54              		.globl	main
  56              	main:
  57              	.LFB0:
  58              		.file 1 "test4f.c"
   1:test4f.c      **** #define SIZE 1024
   2:test4f.c      ****   
   3:test4f.c      **** int __attribute__((aligned (16))) a[SIZE], b[SIZE];
   4:test4f.c      **** int dx();
   5:test4f.c      **** 
   6:test4f.c      **** int main(int argc, char *argv[])
   7:test4f.c      ****  {
  59              		.loc 1 7 0
  60              		.cfi_startproc
  61              	.LVL0:
  62 0000 660F6F1D 		movdqa	.LC1(%rip), %xmm3	#, vect_cst_.20
  62      00000000 
  63              		.loc 1 7 0
  64 0008 31C0     		xorl	%eax, %eax	# ivtmp.45
  65 000a 660F6F05 		movdqa	.LC0(%rip), %xmm0	#, vect_vec_iv_.21
  65      00000000 
  66 0012 660F6F15 		movdqa	.LC2(%rip), %xmm2	#, tmp94
  66      00000000 
  67 001a EB08     		jmp	.L3	#
  68              	.LVL1:
  69 001c 0F1F4000 		.p2align 4,,7
  70              		.p2align 3
  71              	.L7:
  72 0020 660F6FC1 		movdqa	%xmm1, %xmm0	# vect_vec_iv_.21, vect_vec_iv_.21
  73              	.L3:
   8:test4f.c      ****   int i, n;
   9:test4f.c      **** 
  10:test4f.c      ****   for (i = 0; i < SIZE; i++)
  11:test4f.c      ****    {
  12:test4f.c      ****     a[i] = i;
  74              		.loc 1 12 0 discriminator 2
  75 0024 0F298000 		movaps	%xmm0, a(%rax)	# vect_vec_iv_.21, MEM[symbol: a, index: ivtmp.45_31, offset: 0B]
  75      000000
  76 002b 660F6FC8 		movdqa	%xmm0, %xmm1	# vect_vec_iv_.21, vect_vec_iv_.21
  77 002f 4883C010 		addq	$16, %rax	#, ivtmp.45
  13:test4f.c      ****     b[i] = 1;
  78              		.loc 1 13 0 discriminator 2
  79 0033 0F299000 		movaps	%xmm2, b-16(%rax)	# tmp94, MEM[symbol: b, index: ivtmp.45_31, offset: 0B]
  79      000000
  80 003a 483D0010 		cmpq	$4096, %rax	#, ivtmp.45
  80      0000
  81 0040 660FFECB 		paddd	%xmm3, %xmm1	# vect_cst_.20, vect_vec_iv_.21
  82 0044 75DA     		jne	.L7	#,
  83              		.loc 1 13 0 is_stmt 0
  84 0046 31C0     		xorl	%eax, %eax	# ivtmp.36
  85              		.p2align 4,,7
  86              		.p2align 3
  87              	.L5:
  14:test4f.c      ****    }
  15:test4f.c      ****   
  16:test4f.c      ****   for (i = 0; i < SIZE; i++)
  17:test4f.c      ****    {
  18:test4f.c      ****     a[i] = a[i] + b[i];
  88              		.loc 1 18 0 is_stmt 1 discriminator 2
  89 0048 660F6F80 		movdqa	a(%rax), %xmm0	# MEM[symbol: a, index: ivtmp.36_21, offset: 0B], vect_var_.13
  89      00000000 
  90 0050 4883C010 		addq	$16, %rax	#, ivtmp.36
  91 0054 660FFE80 		paddd	b-16(%rax), %xmm0	# MEM[symbol: b, index: ivtmp.36_21, offset: 0B], vect_var_.13
  91      00000000 
  92 005c 0F298000 		movaps	%xmm0, a-16(%rax)	# vect_var_.13, MEM[symbol: a, index: ivtmp.36_21, offset: 0B]
  92      000000
  93 0063 483D0010 		cmpq	$4096, %rax	#, ivtmp.36
  93      0000
  94 0069 75DD     		jne	.L5	#,
  19:test4f.c      ****    }
  20:test4f.c      **** 
  21:test4f.c      ****   n = dx(a[0]);
  95              		.loc 1 21 0
  96 006b 8B3D0000 		movl	a(%rip), %edi	# a,
  96      0000
  97              	.LVL2:
  98 0071 31C0     		xorl	%eax, %eax	#
  99 0073 E9000000 		jmp	dx	#
  99      00
 100              	.LVL3:
 101              		.cfi_endproc
 102              	.LFE0:
 104              		.comm	b,4096,16
 105              		.comm	a,4096,16
 106              		.section	.rodata.cst16,"aM",@progbits,16
 107              		.align 16
 108              	.LC0:
 109 0000 00000000 		.long	0
 110 0004 01000000 		.long	1
 111 0008 02000000 		.long	2
 112 000c 03000000 		.long	3
 113              		.align 16
 114              	.LC1:
 115 0010 04000000 		.long	4
 116 0014 04000000 		.long	4
 117 0018 04000000 		.long	4
 118 001c 04000000 		.long	4
 119              		.align 16
 120              	.LC2:
 121 0020 01000000 		.long	1
 122 0024 01000000 		.long	1
 123 0028 01000000 		.long	1
 124 002c 01000000 		.long	1
 125              		.text
 126              	.Letext0:
