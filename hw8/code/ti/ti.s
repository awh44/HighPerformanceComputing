   1              		.file	"ti.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu ti.c -mtune=opteron-sse3
   6              	# -msse3 -march=x86-64 -mfpmath=sse -g -fverbose-asm -ftree-vectorize
   7              	# -ftree-vectorizer-verbose=7 -fstack-protector -Wformat -Wformat-security
   8              	# options enabled:  -faggressive-loop-optimizations
   9              	# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg -fcommon
  10              	# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
  11              	# -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fgnu-runtime
  12              	# -fgnu-unique -fident -finline-atomics -fira-hoist-pressure
  13              	# -fira-share-save-slots -fira-share-spill-slots -fivopts
  14              	# -fkeep-static-consts -fleading-underscore -fmath-errno
  15              	# -fmerge-debug-strings -fmove-loop-invariants -fpeephole
  16              	# -fprefetch-loop-arrays -freg-struct-return
  17              	# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
  18              	# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
  19              	# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
  20              	# -fsched-stalled-insns-dep -fshow-column -fsigned-zeros
  21              	# -fsplit-ivs-in-unroller -fstack-protector -fstrict-volatile-bitfields
  22              	# -fsync-libcalls -ftrapping-math -ftree-coalesce-vars -ftree-cselim
  23              	# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
  24              	# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
  25              	# -ftree-reassoc -ftree-scev-cprop -ftree-slp-vectorize
  26              	# -ftree-vect-loop-version -ftree-vectorize -funit-at-a-time
  27              	# -funwind-tables -fverbose-asm -fzero-initialized-in-bss
  28              	# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
  29              	# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc
  30              	# -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse
  31              	# -msse2 -msse3 -mtls-direct-seg-refs
  32              	
  33              		.text
  34              	.Ltext0:
  35              		.section	.rodata
  36              	.LC1:
  37 0000 73203D20 		.string	"s = %g\n"
  37      25670A00 
  38              	.LC2:
  39 0008 76656374 		.string	"vector s = %g\n"
  39      6F722073 
  39      203D2025 
  39      670A00
  40              	.LC3:
  41 0017 76656374 		.string	"vector2 s = %g\n"
  41      6F723220 
  41      73203D20 
  41      25670A00 
  42              		.text
  43              		.globl	main
  45              	main:
  46              	.LFB496:
  47              		.file 1 "ti.c"
   1:ti.c          **** #define SIZE 1000
   2:ti.c          **** #include <stdio.h>
   3:ti.c          **** #include <stdlib.h>
   4:ti.c          **** #include <xmmintrin.h>
   5:ti.c          **** 
   6:ti.c          **** float inner(float a[], float b[], int n);
   7:ti.c          **** float vinner(float a[], float b[], int n);
   8:ti.c          **** float vinner2(float a[], float b[], int n);
   9:ti.c          **** 
  10:ti.c          **** int main(int argc, char *argv[])
  11:ti.c          ****  {
  48              		.loc 1 11 0
  49              		.cfi_startproc
  50 0000 55       		pushq	%rbp	#
  51              		.cfi_def_cfa_offset 16
  52              		.cfi_offset 6, -16
  53 0001 4889E5   		movq	%rsp, %rbp	#,
  54              		.cfi_def_cfa_register 6
  55 0004 4881EC70 		subq	$8048, %rsp	#,
  55      1F0000
  56 000b 89BD9CE0 		movl	%edi, -8036(%rbp)	# argc, argc
  56      FFFF
  57 0011 4889B590 		movq	%rsi, -8048(%rbp)	# argv, argv
  57      E0FFFF
  12:ti.c          **** 
  13:ti.c          ****   float __attribute__((aligned (16))) a[SIZE], b[SIZE];
  14:ti.c          ****   float s0, s1, s2;
  15:ti.c          ****   int i,n;
  16:ti.c          **** 
  17:ti.c          ****   for (i = 0; i < SIZE; i++)
  58              		.loc 1 17 0
  59 0018 C785ACE0 		movl	$0, -8020(%rbp)	#, i
  59      FFFF0000 
  59      0000
  60 0022 EB35     		jmp	.L2	#
  61              	.L3:
  18:ti.c          ****    {
  19:ti.c          ****     a[i] = i;
  62              		.loc 1 19 0 discriminator 2
                        #####CS540 COMMENT Converts the single doubleword integer to single-precision
                        #####and places the result in %xmm0
  63 0024 F30F2A85 		cvtsi2ss	-8020(%rbp), %xmm0	# i, D.4908
  63      ACE0FFFF 
  64 002c 8B85ACE0 		movl	-8020(%rbp), %eax	# i, tmp66
  64      FFFF
  65 0032 4898     		cltq
                        #####CS540 COMMENT Move the value in %xmm0 0, a scalar single-precision
                        #####number, to memory, at %xmm0, -8000(%rbp, %rax, 4)
  66 0034 F30F1184 		movss	%xmm0, -8000(%rbp,%rax,4)	# D.4908, a
  66      85C0E0FF 
  66      FF
  20:ti.c          ****     b[i] = 1;
  67              		.loc 1 20 0 discriminator 2
  68 003d 8B85ACE0 		movl	-8020(%rbp), %eax	# i, tmp68
  68      FFFF
  69 0043 4863D0   		movslq	%eax, %rdx	# tmp68, tmp67
  70 0046 8B050000 		movl	.LC0(%rip), %eax	#, tmp69
  70      0000
  71 004c 89849560 		movl	%eax, -4000(%rbp,%rdx,4)	# tmp69, b
  71      F0FFFF
  17:ti.c          ****    {
  72              		.loc 1 17 0 discriminator 2
  73 0053 FF85ACE0 		incl	-8020(%rbp)	# i
  73      FFFF
  74              	.L2:
  17:ti.c          ****    {
  75              		.loc 1 17 0 is_stmt 0 discriminator 1
  76 0059 81BDACE0 		cmpl	$999, -8020(%rbp)	#, i
  76      FFFFE703 
  76      0000
  77 0063 7EBF     		jle	.L3	#,
  21:ti.c          ****    }
  22:ti.c          **** 
  23:ti.c          ****   s0 = inner(a,b,n);
  78              		.loc 1 23 0 is_stmt 1
  79 0065 8B95B0E0 		movl	-8016(%rbp), %edx	# n, tmp70
  79      FFFF
  80 006b 488D8D60 		leaq	-4000(%rbp), %rcx	#, tmp71
  80      F0FFFF
  81 0072 488D85C0 		leaq	-8000(%rbp), %rax	#, tmp72
  81      E0FFFF
  82 0079 4889CE   		movq	%rcx, %rsi	# tmp71,
  83 007c 4889C7   		movq	%rax, %rdi	# tmp72,
  84 007f E8000000 		call	inner	#
  84      00
                        #####CS540 COMMENT Move the single-precision scalar from %xmm0 to memory
                        #####(save the return value)
  85 0084 F30F1185 		movss	%xmm0, -8040(%rbp)	#, %sfp
  85      98E0FFFF 
  86 008c 8B8598E0 		movl	-8040(%rbp), %eax	# %sfp, tmp73
  86      FFFF
  87 0092 8985B4E0 		movl	%eax, -8012(%rbp)	# tmp73, s0
  87      FFFF
  24:ti.c          ****   printf("s = %g\n",s0);
  88              		.loc 1 24 0
                        #####CS540 COMMENT Convert the single-precision scalar value in memory
                        #####to a scalar double and place the result in %xmm0 (This is the argument
                        #####to printf)
  89 0098 F30F5A85 		cvtss2sd	-8012(%rbp), %xmm0	# s0, D.4909
  89      B4E0FFFF 
  90 00a0 BF000000 		movl	$.LC1, %edi	#,
  90      00
  91 00a5 B8010000 		movl	$1, %eax	#,
  91      00
  92 00aa E8000000 		call	printf	#
  92      00
  25:ti.c          **** 
  26:ti.c          ****   s1 = vinner1(a,b,n);
  93              		.loc 1 26 0
  94 00af 8B95B0E0 		movl	-8016(%rbp), %edx	# n, tmp74
  94      FFFF
  95 00b5 488D8D60 		leaq	-4000(%rbp), %rcx	#, tmp75
  95      F0FFFF
  96 00bc 488D85C0 		leaq	-8000(%rbp), %rax	#, tmp76
  96      E0FFFF
                        #####CS540 COMMENT (Side note):
                        #####Paramater order is: %rdi, %rsi, %rdx
                        #####passing %rdi = %rax = -8000(%rbp) first (a)
                        #####passing %rsi = %rcx = -4000 (%rbp) second (b)
                        #####passing %edx = -8016(%rbp) third (n)
  97 00c3 4889CE   		movq	%rcx, %rsi	# tmp75,
  98 00c6 4889C7   		movq	%rax, %rdi	# tmp76,
  99 00c9 B8000000 		movl	$0, %eax	#,
  99      00
 100 00ce E8000000 		call	vinner1	#
 100      00
                        #####CS540 COMMENT Conver the scalar integer in %eax to single-precision
                        #####and store it as a scalar in %xmm0
 101 00d3 F30F2AC0 		cvtsi2ss	%eax, %xmm0	# D.4910, tmp77
                        #####CS540 COMMENT Move the scalar single-precision value from %xmm0 to memory
 102 00d7 F30F1185 		movss	%xmm0, -8008(%rbp)	# tmp77, s1
 102      B8E0FFFF 
  27:ti.c          ****   printf("vector s = %g\n",s1);
 103              		.loc 1 27 0
                        #####CS540 Convert the single-precision scalar in memory to a scalar double
                        #####precision value, and store ther result in %xmm0. (This is the argument
                        #####to printf.)
 104 00df F30F5A85 		cvtss2sd	-8008(%rbp), %xmm0	# s1, D.4909
 104      B8E0FFFF 
 105 00e7 BF000000 		movl	$.LC2, %edi	#,
 105      00
 106 00ec B8010000 		movl	$1, %eax	#,
 106      00
 107 00f1 E8000000 		call	printf	#
 107      00
  28:ti.c          **** 
  29:ti.c          ****   s2 = vinner2(a,b,n);
 108              		.loc 1 29 0
 109 00f6 8B95B0E0 		movl	-8016(%rbp), %edx	# n, tmp78
 109      FFFF
 110 00fc 488D8D60 		leaq	-4000(%rbp), %rcx	#, tmp79
 110      F0FFFF
 111 0103 488D85C0 		leaq	-8000(%rbp), %rax	#, tmp80
 111      E0FFFF
 112 010a 4889CE   		movq	%rcx, %rsi	# tmp79,
 113 010d 4889C7   		movq	%rax, %rdi	# tmp80,
 114 0110 E8000000 		call	vinner2	#
 114      00
                        #####CS540 COMMENT Store the single scalar single-precision number in %xmm0
                        #####to memory
 115 0115 F30F1185 		movss	%xmm0, -8040(%rbp)	#, %sfp
 115      98E0FFFF 
 116 011d 8B8598E0 		movl	-8040(%rbp), %eax	# %sfp, tmp81
 116      FFFF
 117 0123 8985BCE0 		movl	%eax, -8004(%rbp)	# tmp81, s2
 117      FFFF
  30:ti.c          ****   printf("vector2 s = %g\n",s2);
 118              		.loc 1 30 0
                        
                        #####CS540 COMMENT Convert the single-precision scalar in memory and store it
                        #####as a scalar double in %xmm0. (This is the argument to printf.)
 119 0129 F30F5A85 		cvtss2sd	-8004(%rbp), %xmm0	# s2, D.4909
 119      BCE0FFFF 
 120 0131 BF000000 		movl	$.LC3, %edi	#,
 120      00
 121 0136 B8010000 		movl	$1, %eax	#,
 121      00
 122 013b E8000000 		call	printf	#
 122      00
  31:ti.c          ****  }
 123              		.loc 1 31 0
 124 0140 C9       		leave
 125              		.cfi_def_cfa 7, 8
 126 0141 C3       		ret
 127              		.cfi_endproc
 128              	.LFE496:
 130              		.globl	inner
 132              	inner:
 133              	.LFB497:
                   #####CS540 COMMENT - Note that for this function, the SSE instructions will NOT
                   #####be used. This is because it cannot be guaranteed that there is no memory
                   #####aliasing between a and b when inner is called. However, SSE instructions
                   #####are still used, because the compiler was instructed to use the unit,
                   #####they just process scalars instead of packed values/vectors.
  32:ti.c          **** 
  33:ti.c          **** float inner(float a[], float b[], int n)
  34:ti.c          ****  {
 134              		.loc 1 34 0
 135              		.cfi_startproc
 136 0142 55       		pushq	%rbp	#
 137              		.cfi_def_cfa_offset 16
 138              		.cfi_offset 6, -16
 139 0143 4889E5   		movq	%rsp, %rbp	#,
 140              		.cfi_def_cfa_register 6
 141 0146 48897DE8 		movq	%rdi, -24(%rbp)	# a, a
 142 014a 488975E0 		movq	%rsi, -32(%rbp)	# b, b
 143 014e 8955DC   		movl	%edx, -36(%rbp)	# n, n
  35:ti.c          ****   int i;
  36:ti.c          ****   float s;
  37:ti.c          **** 
  38:ti.c          ****   s = 0.0;
 144              		.loc 1 38 0
 145 0151 8B050000 		movl	.LC4(%rip), %eax	#, tmp70
 145      0000
 146 0157 8945FC   		movl	%eax, -4(%rbp)	# tmp70, s
  39:ti.c          ****   for (i = 0; i < SIZE; i++)
 147              		.loc 1 39 0
 148 015a C745F800 		movl	$0, -8(%rbp)	#, i
 148      000000
 149 0161 EB45     		jmp	.L5	#
 150              	.L6:
  40:ti.c          ****    s += a[i] * b[i];
 151              		.loc 1 40 0 discriminator 2
 152 0163 8B45F8   		movl	-8(%rbp), %eax	# i, tmp71
 153 0166 4898     		cltq
 154 0168 488D1485 		leaq	0(,%rax,4), %rdx	#, D.4915
 154      00000000 
 155 0170 488B45E8 		movq	-24(%rbp), %rax	# a, tmp72
 156 0174 4801D0   		addq	%rdx, %rax	# D.4915, D.4916
                        #####CS540 COMMENT Moves only a single-precision *sclar* to %xmm1
 157 0177 F30F1008 		movss	(%rax), %xmm1	# *_8, D.4917
 158 017b 8B45F8   		movl	-8(%rbp), %eax	# i, tmp73
 159 017e 4898     		cltq
 160 0180 488D1485 		leaq	0(,%rax,4), %rdx	#, D.4915
 160      00000000 
 161 0188 488B45E0 		movq	-32(%rbp), %rax	# b, tmp74
 162 018c 4801D0   		addq	%rdx, %rax	# D.4915, D.4916
                        #####CS540 COMMENT Again moves only a single-precision scalar
 163 018f F30F1000 		movss	(%rax), %xmm0	# *_13, D.4917
                        #####CS540 COMMENT Multiply the single-precision scalars
 164 0193 F30F59C1 		mulss	%xmm1, %xmm0	# D.4917, D.4917
                        #####CS540 COMMENT Load the running sum, a single-precision scalar
                        #####from memory to %xmm1
 165 0197 F30F104D 		movss	-4(%rbp), %xmm1	# s, tmp76
 165      FC
                        #####CS540 COMMENT Add the product scalar and the running sum scalar,
                        ####and store in %xmm0
 166 019c F30F58C1 		addss	%xmm1, %xmm0	# tmp76, tmp75
                        #####CS540 Finally, store the running sum back to memory
 167 01a0 F30F1145 		movss	%xmm0, -4(%rbp)	# tmp75, s
 167      FC
  39:ti.c          ****   for (i = 0; i < SIZE; i++)
 168              		.loc 1 39 0 discriminator 2
 169 01a5 FF45F8   		incl	-8(%rbp)	# i
 170              	.L5:
  39:ti.c          ****   for (i = 0; i < SIZE; i++)
 171              		.loc 1 39 0 is_stmt 0 discriminator 1
 172 01a8 817DF8E7 		cmpl	$999, -8(%rbp)	#, i
 172      030000
 173 01af 7EB2     		jle	.L6	#,
  41:ti.c          ****   return s;
 174              		.loc 1 41 0 is_stmt 1
 175 01b1 8B45FC   		movl	-4(%rbp), %eax	# s, D.4917
  42:ti.c          ****  }
 176              		.loc 1 42 0
 177 01b4 8945D8   		movl	%eax, -40(%rbp)	# <retval>, %sfp
                        #####CS540 COMMENT - Move the final return value to the %xmm0 register
 178 01b7 F30F1045 		movss	-40(%rbp), %xmm0	# %sfp,
 178      D8
 179 01bc 5D       		popq	%rbp	#
 180              		.cfi_def_cfa 7, 8
 181 01bd C3       		ret
 182              		.cfi_endproc
 183              	.LFE497:
 185              		.section	.rodata
 186              	.LC5:
 187 0027 25672025 		.string	"%g %g %g %g\n"
 187      67202567 
 187      2025670A 
 187      00
 188              		.text
 189              		.globl	vinner
 191              	vinner:
 192              	.LFB498:
  43:ti.c          **** 
  44:ti.c          **** float vinner(float a[], float b[], int n)
  45:ti.c          ****  {
 193              		.loc 1 45 0
 194              		.cfi_startproc
 195 01be 55       		pushq	%rbp	#
 196              		.cfi_def_cfa_offset 16
 197              		.cfi_offset 6, -16
 198 01bf 4889E5   		movq	%rsp, %rbp	#,
 199              		.cfi_def_cfa_register 6
 200 01c2 4881EC00 		subq	$256, %rsp	#,
 200      010000
 201 01c9 4889BD18 		movq	%rdi, -232(%rbp)	# a, a
 201      FFFFFF
 202 01d0 4889B510 		movq	%rsi, -240(%rbp)	# b, b
 202      FFFFFF
 203 01d7 89950CFF 		movl	%edx, -244(%rbp)	# n, n
 203      FFFF
  46:ti.c          ****   int i,nb;
  47:ti.c          ****   float s;
  48:ti.c          ****   float temp[4] __attribute__((aligned(16)));
  49:ti.c          ****   __m128 v1, v2, acc;
  50:ti.c          **** 
  51:ti.c          ****   nb = n - (n % 4);
 204              		.loc 1 51 0
 205 01dd 8B850CFF 		movl	-244(%rbp), %eax	# n, tmp103
 205      FFFF
 206 01e3 99       		cltd
 207 01e4 C1EA1E   		shrl	$30, %edx	#, tmp105
 208 01e7 01D0     		addl	%edx, %eax	# tmp105, tmp106
 209 01e9 83E003   		andl	$3, %eax	#, tmp107
 210 01ec 29D0     		subl	%edx, %eax	# tmp105, tmp108
 211 01ee 8B950CFF 		movl	-244(%rbp), %edx	# n, tmp112
 211      FFFF
 212 01f4 29C2     		subl	%eax, %edx	# D.4918, tmp111
 213 01f6 89D0     		movl	%edx, %eax	# tmp111, tmp111
 214 01f8 898534FF 		movl	%eax, -204(%rbp)	# tmp111, nb
 214      FFFF
                        #####CS540 COMMENT Move the aligned packs single-precision values
                        #####in memory to %xmm0 - moves the acc value to %xmm0
 215 01fe 0F288560 		movaps	-160(%rbp), %xmm0	# acc, tmp113
 215      FFFFFF
                        #####CS540 COMMENT  Move the value at %xmm0, aligned, packed, and single-
                        #####precision, to memory - moves the acc value to another memory location
 216 0205 0F294590 		movaps	%xmm0, -112(%rbp)	# tmp113, __A

                        #####CS540 COMMENT Move the value in memory, aligned, packed, and single-
                        #####precision, to %xmm0 - moves the acc value to %xmm0
 217 0209 0F288560 		movaps	-160(%rbp), %xmm0	# acc, tmp114
 217      FFFFFF

                        #####CS540 COMMENT  Move the value at %xmm0, aligned, packed, and single-
                        #####precision, to memory - moves the acc value to another memory location
 218 0210 0F2945A0 		movaps	%xmm0, -96(%rbp)	# tmp114, __B
 219              	.LBB30:
 220              	.LBB31:
 221              		.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h"
   1:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Copyright (C) 2002-2013 Free Software Foundation, Inc.
   2:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
   3:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    This file is part of GCC.
   4:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
   5:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    GCC is free software; you can redistribute it and/or modify
   6:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    it under the terms of the GNU General Public License as published by
   7:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    the Free Software Foundation; either version 3, or (at your option)
   8:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    any later version.
   9:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  10:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    GCC is distributed in the hope that it will be useful,
  11:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    but WITHOUT ANY WARRANTY; without even the implied warranty of
  12:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  13:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    GNU General Public License for more details.
  14:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  15:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    Under Section 7 of GPL version 3, you are granted additional
  16:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    permissions described in the GCC Runtime Library Exception, version
  17:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    3.1, as published by the Free Software Foundation.
  18:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  19:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    You should have received a copy of the GNU General Public License and
  20:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    a copy of the GCC Runtime Library Exception along with this program;
  21:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  22:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    <http://www.gnu.org/licenses/>.  */
  23:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  24:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Implemented from the specification included in the Intel C++ Compiler
  25:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    User Guide and Reference, version 9.0.  */
  26:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  27:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #ifndef _XMMINTRIN_H_INCLUDED
  28:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _XMMINTRIN_H_INCLUDED
  29:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  30:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #ifndef __SSE__
  31:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** # error "SSE instruction set not enabled"
  32:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #else
  33:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  34:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* We need type definitions from the MMX header file.  */
  35:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #include <mmintrin.h>
  36:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  37:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Get _mm_malloc () and _mm_free ().  */
  38:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #include <mm_malloc.h>
  39:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  40:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* The Intel API is flexible enough that we must allow aliasing with other
  41:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    vector types, and their scalar components.  */
  42:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** typedef float __m128 __attribute__ ((__vector_size__ (16), __may_alias__));
  43:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  44:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Internal data types for implementing the intrinsics.  */
  45:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** typedef float __v4sf __attribute__ ((__vector_size__ (16)));
  46:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  47:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Create a selector for use with the SHUFPS instruction.  */
  48:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_SHUFFLE(fp3,fp2,fp1,fp0) \
  49:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****  (((fp3) << 6) | ((fp2) << 4) | ((fp1) << 2) | (fp0))
  50:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  51:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Constants for use with _mm_prefetch.  */
  52:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** enum _mm_hint
  53:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
  54:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   _MM_HINT_T0 = 3,
  55:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   _MM_HINT_T1 = 2,
  56:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   _MM_HINT_T2 = 1,
  57:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   _MM_HINT_NTA = 0
  58:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** };
  59:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  60:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Bits in the MXCSR.  */
  61:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_EXCEPT_MASK       0x003f
  62:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_EXCEPT_INVALID    0x0001
  63:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_EXCEPT_DENORM     0x0002
  64:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_EXCEPT_DIV_ZERO   0x0004
  65:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_EXCEPT_OVERFLOW   0x0008
  66:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_EXCEPT_UNDERFLOW  0x0010
  67:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_EXCEPT_INEXACT    0x0020
  68:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  69:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_MASK_MASK         0x1f80
  70:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_MASK_INVALID      0x0080
  71:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_MASK_DENORM       0x0100
  72:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_MASK_DIV_ZERO     0x0200
  73:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_MASK_OVERFLOW     0x0400
  74:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_MASK_UNDERFLOW    0x0800
  75:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_MASK_INEXACT      0x1000
  76:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  77:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_ROUND_MASK        0x6000
  78:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_ROUND_NEAREST     0x0000
  79:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_ROUND_DOWN        0x2000
  80:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_ROUND_UP          0x4000
  81:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_ROUND_TOWARD_ZERO 0x6000
  82:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  83:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_FLUSH_ZERO_MASK   0x8000
  84:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_FLUSH_ZERO_ON     0x8000
  85:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _MM_FLUSH_ZERO_OFF    0x0000
  86:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  87:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Create a vector of zeros.  */
  88:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
  89:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_setzero_ps (void)
  90:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
  91:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __extension__ (__m128){ 0.0f, 0.0f, 0.0f, 0.0f };
  92:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
  93:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  94:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Perform the respective operation on the lower SPFP (single-precision
  95:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    floating-point) values of A and B; the upper three SPFP values are
  96:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    passed through from A.  */
  97:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
  98:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
  99:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_add_ss (__m128 __A, __m128 __B)
 100:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 101:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
 102:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 103:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 104:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 105:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_sub_ss (__m128 __A, __m128 __B)
 106:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 107:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_subss ((__v4sf)__A, (__v4sf)__B);
 108:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 109:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 110:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 111:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_mul_ss (__m128 __A, __m128 __B)
 112:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 113:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_mulss ((__v4sf)__A, (__v4sf)__B);
 114:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 115:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 116:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 117:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_div_ss (__m128 __A, __m128 __B)
 118:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 119:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_divss ((__v4sf)__A, (__v4sf)__B);
 120:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 121:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 122:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 123:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_sqrt_ss (__m128 __A)
 124:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 125:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_sqrtss ((__v4sf)__A);
 126:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 127:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 128:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 129:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_rcp_ss (__m128 __A)
 130:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 131:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_rcpss ((__v4sf)__A);
 132:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 133:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 134:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 135:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_rsqrt_ss (__m128 __A)
 136:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 137:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_rsqrtss ((__v4sf)__A);
 138:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 139:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 140:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 141:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_min_ss (__m128 __A, __m128 __B)
 142:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 143:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_minss ((__v4sf)__A, (__v4sf)__B);
 144:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 145:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 146:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 147:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_max_ss (__m128 __A, __m128 __B)
 148:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 149:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_maxss ((__v4sf)__A, (__v4sf)__B);
 150:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 151:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 152:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Perform the respective operation on the four SPFP values in A and B.  */
 153:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 154:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 155:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_add_ps (__m128 __A, __m128 __B)
 156:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_addps ((__v4sf)__A, (__v4sf)__B);
 158:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 159:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 160:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 161:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_sub_ps (__m128 __A, __m128 __B)
 162:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 163:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_subps ((__v4sf)__A, (__v4sf)__B);
 164:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 165:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 166:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 167:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_mul_ps (__m128 __A, __m128 __B)
 168:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 169:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_mulps ((__v4sf)__A, (__v4sf)__B);
 170:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 171:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 172:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 173:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_div_ps (__m128 __A, __m128 __B)
 174:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 175:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_divps ((__v4sf)__A, (__v4sf)__B);
 176:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 177:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 178:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 179:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_sqrt_ps (__m128 __A)
 180:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 181:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_sqrtps ((__v4sf)__A);
 182:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 183:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 184:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 185:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_rcp_ps (__m128 __A)
 186:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 187:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_rcpps ((__v4sf)__A);
 188:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 189:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 190:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 191:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_rsqrt_ps (__m128 __A)
 192:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 193:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_rsqrtps ((__v4sf)__A);
 194:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 195:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 196:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 197:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_min_ps (__m128 __A, __m128 __B)
 198:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 199:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_minps ((__v4sf)__A, (__v4sf)__B);
 200:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 201:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 202:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 203:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_max_ps (__m128 __A, __m128 __B)
 204:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 205:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_maxps ((__v4sf)__A, (__v4sf)__B);
 206:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 207:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 208:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Perform logical bit-wise operations on 128-bit values.  */
 209:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 210:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 211:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_and_ps (__m128 __A, __m128 __B)
 212:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 213:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_andps (__A, __B);
 214:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 215:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 216:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 217:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_andnot_ps (__m128 __A, __m128 __B)
 218:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 219:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_andnps (__A, __B);
 220:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 221:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 222:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 223:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_or_ps (__m128 __A, __m128 __B)
 224:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 225:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_orps (__A, __B);
 226:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 227:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 228:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 229:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_xor_ps (__m128 __A, __m128 __B)
 230:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 231:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_xorps (__A, __B);
 222              		.loc 2 231 0
                        #####CS540 COMMENT Move the aligned pakced single-precision values from memory
                        #####to %xmm0 - place one instance of acc in %xmm0
 223 0214 0F2845A0 		movaps	-96(%rbp), %xmm0	# __B, tmp115
                        #####CS540 COMMENT Move the aligned pakced single-precision values from memory
                        #####to %xmm1 - place another instance of acc in %xm1
 224 0218 0F284D90 		movaps	-112(%rbp), %xmm1	# __A, tmp116
                        #####CS540 COMMENT xor together the values in %xmm1 and %xmm0 as packed
                        #####single-precision values - xor'ing acc with itself, so zeroing it
 225 021c 0F57C1   		xorps	%xmm1, %xmm0	# tmp116, D.4924
 226              	.LBE31:
 227              	.LBE30:
  52:ti.c          ****   acc = _mm_xor_ps(acc,acc);
 228              		.loc 1 52 0
                        #####CS540 COMMENT Store the result of the xor back to memory, at acc, as
                        #####an aligned packed single-precision number
 229 021f 0F298560 		movaps	%xmm0, -160(%rbp)	# D.4847, acc
 229      FFFFFF
  53:ti.c          ****   for (i = 0; i < nb; i += 4)
 230              		.loc 1 53 0
 231 0226 C7852CFF 		movl	$0, -212(%rbp)	#, i
 231      FFFF0000 
 231      0000
 232 0230 E9AF0000 		jmp	.L10	#
 232      00
 233              	.L15:
  54:ti.c          ****    {
  55:ti.c          ****     v1 = _mm_load_ps(&a[i]);
 234              		.loc 1 55 0 discriminator 2
 235 0235 8B852CFF 		movl	-212(%rbp), %eax	# i, tmp117
 235      FFFF
 236 023b 4898     		cltq
 237 023d 488D1485 		leaq	0(,%rax,4), %rdx	#, D.4919
 237      00000000 
 238 0245 488B8518 		movq	-232(%rbp), %rax	# a, tmp118
 238      FFFFFF
 239 024c 4801D0   		addq	%rdx, %rax	# D.4919, D.4920
 240 024f 48898538 		movq	%rax, -200(%rbp)	# D.4920, __P
 240      FFFFFF
 241              	.LBB32:
 242              	.LBB33:
 232:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 233:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 234:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Perform a comparison on the lower SPFP values of A and B.  If the
 235:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    comparison is true, place a mask of all ones in the result, otherwise a
 236:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    mask of zeros.  The upper three SPFP values are passed through from A.  */
 237:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 238:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 239:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpeq_ss (__m128 __A, __m128 __B)
 240:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 241:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpeqss ((__v4sf)__A, (__v4sf)__B);
 242:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 243:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 244:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 245:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmplt_ss (__m128 __A, __m128 __B)
 246:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 247:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpltss ((__v4sf)__A, (__v4sf)__B);
 248:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 249:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 250:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 251:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmple_ss (__m128 __A, __m128 __B)
 252:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 253:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpless ((__v4sf)__A, (__v4sf)__B);
 254:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 255:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 256:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 257:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpgt_ss (__m128 __A, __m128 __B)
 258:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 259:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_movss ((__v4sf) __A,
 260:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 					(__v4sf)
 261:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 					__builtin_ia32_cmpltss ((__v4sf) __B,
 262:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 								(__v4sf)
 263:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 								__A));
 264:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 265:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 266:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 267:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpge_ss (__m128 __A, __m128 __B)
 268:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 269:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_movss ((__v4sf) __A,
 270:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 					(__v4sf)
 271:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 					__builtin_ia32_cmpless ((__v4sf) __B,
 272:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 								(__v4sf)
 273:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 								__A));
 274:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 275:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 276:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 277:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpneq_ss (__m128 __A, __m128 __B)
 278:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 279:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpneqss ((__v4sf)__A, (__v4sf)__B);
 280:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 281:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 282:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 283:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpnlt_ss (__m128 __A, __m128 __B)
 284:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 285:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpnltss ((__v4sf)__A, (__v4sf)__B);
 286:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 287:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 288:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 289:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpnle_ss (__m128 __A, __m128 __B)
 290:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 291:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpnless ((__v4sf)__A, (__v4sf)__B);
 292:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 293:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 294:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 295:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpngt_ss (__m128 __A, __m128 __B)
 296:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 297:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_movss ((__v4sf) __A,
 298:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 					(__v4sf)
 299:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 					__builtin_ia32_cmpnltss ((__v4sf) __B,
 300:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 								 (__v4sf)
 301:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 								 __A));
 302:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 303:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 304:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 305:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpnge_ss (__m128 __A, __m128 __B)
 306:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 307:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_movss ((__v4sf) __A,
 308:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 					(__v4sf)
 309:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 					__builtin_ia32_cmpnless ((__v4sf) __B,
 310:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 								 (__v4sf)
 311:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 								 __A));
 312:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 313:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 314:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 315:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpord_ss (__m128 __A, __m128 __B)
 316:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 317:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpordss ((__v4sf)__A, (__v4sf)__B);
 318:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 319:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 320:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 321:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpunord_ss (__m128 __A, __m128 __B)
 322:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 323:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpunordss ((__v4sf)__A, (__v4sf)__B);
 324:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 325:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 326:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Perform a comparison on the four SPFP values of A and B.  For each
 327:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    element, if the comparison is true, place a mask of all ones in the
 328:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    result, otherwise a mask of zeros.  */
 329:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 330:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 331:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpeq_ps (__m128 __A, __m128 __B)
 332:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 333:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpeqps ((__v4sf)__A, (__v4sf)__B);
 334:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 335:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 336:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 337:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmplt_ps (__m128 __A, __m128 __B)
 338:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 339:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpltps ((__v4sf)__A, (__v4sf)__B);
 340:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 341:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 342:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 343:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmple_ps (__m128 __A, __m128 __B)
 344:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 345:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpleps ((__v4sf)__A, (__v4sf)__B);
 346:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 347:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 348:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 349:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpgt_ps (__m128 __A, __m128 __B)
 350:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 351:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpgtps ((__v4sf)__A, (__v4sf)__B);
 352:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 353:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 354:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 355:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpge_ps (__m128 __A, __m128 __B)
 356:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 357:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpgeps ((__v4sf)__A, (__v4sf)__B);
 358:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 359:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 360:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 361:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpneq_ps (__m128 __A, __m128 __B)
 362:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 363:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpneqps ((__v4sf)__A, (__v4sf)__B);
 364:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 365:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 366:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 367:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpnlt_ps (__m128 __A, __m128 __B)
 368:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 369:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpnltps ((__v4sf)__A, (__v4sf)__B);
 370:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 371:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 372:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 373:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpnle_ps (__m128 __A, __m128 __B)
 374:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 375:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpnleps ((__v4sf)__A, (__v4sf)__B);
 376:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 377:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 378:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 379:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpngt_ps (__m128 __A, __m128 __B)
 380:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 381:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpngtps ((__v4sf)__A, (__v4sf)__B);
 382:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 383:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 384:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 385:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpnge_ps (__m128 __A, __m128 __B)
 386:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 387:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpngeps ((__v4sf)__A, (__v4sf)__B);
 388:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 389:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 390:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 391:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpord_ps (__m128 __A, __m128 __B)
 392:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 393:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpordps ((__v4sf)__A, (__v4sf)__B);
 394:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 395:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 396:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 397:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cmpunord_ps (__m128 __A, __m128 __B)
 398:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 399:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cmpunordps ((__v4sf)__A, (__v4sf)__B);
 400:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 401:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 402:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Compare the lower SPFP values of A and B and return 1 if true
 403:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    and 0 if false.  */
 404:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 405:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 406:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_comieq_ss (__m128 __A, __m128 __B)
 407:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 408:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_comieq ((__v4sf)__A, (__v4sf)__B);
 409:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 410:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 411:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 412:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_comilt_ss (__m128 __A, __m128 __B)
 413:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 414:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_comilt ((__v4sf)__A, (__v4sf)__B);
 415:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 416:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 417:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 418:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_comile_ss (__m128 __A, __m128 __B)
 419:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 420:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_comile ((__v4sf)__A, (__v4sf)__B);
 421:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 422:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 423:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 424:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_comigt_ss (__m128 __A, __m128 __B)
 425:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 426:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_comigt ((__v4sf)__A, (__v4sf)__B);
 427:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 428:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 429:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 430:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_comige_ss (__m128 __A, __m128 __B)
 431:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 432:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_comige ((__v4sf)__A, (__v4sf)__B);
 433:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 434:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 435:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 436:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_comineq_ss (__m128 __A, __m128 __B)
 437:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 438:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_comineq ((__v4sf)__A, (__v4sf)__B);
 439:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 440:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 441:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 442:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_ucomieq_ss (__m128 __A, __m128 __B)
 443:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 444:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_ucomieq ((__v4sf)__A, (__v4sf)__B);
 445:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 446:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 447:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 448:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_ucomilt_ss (__m128 __A, __m128 __B)
 449:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 450:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_ucomilt ((__v4sf)__A, (__v4sf)__B);
 451:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 452:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 453:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 454:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_ucomile_ss (__m128 __A, __m128 __B)
 455:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 456:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_ucomile ((__v4sf)__A, (__v4sf)__B);
 457:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 458:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 459:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 460:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_ucomigt_ss (__m128 __A, __m128 __B)
 461:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 462:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_ucomigt ((__v4sf)__A, (__v4sf)__B);
 463:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 464:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 465:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 466:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_ucomige_ss (__m128 __A, __m128 __B)
 467:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 468:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_ucomige ((__v4sf)__A, (__v4sf)__B);
 469:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 470:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 471:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 472:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_ucomineq_ss (__m128 __A, __m128 __B)
 473:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 474:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_ucomineq ((__v4sf)__A, (__v4sf)__B);
 475:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 476:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 477:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert the lower SPFP value to a 32-bit integer according to the current
 478:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    rounding mode.  */
 479:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 480:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtss_si32 (__m128 __A)
 481:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 482:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_cvtss2si ((__v4sf) __A);
 483:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 484:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 485:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 486:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvt_ss2si (__m128 __A)
 487:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 488:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_cvtss_si32 (__A);
 489:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 490:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 491:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #ifdef __x86_64__
 492:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert the lower SPFP value to a 32-bit integer according to the
 493:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    current rounding mode.  */
 494:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 495:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Intel intrinsic.  */
 496:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 497:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtss_si64 (__m128 __A)
 498:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 499:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_cvtss2si64 ((__v4sf) __A);
 500:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 501:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 502:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Microsoft intrinsic.  */
 503:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 504:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtss_si64x (__m128 __A)
 505:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 506:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_cvtss2si64 ((__v4sf) __A);
 507:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 508:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #endif
 509:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 510:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert the two lower SPFP values to 32-bit integers according to the
 511:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    current rounding mode.  Return the integers in packed form.  */
 512:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 513:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtps_pi32 (__m128 __A)
 514:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 515:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m64) __builtin_ia32_cvtps2pi ((__v4sf) __A);
 516:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 517:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 518:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 519:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvt_ps2pi (__m128 __A)
 520:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 521:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_cvtps_pi32 (__A);
 522:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 523:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 524:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Truncate the lower SPFP value to a 32-bit integer.  */
 525:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 526:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvttss_si32 (__m128 __A)
 527:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 528:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_cvttss2si ((__v4sf) __A);
 529:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 530:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 531:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 532:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtt_ss2si (__m128 __A)
 533:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 534:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_cvttss_si32 (__A);
 535:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 536:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 537:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #ifdef __x86_64__
 538:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Truncate the lower SPFP value to a 32-bit integer.  */
 539:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 540:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Intel intrinsic.  */
 541:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 542:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvttss_si64 (__m128 __A)
 543:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 544:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_cvttss2si64 ((__v4sf) __A);
 545:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 546:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 547:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Microsoft intrinsic.  */
 548:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 549:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvttss_si64x (__m128 __A)
 550:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 551:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_cvttss2si64 ((__v4sf) __A);
 552:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 553:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #endif
 554:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 555:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Truncate the two lower SPFP values to 32-bit integers.  Return the
 556:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    integers in packed form.  */
 557:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 558:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvttps_pi32 (__m128 __A)
 559:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 560:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m64) __builtin_ia32_cvttps2pi ((__v4sf) __A);
 561:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 562:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 563:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 564:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtt_ps2pi (__m128 __A)
 565:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 566:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_cvttps_pi32 (__A);
 567:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 568:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 569:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert B to a SPFP value and insert it as element zero in A.  */
 570:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 571:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtsi32_ss (__m128 __A, int __B)
 572:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 573:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cvtsi2ss ((__v4sf) __A, __B);
 574:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 575:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 576:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 577:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvt_si2ss (__m128 __A, int __B)
 578:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 579:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_cvtsi32_ss (__A, __B);
 580:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 581:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 582:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #ifdef __x86_64__
 583:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert B to a SPFP value and insert it as element zero in A.  */
 584:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 585:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Intel intrinsic.  */
 586:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 587:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtsi64_ss (__m128 __A, long long __B)
 588:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 589:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cvtsi642ss ((__v4sf) __A, __B);
 590:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 591:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 592:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Microsoft intrinsic.  */
 593:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 594:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtsi64x_ss (__m128 __A, long long __B)
 595:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 596:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cvtsi642ss ((__v4sf) __A, __B);
 597:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 598:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #endif
 599:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 600:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert the two 32-bit values in B to SPFP form and insert them
 601:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    as the two lower elements in A.  */
 602:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 603:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtpi32_ps (__m128 __A, __m64 __B)
 604:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 605:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_cvtpi2ps ((__v4sf) __A, (__v2si)__B);
 606:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 607:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 608:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 609:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvt_pi2ps (__m128 __A, __m64 __B)
 610:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 611:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_cvtpi32_ps (__A, __B);
 612:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 613:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 614:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert the four signed 16-bit values in A to SPFP form.  */
 615:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 616:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtpi16_ps (__m64 __A)
 617:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 618:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v4hi __sign;
 619:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v2si __hisi, __losi;
 620:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v4sf __zero, __ra, __rb;
 621:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 622:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   /* This comparison against zero gives us a mask that can be used to
 623:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****      fill in the missing sign bits in the unpack operations below, so
 624:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****      that we get signed values after unpacking.  */
 625:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __sign = __builtin_ia32_pcmpgtw ((__v4hi)0LL, (__v4hi)__A);
 626:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 627:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   /* Convert the four words to doublewords.  */
 628:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __losi = (__v2si) __builtin_ia32_punpcklwd ((__v4hi)__A, __sign);
 629:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __hisi = (__v2si) __builtin_ia32_punpckhwd ((__v4hi)__A, __sign);
 630:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 631:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   /* Convert the doublewords to floating point two at a time.  */
 632:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __zero = (__v4sf) _mm_setzero_ps ();
 633:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __ra = __builtin_ia32_cvtpi2ps (__zero, __losi);
 634:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __rb = __builtin_ia32_cvtpi2ps (__ra, __hisi);
 635:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 636:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_movlhps (__ra, __rb);
 637:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 638:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 639:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert the four unsigned 16-bit values in A to SPFP form.  */
 640:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 641:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtpu16_ps (__m64 __A)
 642:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 643:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v2si __hisi, __losi;
 644:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v4sf __zero, __ra, __rb;
 645:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 646:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   /* Convert the four words to doublewords.  */
 647:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __losi = (__v2si) __builtin_ia32_punpcklwd ((__v4hi)__A, (__v4hi)0LL);
 648:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __hisi = (__v2si) __builtin_ia32_punpckhwd ((__v4hi)__A, (__v4hi)0LL);
 649:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 650:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   /* Convert the doublewords to floating point two at a time.  */
 651:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __zero = (__v4sf) _mm_setzero_ps ();
 652:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __ra = __builtin_ia32_cvtpi2ps (__zero, __losi);
 653:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __rb = __builtin_ia32_cvtpi2ps (__ra, __hisi);
 654:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 655:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_movlhps (__ra, __rb);
 656:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 657:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 658:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert the low four signed 8-bit values in A to SPFP form.  */
 659:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 660:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtpi8_ps (__m64 __A)
 661:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 662:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v8qi __sign;
 663:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 664:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   /* This comparison against zero gives us a mask that can be used to
 665:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****      fill in the missing sign bits in the unpack operations below, so
 666:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****      that we get signed values after unpacking.  */
 667:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __sign = __builtin_ia32_pcmpgtb ((__v8qi)0LL, (__v8qi)__A);
 668:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 669:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   /* Convert the four low bytes to words.  */
 670:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __A = (__m64) __builtin_ia32_punpcklbw ((__v8qi)__A, __sign);
 671:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 672:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_cvtpi16_ps(__A);
 673:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 674:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 675:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert the low four unsigned 8-bit values in A to SPFP form.  */
 676:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 677:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtpu8_ps(__m64 __A)
 678:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 679:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __A = (__m64) __builtin_ia32_punpcklbw ((__v8qi)__A, (__v8qi)0LL);
 680:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_cvtpu16_ps(__A);
 681:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 682:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 683:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert the four signed 32-bit values in A and B to SPFP form.  */
 684:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 685:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtpi32x2_ps(__m64 __A, __m64 __B)
 686:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 687:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v4sf __zero = (__v4sf) _mm_setzero_ps ();
 688:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v4sf __sfa = __builtin_ia32_cvtpi2ps (__zero, (__v2si)__A);
 689:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v4sf __sfb = __builtin_ia32_cvtpi2ps (__sfa, (__v2si)__B);
 690:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_movlhps (__sfa, __sfb);
 691:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 692:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 693:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert the four SPFP values in A to four signed 16-bit integers.  */
 694:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 695:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtps_pi16(__m128 __A)
 696:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 697:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v4sf __hisf = (__v4sf)__A;
 698:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v4sf __losf = __builtin_ia32_movhlps (__hisf, __hisf);
 699:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v2si __hisi = __builtin_ia32_cvtps2pi (__hisf);
 700:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v2si __losi = __builtin_ia32_cvtps2pi (__losf);
 701:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m64) __builtin_ia32_packssdw (__hisi, __losi);
 702:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 703:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 704:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Convert the four SPFP values in A to four signed 8-bit integers.  */
 705:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 706:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtps_pi8(__m128 __A)
 707:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 708:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v4hi __tmp = (__v4hi) _mm_cvtps_pi16 (__A);
 709:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m64) __builtin_ia32_packsswb (__tmp, (__v4hi)0LL);
 710:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 711:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 712:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Selects four specific SPFP values from A and B based on MASK.  */
 713:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #ifdef __OPTIMIZE__
 714:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 715:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_shuffle_ps (__m128 __A, __m128 __B, int const __mask)
 716:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 717:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_shufps ((__v4sf)__A, (__v4sf)__B, __mask);
 718:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 719:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #else
 720:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #define _mm_shuffle_ps(A, B, MASK)					\
 721:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   ((__m128) __builtin_ia32_shufps ((__v4sf)(__m128)(A),			\
 722:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 				   (__v4sf)(__m128)(B), (int)(MASK)))
 723:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** #endif
 724:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 725:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Selects and interleaves the upper two SPFP values from A and B.  */
 726:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 727:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_unpackhi_ps (__m128 __A, __m128 __B)
 728:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 729:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_unpckhps ((__v4sf)__A, (__v4sf)__B);
 730:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 731:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 732:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Selects and interleaves the lower two SPFP values from A and B.  */
 733:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 734:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_unpacklo_ps (__m128 __A, __m128 __B)
 735:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 736:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_unpcklps ((__v4sf)__A, (__v4sf)__B);
 737:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 738:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 739:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Sets the upper two SPFP values with 64-bits of data loaded from P;
 740:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    the lower two values are passed through from A.  */
 741:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 742:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_loadh_pi (__m128 __A, __m64 const *__P)
 743:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 744:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_loadhps ((__v4sf)__A, (const __v2sf *)__P);
 745:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 746:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 747:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Stores the upper two SPFP values of A into P.  */
 748:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 749:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_storeh_pi (__m64 *__P, __m128 __A)
 750:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 751:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __builtin_ia32_storehps ((__v2sf *)__P, (__v4sf)__A);
 752:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 753:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 754:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Moves the upper two values of B into the lower two values of A.  */
 755:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 756:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_movehl_ps (__m128 __A, __m128 __B)
 757:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 758:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
 759:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 760:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 761:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Moves the lower two values of B into the upper two values of A.  */
 762:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 763:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_movelh_ps (__m128 __A, __m128 __B)
 764:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 765:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_movlhps ((__v4sf)__A, (__v4sf)__B);
 766:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 767:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 768:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Sets the lower two SPFP values with 64-bits of data loaded from P;
 769:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****    the upper two values are passed through from A.  */
 770:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 771:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_loadl_pi (__m128 __A, __m64 const *__P)
 772:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 773:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_loadlps ((__v4sf)__A, (const __v2sf *)__P);
 774:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 775:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 776:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Stores the lower two SPFP values of A into P.  */
 777:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 778:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_storel_pi (__m64 *__P, __m128 __A)
 779:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 780:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __builtin_ia32_storelps ((__v2sf *)__P, (__v4sf)__A);
 781:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 782:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 783:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Creates a 4-bit mask from the most significant bits of the SPFP values.  */
 784:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 785:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_movemask_ps (__m128 __A)
 786:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 787:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_movmskps ((__v4sf)__A);
 788:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 789:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 790:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Return the contents of the control register.  */
 791:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline unsigned int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 792:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_getcsr (void)
 793:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 794:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_stmxcsr ();
 795:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 796:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 797:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Read exception bits from the control register.  */
 798:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline unsigned int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 799:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _MM_GET_EXCEPTION_STATE (void)
 800:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 801:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_getcsr() & _MM_EXCEPT_MASK;
 802:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 803:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 804:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline unsigned int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 805:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _MM_GET_EXCEPTION_MASK (void)
 806:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 807:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_getcsr() & _MM_MASK_MASK;
 808:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 809:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 810:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline unsigned int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 811:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _MM_GET_ROUNDING_MODE (void)
 812:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 813:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_getcsr() & _MM_ROUND_MASK;
 814:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 815:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 816:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline unsigned int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 817:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _MM_GET_FLUSH_ZERO_MODE (void)
 818:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 819:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_getcsr() & _MM_FLUSH_ZERO_MASK;
 820:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 821:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 822:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Set the control register to I.  */
 823:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 824:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_setcsr (unsigned int __I)
 825:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 826:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __builtin_ia32_ldmxcsr (__I);
 827:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 828:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 829:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Set exception bits in the control register.  */
 830:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 831:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _MM_SET_EXCEPTION_STATE(unsigned int __mask)
 832:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 833:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   _mm_setcsr((_mm_getcsr() & ~_MM_EXCEPT_MASK) | __mask);
 834:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 835:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 836:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 837:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _MM_SET_EXCEPTION_MASK (unsigned int __mask)
 838:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 839:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   _mm_setcsr((_mm_getcsr() & ~_MM_MASK_MASK) | __mask);
 840:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 841:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 842:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 843:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _MM_SET_ROUNDING_MODE (unsigned int __mode)
 844:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 845:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   _mm_setcsr((_mm_getcsr() & ~_MM_ROUND_MASK) | __mode);
 846:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 847:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 848:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 849:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _MM_SET_FLUSH_ZERO_MODE (unsigned int __mode)
 850:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 851:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   _mm_setcsr((_mm_getcsr() & ~_MM_FLUSH_ZERO_MASK) | __mode);
 852:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 853:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 854:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Create a vector with element 0 as F and the rest zero.  */
 855:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 856:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_set_ss (float __F)
 857:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 858:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __extension__ (__m128)(__v4sf){ __F, 0.0f, 0.0f, 0.0f };
 859:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 860:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 861:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Create a vector with all four elements equal to F.  */
 862:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 863:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_set1_ps (float __F)
 864:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 865:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __extension__ (__m128)(__v4sf){ __F, __F, __F, __F };
 866:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 867:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 868:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 869:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_set_ps1 (float __F)
 870:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 871:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_set1_ps (__F);
 872:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 873:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 874:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Create a vector with element 0 as *P and the rest zero.  */
 875:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 876:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_load_ss (float const *__P)
 877:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 878:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_set_ss (*__P);
 879:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 880:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 881:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Create a vector with all four elements equal to *P.  */
 882:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 883:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_load1_ps (float const *__P)
 884:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 885:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_set1_ps (*__P);
 886:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 887:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 888:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 889:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_load_ps1 (float const *__P)
 890:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 891:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return _mm_load1_ps (__P);
 892:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 893:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 894:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Load four SPFP values from P.  The address must be 16-byte aligned.  */
 895:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 896:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_load_ps (float const *__P)
 897:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 898:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) *(__v4sf *)__P;
 243              		.loc 2 898 0 discriminator 2
 244 0256 488B8538 		movq	-200(%rbp), %rax	# __P, tmp119
 244      FFFFFF
                        #####CS540 COMMENT Move the aligned packed single-precision numbers at %(rax)
                        #####to %xmm0 - moving four values of a into %xmm0
 245 025d 0F2800   		movaps	(%rax), %xmm0	# MEM[(__v4sf *)__P_58], D.4924
 246              	.LBE33:
 247              	.LBE32:
 248              		.loc 1 55 0 discriminator 2
                        #####CS540 COMMENT Move the values just moved from memory to another place in
                        #####memory - moving a into v1
 249 0260 0F298570 		movaps	%xmm0, -144(%rbp)	# D.4851, v1
 249      FFFFFF
  56:ti.c          ****     v2 = _mm_load_ps(&b[i]);
 250              		.loc 1 56 0 discriminator 2
 251 0267 8B852CFF 		movl	-212(%rbp), %eax	# i, tmp120
 251      FFFF
 252 026d 4898     		cltq
 253 026f 488D1485 		leaq	0(,%rax,4), %rdx	#, D.4919
 253      00000000 
                        #####CS540 COMMENT Move the pointer value of b into %rax
 254 0277 488B8510 		movq	-240(%rbp), %rax	# b, tmp121
 254      FFFFFF
 255 027e 4801D0   		addq	%rdx, %rax	# D.4919, D.4920
 256 0281 48898540 		movq	%rax, -192(%rbp)	# D.4920, __P
 256      FFFFFF
 257              	.LBB34:
 258              	.LBB35:
 259              		.loc 2 898 0 discriminator 2
 260 0288 488B8540 		movq	-192(%rbp), %rax	# __P, tmp122
 260      FFFFFF
                        ######CS540 COMMENT Move four values of b into %xmm0
 261 028f 0F2800   		movaps	(%rax), %xmm0	# MEM[(__v4sf *)__P_60], D.4924
 262              	.LBE35:
 263              	.LBE34:
 264              		.loc 1 56 0 discriminator 2
                        #####CS540 COMMENT Move the value from %xmm0 back to memory, moving b to v2
 265 0292 0F294580 		movaps	%xmm0, -128(%rbp)	# D.4855, v2

                        #####CS540 COMMENT Move the four packed single-precision values of v1 into
                        #####%xmm0 (also the values of a)
 266 0296 0F288570 		movaps	-144(%rbp), %xmm0	# v1, tmp123
 266      FFFFFF
                        #####CS540 COMMENT Move the values back to memory
 267 029d 0F2945B0 		movaps	%xmm0, -80(%rbp)	# tmp123, __A

                        #####CS540 COMMENT Move the four packed single-precision values of v2 into
                        #####%xmm0 (also the values of b)
 268 02a1 0F284580 		movaps	-128(%rbp), %xmm0	# v2, tmp124

                        #####CS540 COMMENT Move the values back to memory
 269 02a5 0F2945C0 		movaps	%xmm0, -64(%rbp)	# tmp124, __B
 270              	.LBB36:
 271              	.LBB37:
 169:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 272              		.loc 2 169 0 discriminator 2
                        #####CS540 COMMENT Move v2 (which contains four b values) into %xmm0, then
                        #####do the same for v1 (which contains four a values)
 273 02a9 0F2845C0 		movaps	-64(%rbp), %xmm0	# __B, tmp125
 274 02ad 0F284DB0 		movaps	-80(%rbp), %xmm1	# __A, tmp126

                        ######CS540 COMMENT Multiply the four values of v1 and v2 (a and b)
 275 02b1 0F59C1   		mulps	%xmm1, %xmm0	# tmp126, D.4924
 276              	.LBE37:
 277              	.LBE36:
  57:ti.c          ****     v2 = _mm_mul_ps(v1,v2);
 278              		.loc 1 57 0 discriminator 2

                        #####CS540 COMMENT Store the result of the multiplication back to v2
 279 02b4 0F294580 		movaps	%xmm0, -128(%rbp)	# D.4860, v2
                        #####CS540 COMMENT Move the accumlator variable into the %xmm0 register
 280 02b8 0F288560 		movaps	-160(%rbp), %xmm0	# acc, tmp127
 280      FFFFFF
                        #####CS540 COMMENT Store the value of the accumulator back in memory
 281 02bf 0F2945D0 		movaps	%xmm0, -48(%rbp)	# tmp127, __A
                        #####CS540 COMMENT Load the value of v2 into %xmm0
 282 02c3 0F284580 		movaps	-128(%rbp), %xmm0	# v2, tmp128
                        #####CS540 COMMENT Store the four values of v2 back into memory
 283 02c7 0F2945E0 		movaps	%xmm0, -32(%rbp)	# tmp128, __B
 284              	.LBB38:
 285              	.LBB39:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 286              		.loc 2 157 0 discriminator 2
                        #####CS540 COMMENT Move the value of v2 into the %xmm0 SSE register
 287 02cb 0F2845E0 		movaps	-32(%rbp), %xmm0	# __B, tmp129
                        #####CS540 COMMENT Move the value of the accumulator into the %xmm1 register
 288 02cf 0F284DD0 		movaps	-48(%rbp), %xmm1	# __A, tmp130
                        #####CS540 COMMENT Add the value of v2 to the accumulator, and store in %xmm0
 289 02d3 0F58C1   		addps	%xmm1, %xmm0	# tmp130, D.4924
 290              	.LBE39:
 291              	.LBE38:
  58:ti.c          ****     acc = _mm_add_ps(acc,v2);
 292              		.loc 1 58 0 discriminator 2
                        #####CS6540 COMMENT Store the result of the addition back to the acc
 293 02d6 0F298560 		movaps	%xmm0, -160(%rbp)	# D.4865, acc
 293      FFFFFF
  53:ti.c          ****    {
 294              		.loc 1 53 0 discriminator 2
 295 02dd 83852CFF 		addl	$4, -212(%rbp)	#, i
 295      FFFF04
 296              	.L10:
  53:ti.c          ****    {
 297              		.loc 1 53 0 is_stmt 0 discriminator 1
 298 02e4 8B852CFF 		movl	-212(%rbp), %eax	# i, tmp131
 298      FFFF
 299 02ea 3B8534FF 		cmpl	-204(%rbp), %eax	# nb, tmp131
 299      FFFF
 300 02f0 0F8C3FFF 		jl	.L15	#,
 300      FFFF
 301 02f6 488D8550 		leaq	-176(%rbp), %rax	#, tmp132
 301      FFFFFF
 302 02fd 48898548 		movq	%rax, -184(%rbp)	# tmp132, __P
 302      FFFFFF
                        #####CS540 COMMENT Move the accumlator value into %xmm0
 303 0304 0F288560 		movaps	-160(%rbp), %xmm0	# acc, tmp133
 303      FFFFFF
                        #####CS540 COMMENT Store the acc value back to memory
 304 030b 0F2945F0 		movaps	%xmm0, -16(%rbp)	# tmp133, __A
 305              	.LBB40:
 306              	.LBB41:
 899:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 900:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 901:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Load four SPFP values from P.  The address need not be 16-byte aligned.  */
 902:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 903:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_loadu_ps (float const *__P)
 904:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 905:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_loadups (__P);
 906:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 907:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 908:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Load four SPFP values in reverse order.  The address must be aligned.  */
 909:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 910:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_loadr_ps (float const *__P)
 911:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 912:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   __v4sf __tmp = *(__v4sf *)__P;
 913:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return (__m128) __builtin_ia32_shufps (__tmp, __tmp, _MM_SHUFFLE (0,1,2,3));
 914:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 915:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 916:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Create the vector [Z Y X W].  */
 917:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 918:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_set_ps (const float __Z, const float __Y, const float __X, const float __W)
 919:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 920:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __extension__ (__m128)(__v4sf){ __W, __X, __Y, __Z };
 921:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 922:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 923:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Create the vector [W X Y Z].  */
 924:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 925:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_setr_ps (float __Z, float __Y, float __X, float __W)
 926:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 927:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __extension__ (__m128)(__v4sf){ __Z, __Y, __X, __W };
 928:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 929:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 930:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Stores the lower SPFP value.  */
 931:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 932:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_store_ss (float *__P, __m128 __A)
 933:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 934:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   *__P = __builtin_ia32_vec_ext_v4sf ((__v4sf)__A, 0);
 935:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 936:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 937:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline float __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 938:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_cvtss_f32 (__m128 __A)
 939:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 940:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   return __builtin_ia32_vec_ext_v4sf ((__v4sf)__A, 0);
 941:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 942:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** 
 943:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** /* Store four SPFP values.  The address must be 16-byte aligned.  */
 944:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
 945:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** _mm_store_ps (float *__P, __m128 __A)
 946:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** {
 947:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h ****   *(__v4sf *)__P = (__v4sf)__A;
 307              		.loc 2 947 0 is_stmt 1
 308 030f 488B8548 		movq	-184(%rbp), %rax	# __P, tmp134
 308      FFFFFF
                        #####CS540 COMMENT Move the value of acc back into %xmm0
 309 0316 0F2845F0 		movaps	-16(%rbp), %xmm0	# __A, tmp135
                        #####CS540 COMMENT Store %xmm0 back into the memory location of %rax, as
                        #####aligned packed single-precision numbers
 310 031a 0F2900   		movaps	%xmm0, (%rax)	# tmp135, MEM[(__v4sf *)__P_68]
 311              	.LBE41:
 312              	.LBE40:
  59:ti.c          ****    }
  60:ti.c          ****   _mm_store_ps(temp,acc);
  61:ti.c          ****   printf("%g %g %g %g\n",temp[0],temp[1],temp[2],temp[3]);
 313              		.loc 1 61 0

						#####In the following section, set up the arguments to printf
                        ###########################################################################
                        #####CS540 COMMENT Move the single scalar of temp into %xmm0
 314 031d F30F1085 		movss	-164(%rbp), %xmm0	# temp, D.4921
                        #####CS540 COMMENT Convert the single scalar to a double scalar in %xmm3
 315 0325 F30F5AD8 		cvtss2sd	%xmm0, %xmm3	# D.4921, D.4922

                        #####CS540 COMMENT Move the single scalar of temp int %xmm0
 316 0329 F30F1085 		movss	-168(%rbp), %xmm0	# temp, D.4921
 316      58FFFFFF      #####CS540 COMMENT Convert the single scalar to a double scalar in %xmm2
 317 0331 F30F5AD0 		cvtss2sd	%xmm0, %xmm2	# D.4921, D.4922

                        #####CS540 COMMENT Move the single scalar of temp into %xmm0
 318 0335 F30F1085 		movss	-172(%rbp), %xmm0	# temp, D.4921
 318      54FFFFFF      #####CS540 COMMENT Convert the single scalar to a double scalar in %xmm1
 319 033d F30F5AC8 		cvtss2sd	%xmm0, %xmm1	# D.4921, D.4922

                        #####CS540 COMMENT Again, move and convert a value of temp (temp 0)
 320 0341 F30F1085 		movss	-176(%rbp), %xmm0	# temp, D.4921
 320      50FFFFFF 
 321 0349 F30F5AC0 		cvtss2sd	%xmm0, %xmm0	# D.4921, D.4922
 322 034d BF000000 		movl	$.LC5, %edi	#,
 322      00
 323 0352 B8040000 		movl	$4, %eax	#,
 323      00
 324 0357 E8000000 		call	printf	#
                        #####Finished setting up arguments and then called printf##################
 324      00
  62:ti.c          ****   s = 0.0;
 325              		.loc 1 62 0
 326 035c 8B050000 		movl	.LC4(%rip), %eax	#, tmp136
 326      0000
 327 0362 898530FF 		movl	%eax, -208(%rbp)	# tmp136, s
 327      FFFF
  63:ti.c          ****   for (i = nb; i < n; i++)
 328              		.loc 1 63 0
 329 0368 8B8534FF 		movl	-204(%rbp), %eax	# nb, tmp137
 329      FFFF
 330 036e 89852CFF 		movl	%eax, -212(%rbp)	# tmp137, i
 330      FFFF
 331 0374 EB5A     		jmp	.L16	#
 332              	.L17:
  64:ti.c          ****    s += a[i] * b[i];
 333              		.loc 1 64 0 discriminator 2
 334 0376 8B852CFF 		movl	-212(%rbp), %eax	# i, tmp138
 334      FFFF
 335 037c 4898     		cltq
 336 037e 488D1485 		leaq	0(,%rax,4), %rdx	#, D.4919
 336      00000000 
 337 0386 488B8518 		movq	-232(%rbp), %rax	# a, tmp139
 337      FFFFFF
 338 038d 4801D0   		addq	%rdx, %rax	# D.4919, D.4923
                        #####CS540 COMMENT Move the single precision scalar %rax points at into %xmm1
                        #####(this is one of the "remainder" values of a)
 339 0390 F30F1008 		movss	(%rax), %xmm1	# *_36, D.4921
 340 0394 8B852CFF 		movl	-212(%rbp), %eax	# i, tmp140
 340      FFFF
 341 039a 4898     		cltq
 342 039c 488D1485 		leaq	0(,%rax,4), %rdx	#, D.4919
 342      00000000 
 343 03a4 488B8510 		movq	-240(%rbp), %rax	# b, tmp141
 343      FFFFFF
 344 03ab 4801D0   		addq	%rdx, %rax	# D.4919, D.4923
                        
                        #####CS540 COMMENT Move the single precision scalar %rax points at into %xmm0
                        #####(this is one of the "remainder" values of b)
 345 03ae F30F1000 		movss	(%rax), %xmm0	# *_40, D.4921

                        #####CS540 COMMENT Multiply the two scalars loaded from a and b
 346 03b2 F30F59C1 		mulss	%xmm1, %xmm0	# D.4921, D.4921

                        #####CS540 COMMENT Move the value of the scalar accumulating variable s
                        #####into %xmm1
 347 03b6 F30F108D 		movss	-208(%rbp), %xmm1	# s, tmp143
 347      30FFFFFF 
                        #####CS540 COMMENT Add the product to the running sum, as scalars
 348 03be F30F58C1 		addss	%xmm1, %xmm0	# tmp143, tmp142
                        #####CS540 COMMENT Store the result of the addition back to memory, at s
 349 03c2 F30F1185 		movss	%xmm0, -208(%rbp)	# tmp142, s
 349      30FFFFFF 
  63:ti.c          ****   for (i = nb; i < n; i++)
 350              		.loc 1 63 0 discriminator 2
 351 03ca FF852CFF 		incl	-212(%rbp)	# i
 351      FFFF
 352              	.L16:
  63:ti.c          ****   for (i = nb; i < n; i++)
 353              		.loc 1 63 0 is_stmt 0 discriminator 1
 354 03d0 8B852CFF 		movl	-212(%rbp), %eax	# i, tmp144
 354      FFFF
 355 03d6 3B850CFF 		cmpl	-244(%rbp), %eax	# n, tmp144
 355      FFFF
 356 03dc 7C98     		jl	.L17	#,
  65:ti.c          ****   s = s + temp[0] + temp[1] + temp[2] + temp[3];
 357              		.loc 1 65 0 is_stmt 1
                        ####CS540 COMMENT In the following block, move each value of temp and s into
                        ####a register, and accumulate the sum of them all
                        #################################################################
 358 03de F30F1085 		movss	-176(%rbp), %xmm0	# temp, D.4921
 358      50FFFFFF 
 359 03e6 0F28C8   		movaps	%xmm0, %xmm1	# D.4921, D.4921
 360 03e9 F30F588D 		addss	-208(%rbp), %xmm1	# s, D.4921
 360      30FFFFFF 
 361 03f1 F30F1085 		movss	-172(%rbp), %xmm0	# temp, D.4921
 361      54FFFFFF 
 362 03f9 F30F58C8 		addss	%xmm0, %xmm1	# D.4921, D.4921
 363 03fd F30F1085 		movss	-168(%rbp), %xmm0	# temp, D.4921
 363      58FFFFFF 
 364 0405 F30F58C8 		addss	%xmm0, %xmm1	# D.4921, D.4921
 365 0409 F30F1085 		movss	-164(%rbp), %xmm0	# temp, D.4921
 365      5CFFFFFF 
 366 0411 F30F58C1 		addss	%xmm1, %xmm0	# D.4921, tmp145
 367 0415 F30F1185 		movss	%xmm0, -208(%rbp)	# tmp145, s
                        #Finish summing the variables####################################
 367      30FFFFFF 
  66:ti.c          ****   printf("s = %g\n",s);
 368              		.loc 1 66 0
                        #####CS540 COMMENT Convert the single scalar s to a double and store in %xmm0,
                        #####for the call to printf
 369 041d F30F5A85 		cvtss2sd	-208(%rbp), %xmm0	# s, D.4922
 369      30FFFFFF 
 370 0425 BF000000 		movl	$.LC1, %edi	#,
 370      00
 371 042a B8010000 		movl	$1, %eax	#,
 371      00
 372 042f E8000000 		call	printf	#
 372      00
  67:ti.c          ****   return s;
 373              		.loc 1 67 0
 374 0434 8B8530FF 		movl	-208(%rbp), %eax	# s, D.4921
 374      FFFF
  68:ti.c          ****  }
 375              		.loc 1 68 0
 376 043a 898508FF 		movl	%eax, -248(%rbp)	# <retval>, %sfp
 376      FFFF
                        #####CS540 COMMENT Move the return value (s) into the return register, %xmm0
 377 0440 F30F1085 		movss	-248(%rbp), %xmm0	# %sfp,
 377      08FFFFFF 
 378 0448 C9       		leave
 379              		.cfi_def_cfa 7, 8
 380 0449 C3       		ret
 381              		.cfi_endproc
 382              	.LFE498:
 384              		.globl	vinner2
 386              	vinner2:
 387              	.LFB499:
  69:ti.c          **** 
  70:ti.c          **** float vinner2(float a[], float b[], int n)
  71:ti.c          ****  {
 388              		.loc 1 71 0
 389              		.cfi_startproc
 390 044a 55       		pushq	%rbp	#
 391              		.cfi_def_cfa_offset 16
 392              		.cfi_offset 6, -16
 393 044b 4889E5   		movq	%rsp, %rbp	#,
 394              		.cfi_def_cfa_register 6
 395 044e 4881ECB0 		subq	$176, %rsp	#,
 395      000000
 396 0455 4889BDE8 		movq	%rdi, -280(%rbp)	# a, a
 396      FEFFFF
 397 045c 4889B5E0 		movq	%rsi, -288(%rbp)	# b, b
 397      FEFFFF
 398 0463 8995DCFE 		movl	%edx, -292(%rbp)	# n, n
 398      FFFF
  72:ti.c          ****   int i,nb;
  73:ti.c          ****   float s;
  74:ti.c          ****   float temp[4] __attribute__((aligned(16)));
  75:ti.c          ****   __m128 v1, v2, acc;
  76:ti.c          **** 
  77:ti.c          ****   nb = n - (n % 4);
 399              		.loc 1 77 0
 400 0469 8B85DCFE 		movl	-292(%rbp), %eax	# n, tmp94
 400      FFFF
 401 046f 99       		cltd
 402 0470 C1EA1E   		shrl	$30, %edx	#, tmp96
 403 0473 01D0     		addl	%edx, %eax	# tmp96, tmp97
 404 0475 83E003   		andl	$3, %eax	#, tmp98
 405 0478 29D0     		subl	%edx, %eax	# tmp96, tmp99
 406 047a 8B95DCFE 		movl	-292(%rbp), %edx	# n, tmp103
 406      FFFF
 407 0480 29C2     		subl	%eax, %edx	# D.4926, tmp102
 408 0482 89D0     		movl	%edx, %eax	# tmp102, tmp102
 409 0484 8985F4FE 		movl	%eax, -268(%rbp)	# tmp102, nb
 409      FFFF
                        #####CS540 COMMENT In the following block, move acc into two registers
                        #####(storing it into two seperate memory locations at once) and then
                        #####xor the registers as packed single-precision values
                        #################################################################
 410 048a 0F288520 		movaps	-224(%rbp), %xmm0	# acc, tmp104
 410      FFFFFF
 411 0491 0F298550 		movaps	%xmm0, -176(%rbp)	# tmp104, __A
 411      FFFFFF
 412 0498 0F288520 		movaps	-224(%rbp), %xmm0	# acc, tmp105
 412      FFFFFF
 413 049f 0F298560 		movaps	%xmm0, -160(%rbp)	# tmp105, __B
 413      FFFFFF
 414              	.LBB42:
 415              	.LBB43:
 231:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 416              		.loc 2 231 0
 417 04a6 0F288560 		movaps	-160(%rbp), %xmm0	# __B, tmp106
 417      FFFFFF
 418 04ad 0F288D50 		movaps	-176(%rbp), %xmm1	# __A, tmp107
 418      FFFFFF
 419 04b4 0F57C1   		xorps	%xmm1, %xmm0	# tmp107, D.4931
                        #Finish xor'ing acc##############################################
 420              	.LBE43:
 421              	.LBE42:
  78:ti.c          ****   acc = _mm_xor_ps(acc,acc);
 422              		.loc 1 78 0
                        #####CS540 Store the xor'd value back to acc in memory
 423 04b7 0F298520 		movaps	%xmm0, -224(%rbp)	# D.4873, acc
 423      FFFFFF
  79:ti.c          ****   for (i = 0; i < nb; i += 4)
 424              		.loc 1 79 0
 425 04be C785F0FE 		movl	$0, -272(%rbp)	#, i
 425      FFFF0000 
 425      0000
 426 04c8 E9C10000 		jmp	.L21	#
 426      00
 427              	.L26:
  80:ti.c          ****    {
  81:ti.c          ****     v1 = _mm_load_ps(&a[i]);
 428              		.loc 1 81 0 discriminator 2
 429 04cd 8B85F0FE 		movl	-272(%rbp), %eax	# i, tmp108
 429      FFFF
 430 04d3 4898     		cltq
 431 04d5 488D1485 		leaq	0(,%rax,4), %rdx	#, D.4927
 431      00000000 
 432 04dd 488B85E8 		movq	-280(%rbp), %rax	# a, tmp109
 432      FEFFFF
 433 04e4 4801D0   		addq	%rdx, %rax	# D.4927, D.4928
 434 04e7 488985F8 		movq	%rax, -264(%rbp)	# D.4928, __P
 434      FEFFFF
 435              	.LBB44:
 436              	.LBB45:
 898:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 437              		.loc 2 898 0 discriminator 2
 438 04ee 488B85F8 		movq	-264(%rbp), %rax	# __P, tmp110
 438      FEFFFF
                        #####CS540 COMMENT Retrieve the next four values of a and place into %xmm0
 439 04f5 0F2800   		movaps	(%rax), %xmm0	# MEM[(__v4sf *)__P_44], D.4931
 440              	.LBE45:
 441              	.LBE44:
 442              		.loc 1 81 0 discriminator 2
                        ######CS540 COMMENT Store the loaded values of a back to v1 as four packed
                        ######singles
 443 04f8 0F298530 		movaps	%xmm0, -208(%rbp)	# D.4877, v1
 443      FFFFFF
  82:ti.c          ****     v2 = _mm_load_ps(&b[i]);
 444              		.loc 1 82 0 discriminator 2
 445 04ff 8B85F0FE 		movl	-272(%rbp), %eax	# i, tmp111
 445      FFFF
 446 0505 4898     		cltq
 447 0507 488D1485 		leaq	0(,%rax,4), %rdx	#, D.4927
 447      00000000 
 448 050f 488B85E0 		movq	-288(%rbp), %rax	# b, tmp112
 448      FEFFFF
 449 0516 4801D0   		addq	%rdx, %rax	# D.4927, D.4928
 450 0519 48898500 		movq	%rax, -256(%rbp)	# D.4928, __P
 450      FFFFFF
 451              	.LBB46:
 452              	.LBB47:
 898:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 453              		.loc 2 898 0 discriminator 2
 454 0520 488B8500 		movq	-256(%rbp), %rax	# __P, tmp113
 454      FFFFFF
                        #####CS540 COMMENT Retrieve the next four values of b and place into %xmm0
 455 0527 0F2800   		movaps	(%rax), %xmm0	# MEM[(__v4sf *)__P_46], D.4931
 456              	.LBE47:
 457              	.LBE46:
 458              		.loc 1 82 0 discriminator 2
                        ######CS540 COMMENT Store the loaded values of b back to v2 as four packed
                        ######singles
 459 052a 0F298540 		movaps	%xmm0, -192(%rbp)	# D.4881, v2
 459      FFFFFF
                        ######CS540 COMMENT In the following block move the four values of v1 to an
                        ######SSE register, then back to memory, then do the same for v2
                        #################################################################
 460 0531 0F288530 		movaps	-208(%rbp), %xmm0	# v1, tmp114
 460      FFFFFF
 461 0538 0F298570 		movaps	%xmm0, -144(%rbp)	# tmp114, __A
 461      FFFFFF
 462 053f 0F288540 		movaps	-192(%rbp), %xmm0	# v2, tmp115
 462      FFFFFF
 463 0546 0F294580 		movaps	%xmm0, -128(%rbp)	# tmp115, __B
                        #End block#######################################################
 464              	.LBB48:
 465              	.LBB49:
 169:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 466              		.loc 2 169 0 discriminator 2
                        #####CS540 COMMENT In this block, move v2 (which has values of b) into %xmm0
                        #####and v1 (which has values of a) into xmm1, then multiple them and store
                        #####the results back to v2
                        #################################################################
 467 054a 0F284580 		movaps	-128(%rbp), %xmm0	# __B, tmp116
 468 054e 0F288D70 		movaps	-144(%rbp), %xmm1	# __A, tmp117
 468      FFFFFF
 469 0555 0F59C1   		mulps	%xmm1, %xmm0	# tmp117, D.4931
 470              	.LBE49:
 471              	.LBE48:
  83:ti.c          ****     v2 = _mm_mul_ps(v1,v2);
 472              		.loc 1 83 0 discriminator 2
 473 0558 0F298540 		movaps	%xmm0, -192(%rbp)	# D.4886, v2
                        #End block#######################################################
 473      FFFFFF
                        #####CS540 COMMENT In this block, move acc and v2 into registers, also moving
                        #####them back into memory in the meantime, then add the results and store
                        #####them back to acc
                        #################################################################
 474 055f 0F288520 		movaps	-224(%rbp), %xmm0	# acc, tmp118
 474      FFFFFF
 475 0566 0F294590 		movaps	%xmm0, -112(%rbp)	# tmp118, __A
 476 056a 0F288540 		movaps	-192(%rbp), %xmm0	# v2, tmp119
 476      FFFFFF
 477 0571 0F2945A0 		movaps	%xmm0, -96(%rbp)	# tmp119, __B
 478              	.LBB50:
 479              	.LBB51:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 480              		.loc 2 157 0 discriminator 2
                        #####Load the values of v2, then the values of acc
 481 0575 0F2845A0 		movaps	-96(%rbp), %xmm0	# __B, tmp120
 482 0579 0F284D90 		movaps	-112(%rbp), %xmm1	# __A, tmp121
 483 057d 0F58C1   		addps	%xmm1, %xmm0	# tmp121, D.4931
 484              	.LBE51:
 485              	.LBE50:
  84:ti.c          ****     acc = _mm_add_ps(acc,v2);
 486              		.loc 1 84 0 discriminator 2
                        #####Store acc
 487 0580 0F298520 		movaps	%xmm0, -224(%rbp)	# D.4891, acc
                        #End block#######################################################
 487      FFFFFF
  79:ti.c          ****    {
 488              		.loc 1 79 0 discriminator 2
 489 0587 8385F0FE 		addl	$4, -272(%rbp)	#, i
 489      FFFF04
 490              	.L21:
  79:ti.c          ****    {
 491              		.loc 1 79 0 is_stmt 0 discriminator 1
 492 058e 8B85F0FE 		movl	-272(%rbp), %eax	# i, tmp122
 492      FFFF
 493 0594 3B85F4FE 		cmpl	-268(%rbp), %eax	# nb, tmp122
 493      FFFF
 494 059a 0F8C2DFF 		jl	.L26	#,
 494      FFFF
  85:ti.c          ****    }
  86:ti.c          ****   v1 = _mm_shuffle_ps(acc,acc,_MM_SHUFFLE(1,0,3,2));
 495              		.loc 1 86 0 is_stmt 1
                        #####CS540 COMMENT Move acc into both %xmm0 and %xmm1
 496 05a0 0F288520 		movaps	-224(%rbp), %xmm0	# acc, tmp124
 496      FFFFFF
 497 05a7 0F288D20 		movaps	-224(%rbp), %xmm1	# acc, tmp125
 497      FFFFFF
                        ######CS540 COMMENT $78 is the mask for the _MM_SHUFFLE(1, 0, 3, 2)
                        ######The instruction then means take the second lowest address scalar
                        ######from %xmm0, then take the lowest. Then take the highest address scalar
                        ######from %xmm1, then take the second highest. Store the result in %xmm0
 498 05ae 0FC6C14E 		shufps	$78, %xmm1, %xmm0	#, tmp125, tmp123
                        #####Store that result back to v1
 499 05b2 0F298530 		movaps	%xmm0, -208(%rbp)	# tmp123, v1
 499      FFFFFF
                        #####CS540 COMMENT Reload the 4 values of v1 from memory as packed singles
 500 05b9 0F288530 		movaps	-208(%rbp), %xmm0	# v1, tmp126
 500      FFFFFF
                        ######CS540 COMMENT Store the 4 packed values of %xmm0 (which are the values
                        ######of v1) back to memory
 501 05c0 0F2945B0 		movaps	%xmm0, -80(%rbp)	# tmp126, __A
                        ######CS540 COMMENT Get the value of acc from memory
 502 05c4 0F288520 		movaps	-224(%rbp), %xmm0	# acc, tmp127
 502      FFFFFF
                        #####Store the value of acc back to memory
 503 05cb 0F2945C0 		movaps	%xmm0, -64(%rbp)	# tmp127, __B
 504              	.LBB52:
 505              	.LBB53:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 506              		.loc 2 157 0
                        #####CS540 COMMENT Load then add the values of v1 and acc over the next 3
                        #####instructions
 507 05cf 0F2845C0 		movaps	-64(%rbp), %xmm0	# __B, tmp128
 508 05d3 0F284DB0 		movaps	-80(%rbp), %xmm1	# __A, tmp129
 509 05d7 0F58C1   		addps	%xmm1, %xmm0	# tmp129, D.4931
 510              	.LBE53:
 511              	.LBE52:
  87:ti.c          ****   v1 = _mm_add_ps(v1,acc);
 512              		.loc 1 87 0
                        #####CS540 COMMENT Store the result of the addition back to v1
 513 05da 0F298530 		movaps	%xmm0, -208(%rbp)	# D.4896, v1
 513      FFFFFF
  88:ti.c          ****   v2 = _mm_shuffle_ps(v1,v1,_MM_SHUFFLE(2,3,0,1));
 514              		.loc 1 88 0
                        #####CS540 COMMENT Load v1 into %xmm0 and %xmm1
 515 05e1 0F288530 		movaps	-208(%rbp), %xmm0	# v1, tmp131
 515      FFFFFF
 516 05e8 0F288D30 		movaps	-208(%rbp), %xmm1	# v1, tmp132
 516      FFFFFF
                        #####CS540 COMMENT 177 is the mask for _MM_SHUFFLE(2, 3, 0, 1). The
                        #####instruction then takes the second highest and highest addressed scalar of                        #####%xmm0 and the lowest and second lowest addresses scalars of %xmm1.
                        #####Store the result in %xmm0
 517 05ef 0FC6C1B1 		shufps	$177, %xmm1, %xmm0	#, tmp132, tmp130
                        #####Store the result of the shuffle back to v2
 518 05f3 0F298540 		movaps	%xmm0, -192(%rbp)	# tmp130, v2
 518      FFFFFF
                        #####CS540 COMMENT Over the next block, load four values of v2 and v1 and then
                        #####add them as packed singles, storing the result back to v2
                        #################################################################
 519 05fa 0F288540 		movaps	-192(%rbp), %xmm0	# v2, tmp133
 519      FFFFFF
 520 0601 0F2945D0 		movaps	%xmm0, -48(%rbp)	# tmp133, __A
 521 0605 0F288530 		movaps	-208(%rbp), %xmm0	# v1, tmp134
 521      FFFFFF
 522 060c 0F2945E0 		movaps	%xmm0, -32(%rbp)	# tmp134, __B
 523              	.LBB54:
 524              	.LBB55:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 525              		.loc 2 157 0
 526 0610 0F2845E0 		movaps	-32(%rbp), %xmm0	# __B, tmp135
 527 0614 0F284DD0 		movaps	-48(%rbp), %xmm1	# __A, tmp136
 528 0618 0F58C1   		addps	%xmm1, %xmm0	# tmp136, D.4931
 529              	.LBE55:
 530              	.LBE54:
  89:ti.c          ****   v2 = _mm_add_ps(v2,v1);
 531              		.loc 1 89 0
 532 061b 0F298540 		movaps	%xmm0, -192(%rbp)	# D.4901, v2
                        #End block#######################################################
 532      FFFFFF
 533 0622 488D8510 		leaq	-240(%rbp), %rax	#, tmp137
 533      FFFFFF
 534 0629 48898508 		movq	%rax, -248(%rbp)	# tmp137, __P
 534      FFFFFF
                        #####CS540 COMMENT Move the value of v2 to %xmm0
 535 0630 0F288540 		movaps	-192(%rbp), %xmm0	# v2, tmp138
 535      FFFFFF
                        #####CS540 COMMENT Copy the value of v2 again
 536 0637 0F2945F0 		movaps	%xmm0, -16(%rbp)	# tmp138, __A
 537              	.LBB56:
 538              	.LBB57:
 934:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 539              		.loc 2 934 0
                        #####CS540 COMMENT Move the value of v2 again
 540 063b 0F2845F0 		movaps	-16(%rbp), %xmm0	# __A, tmp139
 541 063f 0F28C0   		movaps	%xmm0, %xmm0	#, D.4930
 542 0642 488B8508 		movq	-248(%rbp), %rax	# __P, tmp140
 542      FFFFFF
                        #####CS540 Move the single scalar value of %xmm0 to the memory location
                        #####at which %rax points
 543 0649 F30F1100 		movss	%xmm0, (%rax)	# D.4930, *__P_60
 544              	.LBE57:
 545              	.LBE56:
  90:ti.c          ****   _mm_store_ss(&s,v2);
  91:ti.c          ****   for (i = nb; i < n; i++)
 546              		.loc 1 91 0
 547 064d 8B85F4FE 		movl	-268(%rbp), %eax	# nb, tmp141
 547      FFFF
 548 0653 8985F0FE 		movl	%eax, -272(%rbp)	# tmp141, i
 548      FFFF
 549 0659 EB5A     		jmp	.L29	#
 550              	.L30:
  92:ti.c          ****    s += a[i] * b[i];
 551              		.loc 1 92 0 discriminator 2
 552 065b 8B85F0FE 		movl	-272(%rbp), %eax	# i, tmp142
 552      FFFF
 553 0661 4898     		cltq
 554 0663 488D1485 		leaq	0(,%rax,4), %rdx	#, D.4927
 554      00000000 
 555 066b 488B85E8 		movq	-280(%rbp), %rax	# a, tmp143
 555      FEFFFF
 556 0672 4801D0   		addq	%rdx, %rax	# D.4927, D.4929
                        #####CS540 COMMENT Load the current single scalar of a to %xmm1
 557 0675 F30F1008 		movss	(%rax), %xmm1	# *_30, D.4930
 558 0679 8B85F0FE 		movl	-272(%rbp), %eax	# i, tmp144
 558      FFFF
 559 067f 4898     		cltq
 560 0681 488D1485 		leaq	0(,%rax,4), %rdx	#, D.4927
 560      00000000 
 561 0689 488B85E0 		movq	-288(%rbp), %rax	# b, tmp145
 561      FEFFFF
 562 0690 4801D0   		addq	%rdx, %rax	# D.4927, D.4929
                        #####CS540 COMMENT Load the current single scalar of b to %xmm0
 563 0693 F30F1000 		movss	(%rax), %xmm0	# *_34, D.4930
                        #####CS540 COMMENT Multiply the single scalars in %xmm0 and %xmm1 (the current
                        #####elemetns of a and b)
 564 0697 F30F59C8 		mulss	%xmm0, %xmm1	# D.4930, D.4930
                        #####CS540 COMMENT Load the single scalar s, a running sum
 565 069b F30F1085 		movss	-240(%rbp), %xmm0	# s, s.0
 565      10FFFFFF 
                        #####CS540 COMMENT add the product to the running sum held in %xmm0
 566 06a3 F30F58C1 		addss	%xmm1, %xmm0	# D.4930, s.1
                        #####CS540 COMMENT store the new sum back to the running sum, s
 567 06a7 F30F1185 		movss	%xmm0, -240(%rbp)	# s.1, s
 567      10FFFFFF 
  91:ti.c          ****    s += a[i] * b[i];
 568              		.loc 1 91 0 discriminator 2
 569 06af FF85F0FE 		incl	-272(%rbp)	# i
 569      FFFF
 570              	.L29:
  91:ti.c          ****    s += a[i] * b[i];
 571              		.loc 1 91 0 is_stmt 0 discriminator 1
 572 06b5 8B85F0FE 		movl	-272(%rbp), %eax	# i, tmp146
 572      FFFF
 573 06bb 3B85DCFE 		cmpl	-292(%rbp), %eax	# n, tmp146
 573      FFFF
 574 06c1 7C98     		jl	.L30	#,
  93:ti.c          ****   return s;
 575              		.loc 1 93 0 is_stmt 1
 576 06c3 8B8510FF 		movl	-240(%rbp), %eax	# s, D.4930
 576      FFFF
  94:ti.c          ****  }
 577              		.loc 1 94 0
 578 06c9 8985D8FE 		movl	%eax, -296(%rbp)	# <retval>, %sfp
 578      FFFF
                        #####CS540 COMMENT Move the result of the computation (s), the return value,
                        #####to the return register, %xmm0
 579 06cf F30F1085 		movss	-296(%rbp), %xmm0	# %sfp,
 579      D8FEFFFF 
 580 06d7 C9       		leave
 581              		.cfi_def_cfa 7, 8
 582 06d8 C3       		ret
 583              		.cfi_endproc
 584              	.LFE499:
 586              		.section	.rodata
 587              		.align 4
 588              	.LC0:
 589 0034 0000803F 		.long	1065353216
 590              		.align 4
 591              	.LC4:
 592 0038 00000000 		.long	0
 593              		.text
 594              	.Letext0:
