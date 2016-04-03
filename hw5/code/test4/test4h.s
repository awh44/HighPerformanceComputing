   1              		.file	"test4h.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu test4h.c
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
  58              		.file 1 "test4h.c"
   1:test4h.c      **** #define SIZE 1024
   2:test4h.c      **** 
   3:test4h.c      **** float __attribute__((aligned (16))) a[SIZE], b[SIZE];
   4:test4h.c      **** int dx();
   5:test4h.c      **** 
   6:test4h.c      **** int main(int argc, char *argv[])
   7:test4h.c      ****  {
  59              		.loc 1 7 0
  60              		.cfi_startproc
  61              	.LVL0:
                        #####CS540 COMMENT Immediately load the four constants (4, 4, 4, 4) into
                        #####the SSE/MMX register %xmm3
  62 0000 660F6F1D 		movdqa	.LC1(%rip), %xmm3	#, vect_cst_.20
  62      00000000 
  63              		.loc 1 7 0
  64 0008 31C0     		xorl	%eax, %eax	# ivtmp.46

                        #####CS540 COMMENT Move the doublequad words, aligned, from .LC0's memory
                        #####location to %xmm0, the values 0, 1, 2, 3
  65 000a 660F6F05 		movdqa	.LC0(%rip), %xmm0	#, vect_vec_iv_.21
  65      00000000

                        #####CS540 COMMENT Move the aligned packed single precision values at .LC2
                        #####(the floating point values (1, 1, 1, 1)) into %xmm2
  66 0012 0F281500 		movaps	.LC2(%rip), %xmm2	#, tmp98
  66      000000
  67 0019 EB09     		jmp	.L3	#
  68              	.LVL1:
  69 001b 0F1F4400 		.p2align 4,,7
  69      00
  70              		.p2align 3
  71              	.L7:
                        #####CS540 COMMENT Move the indexing values from %xmm1 into %xmm0
  72 0020 660F6FC1 		movdqa	%xmm1, %xmm0	# vect_vec_iv_.21, vect_vec_iv_.21
  73              	.L3:
  74 0024 660F6FC8 		movdqa	%xmm0, %xmm1	# vect_vec_iv_.21, vect_vec_iv_.21
                        #####CS540 COMMENT Skip four elements
  75 0028 4883C010 		addq	$16, %rax	#, ivtmp.46
   8:test4h.c      ****   int i, n;
   9:test4h.c      **** 
  10:test4h.c      ****   for (i = 0; i < SIZE; i++)
  11:test4h.c      ****    {
  12:test4h.c      ****     a[i] = (float) i;
  76              		.loc 1 12 0 discriminator 2
                        #####CS540 COMMENT Convert integers to floating point representation (cast)
  77 002c 0F5BC0   		cvtdq2ps	%xmm0, %xmm0	# vect_vec_iv_.21, tmp87
  13:test4h.c      ****     b[i] = 1.0;
  78              		.loc 1 13 0 discriminator 2

                        #####CS540 COMMENT Store the four values (1, 1, 1, 1,) at the current
                        #####indexing into the b array, as aligned pack single precision values
  79 002f 0F299000 		movaps	%xmm2, b-16(%rax)	# tmp98, MEM[symbol: b, index: ivtmp.46_33, offset: 0B]
  79      000000

                        #####CS540 COMMENT Add the two registers, adding 4 (%xmm3) to values in the
                        #####indexing register %xmm1, because 4 elements have just been processed
  80 0036 660FFECB 		paddd	%xmm3, %xmm1	# vect_cst_.20, vect_vec_iv_.21
  12:test4h.c      ****     b[i] = 1.0;
  81              		.loc 1 12 0 discriminator 2

                        #####CS540 COMMENT after the cast, actually store the floating point values
                        #####in %xmm0 into the current position of the a array
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
  14:test4h.c      ****    }
  15:test4h.c      **** 
  16:test4h.c      ****   for (i = 0; i < SIZE; i++)
  17:test4h.c      ****    {
  18:test4h.c      ****     a[i] = a[i] + b[i];
  90              		.loc 1 18 0 discriminator 2

                        #####CS540 COMMENT Move the aligned packed single-precision values from
                        #####a into the %xmm0 register
  91 0050 0F288000 		movaps	a(%rax), %xmm0	# MEM[symbol: a, index: ivtmp.37_23, offset: 0B], vect_var_.13
  91      000000

                        #####CS540 COMMENT Iterate over 16 bytes, or 4 elements
  92 0057 4883C010 		addq	$16, %rax	#, ivtmp.37

                        #####CS540 COMMENT Add the 4 values stored at the current index into b
                        #####and the values just loaded from a into %xmm0, and store in %xmm0
  93 005b 0F588000 		addps	b-16(%rax), %xmm0	# MEM[symbol: b, index: ivtmp.37_23, offset: 0B], vect_var_.13
  93      000000

                        #####CS540 COMMENT Move the result of the SSE vector addition back to the
                        #####4 current elements of a in memory
  94 0062 0F298000 		movaps	%xmm0, a-16(%rax)	# vect_var_.13, MEM[symbol: a, index: ivtmp.37_23, offset: 0B]
  94      000000
  95 0069 483D0010 		cmpq	$4096, %rax	#, ivtmp.37
  95      0000
  96 006f 75DF     		jne	.L5	#,
  19:test4h.c      ****    }
  20:test4h.c      **** 
  21:test4h.c      ****   n = dx(a[0]);
  97              		.loc 1 21 0

                        #####CS540 COMMENT Convert the first element of a to double and store in %xmm0
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
 122 0020 0000803F 		.long	1065353216
 123 0024 0000803F 		.long	1065353216
 124 0028 0000803F 		.long	1065353216
 125 002c 0000803F 		.long	1065353216
 126              		.text
 127              	.Letext0:
