   1              		.file	"test9.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu test9.c -mtune=opteron-sse3
   6              	# -msse3 -march=x86-64 -mfpmath=sse -g -O2 -fverbose-asm -ftree-vectorize
   7              	# -ftree-vectorizer-verbose=7 -ffast-math -fstack-protector -Wformat
   8              	# -Wformat-security
   9              	# options enabled:  -faggressive-loop-optimizations -fassociative-math
  10              	# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
  11              	# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
  12              	# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fcx-limited-range
  13              	# -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
  14              	# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
  15              	# -ffinite-math-only -fforward-propagate -ffunction-cse -fgcse -fgcse-lm
  16              	# -fgnu-runtime -fgnu-unique -fguess-branch-probability
  17              	# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
  18              	# -findirect-inlining -finline -finline-atomics
  19              	# -finline-functions-called-once -finline-small-functions -fipa-cp
  20              	# -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
  21              	# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
  22              	# -fivopts -fkeep-static-consts -fleading-underscore -fmerge-constants
  23              	# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
  24              	# -foptimize-register-move -foptimize-sibling-calls -foptimize-strlen
  25              	# -fpartial-inlining -fpeephole -fpeephole2 -fprefetch-loop-arrays
  26              	# -freciprocal-math -free -freg-struct-return -fregmove -freorder-blocks
  27              	# -freorder-functions -frerun-cse-after-loop
  28              	# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
  29              	# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
  30              	# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
  31              	# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
  32              	# -fsplit-ivs-in-unroller -fsplit-wide-types -fstack-protector
  33              	# -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
  34              	# -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftree-bit-ccp
  35              	# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
  36              	# -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
  37              	# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
  38              	# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
  39              	# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
  40              	# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
  41              	# -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
  42              	# -ftree-tail-merge -ftree-ter -ftree-vect-loop-version -ftree-vectorize
  43              	# -ftree-vrp -funit-at-a-time -funsafe-math-optimizations -funwind-tables
  44              	# -fvar-tracking -fvar-tracking-assignments -fverbose-asm
  45              	# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
  46              	# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
  47              	# -mfp-ret-in-387 -mfxsr -mglibc -mlong-double-80 -mmmx -mno-sse4
  48              	# -mpush-args -mred-zone -msse -msse2 -msse3 -mtls-direct-seg-refs
  49              	
  50              		.text
  51              	.Ltext0:
  52              		.section	.text.startup,"ax",@progbits
  53              		.p2align 4,,15
  54              		.globl	main
  56              	main:
  57              	.LFB0:
  58              		.file 1 "test9.c"
   1:test9.c       **** #define SIZE 1024
   2:test9.c       **** 
   3:test9.c       **** float __attribute__((aligned (16))) a[SIZE], b[SIZE];
   4:test9.c       **** int dx();
   5:test9.c       **** 
   6:test9.c       **** int main(int argc, char *argv[])
   7:test9.c       ****  {
  59              		.loc 1 7 0
  60              		.cfi_startproc
  61              	.LVL0:
  62 0000 660F6F1D 		movdqa	.LC1(%rip), %xmm3	#, vect_cst_.20
  62      00000000 
  63              		.loc 1 7 0
  64 0008 31C0     		xorl	%eax, %eax	# ivtmp.46
  65 000a 660F6F05 		movdqa	.LC0(%rip), %xmm0	#, vect_vec_iv_.21
  65      00000000 
  66 0012 0F281500 		movaps	.LC2(%rip), %xmm2	#, tmp98
  66      000000
  67 0019 EB09     		jmp	.L3	#
  68              	.LVL1:
  69 001b 0F1F4400 		.p2align 4,,7
  69      00
  70              		.p2align 3
  71              	.L7:
  72 0020 660F6FC1 		movdqa	%xmm1, %xmm0	# vect_vec_iv_.21, vect_vec_iv_.21
  73              	.L3:
  74 0024 660F6FC8 		movdqa	%xmm0, %xmm1	# vect_vec_iv_.21, vect_vec_iv_.21
  75 0028 4883C010 		addq	$16, %rax	#, ivtmp.46
   8:test9.c       ****   int i, n;
   9:test9.c       **** 
  10:test9.c       ****   for (i = 0; i < SIZE; i++)
  11:test9.c       ****    {
  12:test9.c       ****     a[i] = (float) i;
  76              		.loc 1 12 0 discriminator 2
  77 002c 0F5BC0   		cvtdq2ps	%xmm0, %xmm0	# vect_vec_iv_.21, tmp87
  13:test9.c       ****     b[i] = 100.0;
  78              		.loc 1 13 0 discriminator 2
  79 002f 0F299000 		movaps	%xmm2, b-16(%rax)	# tmp98, MEM[symbol: b, index: ivtmp.46_33, offset: 0B]
  79      000000
  80 0036 660FFECB 		paddd	%xmm3, %xmm1	# vect_cst_.20, vect_vec_iv_.21
  12:test9.c       ****     b[i] = 100.0;
  81              		.loc 1 12 0 discriminator 2
  82 003a 0F298000 		movaps	%xmm0, a-16(%rax)	# tmp87, MEM[symbol: a, index: ivtmp.46_33, offset: 0B]
  82      000000
  83 0041 483D0010 		cmpq	$4096, %rax	#, ivtmp.46
  83      0000
  84 0047 75D7     		jne	.L7	#,
  85              		.loc 1 13 0
  86 0049 31C0     		xorl	%eax, %eax	# ivtmp.37
  87 004b 0F1F4400 		.p2align 4,,7
  87      00
  88              		.p2align 3
  89              	.L5:
  14:test9.c       ****    }
  15:test9.c       **** 
  16:test9.c       ****   for (i = 0; i < SIZE; i++)
  17:test9.c       ****    {
  18:test9.c       ****     a[i] = ((b[i] > a[i]) ? b[i] : a[i]);
  90              		.loc 1 18 0 discriminator 2
  91 0050 0F288000 		movaps	b(%rax), %xmm0	# MEM[symbol: b, index: ivtmp.37_23, offset: 0B], vect_var_.13
  91      000000
  92 0057 4883C010 		addq	$16, %rax	#, ivtmp.37
  93 005b 0F5F8000 		maxps	a-16(%rax), %xmm0	# MEM[symbol: a, index: ivtmp.37_23, offset: 0B], vect_var_.13
  93      000000
  94 0062 0F298000 		movaps	%xmm0, a-16(%rax)	# vect_var_.13, MEM[symbol: a, index: ivtmp.37_23, offset: 0B]
  94      000000
  95 0069 483D0010 		cmpq	$4096, %rax	#, ivtmp.37
  95      0000
  96 006f 75DF     		jne	.L5	#,
  19:test9.c       ****    }
  20:test9.c       **** 
  21:test9.c       ****   n = dx(a[0]);
  97              		.loc 1 21 0
  98 0071 F30F5A05 		cvtss2sd	a(%rip), %xmm0	# a, D.1809
  98      00000000 
  99 0079 B8010000 		movl	$1, %eax	#,
  99      00
 100 007e E9000000 		jmp	dx	#
 100      00
 101              	.LVL2:
 102              		.cfi_endproc
 103              	.LFE0:
 105              		.comm	b,4096,16
 106              		.comm	a,4096,16
 107              		.section	.rodata.cst16,"aM",@progbits,16
 108              		.align 16
 109              	.LC0:
 110 0000 00000000 		.long	0
 111 0004 01000000 		.long	1
 112 0008 02000000 		.long	2
 113 000c 03000000 		.long	3
 114              		.align 16
 115              	.LC1:
 116 0010 04000000 		.long	4
 117 0014 04000000 		.long	4
 118 0018 04000000 		.long	4
 119 001c 04000000 		.long	4
 120              		.align 16
 121              	.LC2:
 122 0020 0000C842 		.long	1120403456
 123 0024 0000C842 		.long	1120403456
 124 0028 0000C842 		.long	1120403456
 125 002c 0000C842 		.long	1120403456
 126              		.text
 127              	.Letext0:
