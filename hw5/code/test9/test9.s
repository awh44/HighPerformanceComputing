   1              		.file	"test9.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu test9.c -mtune=opteron-sse3
   6              	# -msse3 -march=x86-64 -mfpmath=sse -g -O2 -fverbose-asm -ftree-vectorize
   7              	# -ftree-vectorizer-verbose=7 -fstack-protector -Wformat -Wformat-security
   8              	# options enabled:  -faggressive-loop-optimizations
   9              	# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
  10              	# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
  11              	# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
  12              	# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
  13              	# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
  14              	# -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
  15              	# -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
  16              	# -fif-conversion -fif-conversion2 -findirect-inlining -finline
  17              	# -finline-atomics -finline-functions-called-once -finline-small-functions
  18              	# -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
  19              	# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
  20              	# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
  21              	# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
  22              	# -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
  23              	# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
  24              	# -fprefetch-loop-arrays -free -freg-struct-return -fregmove
  25              	# -freorder-blocks -freorder-functions -frerun-cse-after-loop
  26              	# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
  27              	# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
  28              	# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
  29              	# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
  30              	# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
  31              	# -fstack-protector -fstrict-aliasing -fstrict-overflow
  32              	# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
  33              	# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
  34              	# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
  35              	# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
  36              	# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
  37              	# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
  38              	# -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
  39              	# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
  40              	# -ftree-slsr -ftree-sra -ftree-switch-conversion -ftree-tail-merge
  41              	# -ftree-ter -ftree-vect-loop-version -ftree-vectorize -ftree-vrp
  42              	# -funit-at-a-time -funwind-tables -fvar-tracking
  43              	# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss
  44              	# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
  45              	# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc
  46              	# -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse
  47              	# -msse2 -msse3 -mtls-direct-seg-refs
  48              	
  49              		.text
  50              	.Ltext0:
  51              		.section	.text.startup,"ax",@progbits
  52              		.p2align 4,,15
  53              		.globl	main
  55              	main:
  56              	.LFB0:
  57              		.file 1 "test9.c"
   1:test9.c       **** #define SIZE 1024
   2:test9.c       **** 
   3:test9.c       **** float __attribute__((aligned (16))) a[SIZE], b[SIZE];
   4:test9.c       **** int dx();
   5:test9.c       **** 
   6:test9.c       **** int main(int argc, char *argv[])
   7:test9.c       ****  {
  58              		.loc 1 7 0
  59              		.cfi_startproc
  60              	.LVL0:
  61 0000 660F6F1D 		movdqa	.LC1(%rip), %xmm3	#, vect_cst_.21
  61      00000000 
  62              		.loc 1 7 0
  63 0008 31C0     		xorl	%eax, %eax	# ivtmp.47
  64 000a 660F6F05 		movdqa	.LC0(%rip), %xmm0	#, vect_vec_iv_.22
  64      00000000 
  65 0012 0F281500 		movaps	.LC2(%rip), %xmm2	#, tmp96
  65      000000
  66 0019 EB09     		jmp	.L3	#
  67              	.LVL1:
  68 001b 0F1F4400 		.p2align 4,,7
  68      00
  69              		.p2align 3
  70              	.L7:
  71 0020 660F6FC1 		movdqa	%xmm1, %xmm0	# vect_vec_iv_.22, vect_vec_iv_.22
  72              	.L3:
  73 0024 660F6FC8 		movdqa	%xmm0, %xmm1	# vect_vec_iv_.22, vect_vec_iv_.22
  74 0028 4883C010 		addq	$16, %rax	#, ivtmp.47
   8:test9.c       ****   int i, n;
   9:test9.c       **** 
  10:test9.c       ****   for (i = 0; i < SIZE; i++)
  11:test9.c       ****    {
  12:test9.c       ****     a[i] = (float) i;
  75              		.loc 1 12 0 discriminator 2
  76 002c 0F5BC0   		cvtdq2ps	%xmm0, %xmm0	# vect_vec_iv_.22, tmp87
  13:test9.c       ****     b[i] = 100.0;
  77              		.loc 1 13 0 discriminator 2
  78 002f 0F299000 		movaps	%xmm2, b-16(%rax)	# tmp96, MEM[symbol: b, index: ivtmp.47_33, offset: 0B]
  78      000000
  79 0036 660FFECB 		paddd	%xmm3, %xmm1	# vect_cst_.21, vect_vec_iv_.22
  12:test9.c       ****     b[i] = 100.0;
  80              		.loc 1 12 0 discriminator 2
  81 003a 0F298000 		movaps	%xmm0, a-16(%rax)	# tmp87, MEM[symbol: a, index: ivtmp.47_33, offset: 0B]
  81      000000
  82 0041 483D0010 		cmpq	$4096, %rax	#, ivtmp.47
  82      0000
  83 0047 75D7     		jne	.L7	#,
  84              		.loc 1 13 0
  85 0049 31C0     		xorl	%eax, %eax	# ivtmp.38
  86 004b 0F1F4400 		.p2align 4,,7
  86      00
  87              		.p2align 3
  88              	.L5:
  14:test9.c       ****    }
  15:test9.c       **** 
  16:test9.c       ****   for (i = 0; i < SIZE; i++)
  17:test9.c       ****    {
  18:test9.c       ****     a[i] = ((b[i] > a[i]) ? b[i] : a[i]);
  89              		.loc 1 18 0
  90 0050 0F288000 		movaps	b(%rax), %xmm0	# MEM[symbol: b, index: ivtmp.38_22, offset: 0B], vect_iftmp.14
  90      000000
  91 0057 4883C010 		addq	$16, %rax	#, ivtmp.38
  92 005b 0F5F8000 		maxps	a-16(%rax), %xmm0	# MEM[symbol: a, index: ivtmp.38_22, offset: 0B], vect_iftmp.14
  92      000000
  93 0062 0F298000 		movaps	%xmm0, a-16(%rax)	# vect_iftmp.14, MEM[symbol: a, index: ivtmp.38_22, offset: 0B]
  93      000000
  94 0069 483D0010 		cmpq	$4096, %rax	#, ivtmp.38
  94      0000
  95 006f 75DF     		jne	.L5	#,
  19:test9.c       ****    }
  20:test9.c       **** 
  21:test9.c       ****   n = dx(a[0]);
  96              		.loc 1 21 0
  97 0071 F30F5A05 		cvtss2sd	a(%rip), %xmm0	# a, D.1812
  97      00000000 
  98 0079 B8010000 		movl	$1, %eax	#,
  98      00
  99 007e E9000000 		jmp	dx	#
  99      00
 100              	.LVL2:
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
 121 0020 0000C842 		.long	1120403456
 122 0024 0000C842 		.long	1120403456
 123 0028 0000C842 		.long	1120403456
 124 002c 0000C842 		.long	1120403456
 125              		.text
 126              	.Letext0:
