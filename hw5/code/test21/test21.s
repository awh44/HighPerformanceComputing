   1              		.file	"test21.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu test21.c
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
  58              		.file 1 "test21.c"
   1:test21.c      **** #define SIZE 1024
   2:test21.c      **** 
   3:test21.c      **** float __attribute__((aligned (16))) a[SIZE], b[SIZE];
   4:test21.c      **** int dx();
   5:test21.c      **** 
   6:test21.c      **** int main(int argc, char *argv[])
   7:test21.c      ****  {
  59              		.loc 1 7 0
  60              		.cfi_startproc
  61              	.LVL0:
  62 0000 660F6F1D 		movdqa	.LC2(%rip), %xmm3	#, vect_cst_.5
  62      00000000 
  63              		.loc 1 7 0
  64 0008 31C0     		xorl	%eax, %eax	# ivtmp.32
  65 000a 660F6F05 		movdqa	.LC0(%rip), %xmm0	#, vect_vec_iv_.6
  65      00000000 
  66 0012 0F281500 		movaps	.LC3(%rip), %xmm2	#, tmp107
  66      000000
  67 0019 EB09     		jmp	.L3	#
  68              	.LVL1:
  69 001b 0F1F4400 		.p2align 4,,7
  69      00
  70              		.p2align 3
  71              	.L7:
  72 0020 660F6FC1 		movdqa	%xmm1, %xmm0	# vect_vec_iv_.6, vect_vec_iv_.6
  73              	.L3:
  74 0024 660F6FC8 		movdqa	%xmm0, %xmm1	# vect_vec_iv_.6, vect_vec_iv_.6
  75 0028 4883C010 		addq	$16, %rax	#, ivtmp.32
   8:test21.c      ****   int i, n;
   9:test21.c      ****   float y __attribute__ ((aligned (16)));
  10:test21.c      **** 
  11:test21.c      ****   for (i = 0; i < SIZE; i++)
  12:test21.c      ****    {
  13:test21.c      ****     a[i] = (float) i;
  76              		.loc 1 13 0 discriminator 2
  77 002c 0F5BC0   		cvtdq2ps	%xmm0, %xmm0	# vect_vec_iv_.6, tmp102
  14:test21.c      ****     b[i] = 1.0;
  78              		.loc 1 14 0 discriminator 2
  79 002f 0F299000 		movaps	%xmm2, b-16(%rax)	# tmp107, MEM[symbol: b, index: ivtmp.32_24, offset: 0B]
  79      000000
  80 0036 660FFECB 		paddd	%xmm3, %xmm1	# vect_cst_.5, vect_vec_iv_.6
  13:test21.c      ****     b[i] = 1.0;
  81              		.loc 1 13 0 discriminator 2
  82 003a 0F298000 		movaps	%xmm0, a-16(%rax)	# tmp102, MEM[symbol: a, index: ivtmp.32_24, offset: 0B]
  82      000000
  83 0041 483D0010 		cmpq	$4096, %rax	#, ivtmp.32
  83      0000
  84 0047 75D7     		jne	.L7	#,
  85              		.loc 1 14 0
  86 0049 0F57C0   		xorps	%xmm0, %xmm0	# y
  87 004c B8000000 		movl	$a, %eax	#, ivtmp.25
  87      00
  88              		.p2align 4,,7
  89 0051 0F1F8000 		.p2align 3
  89      000000
  90              	.L5:
  91              	.LVL2:
  15:test21.c      ****    }
  16:test21.c      **** 
  17:test21.c      ****   y = 0.0;
  18:test21.c      ****   for (i = 0; i < SIZE; i++)
  19:test21.c      ****    {
  20:test21.c      ****     y = y + a[i];
  92              		.loc 1 20 0 discriminator 2
  93 0058 F30F5800 		addss	(%rax), %xmm0	# MEM[base: _6, offset: 0B], y
  94              	.LVL3:
  95 005c 4883C004 		addq	$4, %rax	#, ivtmp.25
  18:test21.c      ****    {
  96              		.loc 1 18 0 discriminator 2
  97 0060 483D0000 		cmpq	$a+4096, %rax	#, ivtmp.25
  97      0000
  98 0066 75F0     		jne	.L5	#,
  21:test21.c      ****    }
  22:test21.c      **** 
  23:test21.c      ****   n = dx(y);
  99              		.loc 1 23 0
 100 0068 F30F5AC0 		cvtss2sd	%xmm0, %xmm0	# y, D.1795
 101              	.LVL4:
 102 006c B8010000 		movl	$1, %eax	#,
 102      00
 103 0071 E9000000 		jmp	dx	#
 103      00
 104              	.LVL5:
 105              		.cfi_endproc
 106              	.LFE0:
 108              		.comm	b,4096,16
 109              		.comm	a,4096,16
 110              		.section	.rodata.cst16,"aM",@progbits,16
 111              		.align 16
 112              	.LC0:
 113 0000 00000000 		.long	0
 114 0004 01000000 		.long	1
 115 0008 02000000 		.long	2
 116 000c 03000000 		.long	3
 117              		.align 16
 118              	.LC2:
 119 0010 04000000 		.long	4
 120 0014 04000000 		.long	4
 121 0018 04000000 		.long	4
 122 001c 04000000 		.long	4
 123              		.align 16
 124              	.LC3:
 125 0020 0000803F 		.long	1065353216
 126 0024 0000803F 		.long	1065353216
 127 0028 0000803F 		.long	1065353216
 128 002c 0000803F 		.long	1065353216
 129              		.text
 130              	.Letext0:
