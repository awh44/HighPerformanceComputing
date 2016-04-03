   1              		.file	"ti.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu ti.c -mtune=opteron-sse3
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
  51              		.p2align 4,,15
  52              		.globl	inner
  54              	inner:
  55              	.LFB552:
  56              		.file 1 "ti.c"
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
  12:ti.c          **** 
  13:ti.c          ****   float __attribute__((aligned (16))) a[SIZE], b[SIZE];
  14:ti.c          ****   float s0, s1, s2;
  15:ti.c          ****   int i,n;
  16:ti.c          **** 
  17:ti.c          ****   for (i = 0; i < SIZE; i++)
  18:ti.c          ****    {
  19:ti.c          ****     a[i] = i;
  20:ti.c          ****     b[i] = 1;
  21:ti.c          ****    }
  22:ti.c          **** 
  23:ti.c          ****   s0 = inner(a,b,n);
  24:ti.c          ****   printf("s = %g\n",s0);
  25:ti.c          **** 
  26:ti.c          ****   s1 = vinner1(a,b,n);
  27:ti.c          ****   printf("vector s = %g\n",s1);
  28:ti.c          **** 
  29:ti.c          ****   s2 = vinner2(a,b,n);
  30:ti.c          ****   printf("vector2 s = %g\n",s2);
  31:ti.c          ****  }
  32:ti.c          **** 
  33:ti.c          **** float inner(float a[], float b[], int n)
  34:ti.c          ****  {
  57              		.loc 1 34 0
  58              		.cfi_startproc
  59              	.LVL0:
  35:ti.c          ****   int i;
  36:ti.c          ****   float s;
  37:ti.c          **** 
  38:ti.c          ****   s = 0.0;
  60              		.loc 1 38 0
  61 0000 0F57C0   		xorps	%xmm0, %xmm0	# s
  34:ti.c          ****   int i;
  62              		.loc 1 34 0
  63 0003 31C0     		xorl	%eax, %eax	# ivtmp.23
  64              	.LVL1:
  65              		.p2align 4,,7
  66 0005 0F1F00   		.p2align 3
  67              	.L3:
  39:ti.c          ****   for (i = 0; i < SIZE; i++)
  40:ti.c          ****    s += a[i] * b[i];
  68              		.loc 1 40 0 discriminator 2
  69 0008 F30F100C 		movss	(%rdi,%rax), %xmm1	# MEM[base: a_5(D), index: ivtmp.23_23, offset: 0B], D.5326
  69      07
  70 000d F30F590C 		mulss	(%rsi,%rax), %xmm1	# MEM[base: b_9(D), index: ivtmp.23_23, offset: 0B], D.5326
  70      06
  71 0012 4883C004 		addq	$4, %rax	#, ivtmp.23
  39:ti.c          ****   for (i = 0; i < SIZE; i++)
  72              		.loc 1 39 0 discriminator 2
  73 0016 483DA00F 		cmpq	$4000, %rax	#, ivtmp.23
  73      0000
  74              		.loc 1 40 0 discriminator 2
  75 001c F30F58C1 		addss	%xmm1, %xmm0	# D.5326, s
  76              	.LVL2:
  39:ti.c          ****   for (i = 0; i < SIZE; i++)
  77              		.loc 1 39 0 discriminator 2
  78 0020 75E6     		jne	.L3	#,
  41:ti.c          ****   return s;
  42:ti.c          ****  }
  79              		.loc 1 42 0
  80 0022 F3C3     		rep ret
  81              		.cfi_endproc
  82              	.LFE552:
  84              		.section	.rodata.str1.1,"aMS",@progbits,1
  85              	.LC1:
  86 0000 25672025 		.string	"%g %g %g %g\n"
  86      67202567 
  86      2025670A 
  86      00
  87              	.LC2:
  88 000d 73203D20 		.string	"s = %g\n"
  88      25670A00 
  89              		.text
  90 0024 6666662E 		.p2align 4,,15
  90      0F1F8400 
  90      00000000 
  91              		.globl	vinner
  93              	vinner:
  94              	.LFB553:
  43:ti.c          **** 
  44:ti.c          **** float vinner(float a[], float b[], int n)
  45:ti.c          ****  {
  95              		.loc 1 45 0
  96              		.cfi_startproc
  97              	.LVL3:
  98 0030 4155     		pushq	%r13	#
  99              		.cfi_def_cfa_offset 16
 100              		.cfi_offset 13, -16
 101              	.LBB46:
 102              	.LBB47:
 103              		.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h"
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
 104              		.loc 2 231 0
 105 0032 0F57C9   		xorps	%xmm1, %xmm1	# acc
 106              	.LBE47:
 107              	.LBE46:
 108              		.loc 1 45 0
 109 0035 4154     		pushq	%r12	#
 110              		.cfi_def_cfa_offset 24
 111              		.cfi_offset 12, -24
 112 0037 4189D4   		movl	%edx, %r12d	# n, n
  46:ti.c          ****   int i,nb;
  47:ti.c          ****   float s;
  48:ti.c          ****   float temp[4] __attribute__((aligned(16)));
  49:ti.c          ****   __m128 v1, v2, acc;
  50:ti.c          **** 
  51:ti.c          ****   nb = n - (n % 4);
 113              		.loc 1 51 0
 114 003a C1FA1F   		sarl	$31, %edx	#, tmp123
 115              	.LVL4:
 116 003d C1EA1E   		shrl	$30, %edx	#, tmp123
 117 0040 4589E5   		movl	%r12d, %r13d	# n, i
 118 0043 418D0414 		leal	(%r12,%rdx), %eax	#, D.5343
  45:ti.c          ****   int i,nb;
 119              		.loc 1 45 0
 120 0047 55       		pushq	%rbp	#
 121              		.cfi_def_cfa_offset 32
 122              		.cfi_offset 6, -32
 123 0048 4889FD   		movq	%rdi, %rbp	# a, a
 124              		.loc 1 51 0
 125 004b 83E003   		andl	$3, %eax	#, D.5343
  45:ti.c          ****   int i,nb;
 126              		.loc 1 45 0
 127 004e 53       		pushq	%rbx	#
 128              		.cfi_def_cfa_offset 40
 129              		.cfi_offset 3, -40
 130 004f 4889F3   		movq	%rsi, %rbx	# b, b
 131              		.loc 1 51 0
 132 0052 29D0     		subl	%edx, %eax	# tmp123, D.5343
 133 0054 4129C5   		subl	%eax, %r13d	# D.5343, i
 134              	.LVL5:
  45:ti.c          ****   int i,nb;
 135              		.loc 1 45 0
 136 0057 4883EC28 		subq	$40, %rsp	#,
 137              		.cfi_def_cfa_offset 80
  52:ti.c          ****   acc = _mm_xor_ps(acc,acc);
  53:ti.c          ****   for (i = 0; i < nb; i += 4)
 138              		.loc 1 53 0
 139 005b 4585ED   		testl	%r13d, %r13d	# i
 140 005e 7E25     		jle	.L6	#,
 141 0060 418D4DFF 		leal	-1(%r13), %ecx	#, D.5346
 142 0064 31C0     		xorl	%eax, %eax	# ivtmp.40
 143 0066 C1E902   		shrl	$2, %ecx	#,
 144 0069 48FFC1   		incq	%rcx	# D.5347
 145 006c 48C1E104 		salq	$4, %rcx	#, D.5347
 146              	.LVL6:
 147              		.p2align 4,,7
 148              		.p2align 3
 149              	.L7:
 150              	.LBB48:
 151              	.LBB49:
 169:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 152              		.loc 2 169 0 discriminator 2
 153 0070 0F284405 		movaps	0(%rbp,%rax), %xmm0	# MEM[base: a_11(D), index: ivtmp.40_58, offset: 0B], tmp132
 153      00
 154 0075 0F590403 		mulps	(%rbx,%rax), %xmm0	# MEM[base: b_14(D), index: ivtmp.40_58, offset: 0B], tmp132
 155              	.LVL7:
 156 0079 4883C010 		addq	$16, %rax	#, ivtmp.40
 157              	.LVL8:
 158              	.LBE49:
 159              	.LBE48:
 160              		.loc 1 53 0 discriminator 2
 161 007d 4839C8   		cmpq	%rcx, %rax	# D.5347, ivtmp.40
 162              	.LBB50:
 163              	.LBB51:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 164              		.loc 2 157 0 discriminator 2
 165 0080 0F58C8   		addps	%xmm0, %xmm1	# tmp132, acc
 166              	.LVL9:
 167              	.LBE51:
 168              	.LBE50:
 169              		.loc 1 53 0 discriminator 2
 170 0083 75EB     		jne	.L7	#,
 171              	.LVL10:
 172              	.L6:
 173              	.LBB52:
 174              	.LBB53:
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
 175              		.loc 2 947 0
 176 0085 0F290C24 		movaps	%xmm1, (%rsp)	# acc, %sfp
 177              	.LBE53:
 178              	.LBE52:
  54:ti.c          ****    {
  55:ti.c          ****     v1 = _mm_load_ps(&a[i]);
  56:ti.c          ****     v2 = _mm_load_ps(&b[i]);
  57:ti.c          ****     v2 = _mm_mul_ps(v1,v2);
  58:ti.c          ****     acc = _mm_add_ps(acc,v2);
  59:ti.c          ****    }
  60:ti.c          ****   _mm_store_ps(temp,acc);
  61:ti.c          ****   printf("%g %g %g %g\n",temp[0],temp[1],temp[2],temp[3]);
 179              		.loc 1 61 0
 180 0089 488B4424 		movq	8(%rsp), %rax	# %sfp, tmp136
 180      08
 181 008e 4889C6   		movq	%rax, %rsi	# tmp136, tmp163
 182 0091 48C1EE20 		shrq	$32, %rsi	#, tmp163
 183 0095 89742414 		movl	%esi, 20(%rsp)	# tmp138, %sfp
 184              	.LBB54:
 185              	.LBB55:
 186              		.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
   1:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** /* Checking macros for stdio functions.
   2:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    Copyright (C) 2004-2014 Free Software Foundation, Inc.
   3:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    This file is part of the GNU C Library.
   4:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
   5:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    The GNU C Library is free software; you can redistribute it and/or
   6:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    modify it under the terms of the GNU Lesser General Public
   7:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    License as published by the Free Software Foundation; either
   8:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    version 2.1 of the License, or (at your option) any later version.
   9:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  10:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    The GNU C Library is distributed in the hope that it will be useful,
  11:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    but WITHOUT ANY WARRANTY; without even the implied warranty of
  12:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  13:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    Lesser General Public License for more details.
  14:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  15:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    You should have received a copy of the GNU Lesser General Public
  16:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    License along with the GNU C Library; if not, see
  17:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****    <http://www.gnu.org/licenses/>.  */
  18:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  19:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #ifndef _STDIO_H
  20:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # error "Never include <bits/stdio2.h> directly; use <stdio.h> instead."
  21:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #endif
  22:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  23:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __sprintf_chk (char *__restrict __s, int __flag, size_t __slen,
  24:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			  const char *__restrict __format, ...) __THROW;
  25:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __vsprintf_chk (char *__restrict __s, int __flag, size_t __slen,
  26:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   const char *__restrict __format,
  27:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   _G_va_list __ap) __THROW;
  28:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  29:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #ifdef __va_arg_pack
  30:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
  31:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __NTH (sprintf (char *__restrict __s, const char *__restrict __fmt, ...))
  32:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
  33:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
  34:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 				  __bos (__s), __fmt, __va_arg_pack ());
  35:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** }
  36:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #elif !defined __cplusplus
  37:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # define sprintf(str, ...) \
  38:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   __builtin___sprintf_chk (str, __USE_FORTIFY_LEVEL - 1, __bos (str), \
  39:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   __VA_ARGS__)
  40:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #endif
  41:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  42:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
  43:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __NTH (vsprintf (char *__restrict __s, const char *__restrict __fmt,
  44:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 		 _G_va_list __ap))
  45:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
  46:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __builtin___vsprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
  47:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 				   __bos (__s), __fmt, __ap);
  48:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** }
  49:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  50:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #if defined __USE_BSD || defined __USE_ISOC99 || defined __USE_UNIX98
  51:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  52:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __snprintf_chk (char *__restrict __s, size_t __n, int __flag,
  53:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   size_t __slen, const char *__restrict __format,
  54:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   ...) __THROW;
  55:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __vsnprintf_chk (char *__restrict __s, size_t __n, int __flag,
  56:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			    size_t __slen, const char *__restrict __format,
  57:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			    _G_va_list __ap) __THROW;
  58:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  59:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # ifdef __va_arg_pack
  60:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
  61:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __NTH (snprintf (char *__restrict __s, size_t __n,
  62:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 		 const char *__restrict __fmt, ...))
  63:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
  64:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  65:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 				   __bos (__s), __fmt, __va_arg_pack ());
  66:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** }
  67:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # elif !defined __cplusplus
  68:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #  define snprintf(str, len, ...) \
  69:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   __builtin___snprintf_chk (str, len, __USE_FORTIFY_LEVEL - 1, __bos (str), \
  70:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			    __VA_ARGS__)
  71:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # endif
  72:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  73:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
  74:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __NTH (vsnprintf (char *__restrict __s, size_t __n,
  75:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 		  const char *__restrict __fmt, _G_va_list __ap))
  76:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
  77:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __builtin___vsnprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  78:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 				    __bos (__s), __fmt, __ap);
  79:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** }
  80:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  81:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #endif
  82:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  83:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** #if __USE_FORTIFY_LEVEL > 1
  84:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  85:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __fprintf_chk (FILE *__restrict __stream, int __flag,
  86:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			  const char *__restrict __format, ...);
  87:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __printf_chk (int __flag, const char *__restrict __format, ...);
  88:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __vfprintf_chk (FILE *__restrict __stream, int __flag,
  89:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			   const char *__restrict __format, _G_va_list __ap);
  90:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** extern int __vprintf_chk (int __flag, const char *__restrict __format,
  91:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			  _G_va_list __ap);
  92:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
  93:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** # ifdef __va_arg_pack
  94:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
  95:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** fprintf (FILE *__restrict __stream, const char *__restrict __fmt, ...)
  96:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
  97:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  98:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 			__va_arg_pack ());
  99:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** }
 100:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** 
 101:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** __fortify_function int
 102:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** printf (const char *__restrict __fmt, ...)
 103:/usr/include/x86_64-linux-gnu/bits/stdio2.h **** {
 104:/usr/include/x86_64-linux-gnu/bits/stdio2.h ****   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
 187              		.loc 3 104 0
 188 0099 BE000000 		movl	$.LC1, %esi	#,
 188      00
 189              	.LBE55:
 190              	.LBE54:
 191              		.loc 1 61 0
 192 009e F30F1064 		movss	20(%rsp), %xmm4	# %sfp, D.5344
 192      2414
 193 00a4 89442414 		movl	%eax, 20(%rsp)	# tmp140, %sfp
 194 00a8 488B0424 		movq	(%rsp), %rax	# %sfp, temp
 195              	.LVL11:
 196 00ac F30F106C 		movss	20(%rsp), %xmm5	# %sfp, D.5344
 196      2414
 197              	.LBB62:
 198              	.LBB56:
 199              		.loc 3 104 0
 200 00b2 F30F5ADC 		cvtss2sd	%xmm4, %xmm3	# D.5344,
 201 00b6 F30F5AD5 		cvtss2sd	%xmm5, %xmm2	# D.5344,
 202              	.LBE56:
 203              	.LBE62:
 204              		.loc 1 61 0
 205 00ba 4889C7   		movq	%rax, %rdi	# temp, tmp166
 206              	.LVL12:
 207              	.LBB63:
 208              	.LBB57:
 209              		.loc 3 104 0
 210 00bd F30F1164 		movss	%xmm4, 24(%rsp)	# D.5344, %sfp
 210      2418
 211              	.LBE57:
 212              	.LBE63:
 213              		.loc 1 61 0
 214 00c3 48C1EF20 		shrq	$32, %rdi	#, tmp166
 215 00c7 893C24   		movl	%edi, (%rsp)	# tmp143, %sfp
 216              	.LBB64:
 217              	.LBB58:
 218              		.loc 3 104 0
 219 00ca BF010000 		movl	$1, %edi	#,
 219      00
 220              	.LBE58:
 221              	.LBE64:
 222              		.loc 1 61 0
 223 00cf F30F1034 		movss	(%rsp), %xmm6	# %sfp, D.5344
 223      24
 224 00d4 890424   		movl	%eax, (%rsp)	# temp, %sfp
 225              	.LBB65:
 226              	.LBB59:
 227              		.loc 3 104 0
 228 00d7 B8040000 		movl	$4, %eax	#,
 228      00
 229              	.LBE59:
 230              	.LBE65:
 231              		.loc 1 61 0
 232 00dc F30F103C 		movss	(%rsp), %xmm7	# %sfp, D.5344
 232      24
 233              	.LVL13:
 234 00e1 F30F5AC7 		cvtss2sd	%xmm7, %xmm0	# D.5344, D.5345
 235              	.LBB66:
 236              	.LBB60:
 237              		.loc 3 104 0
 238 00e5 F30F5ACE 		cvtss2sd	%xmm6, %xmm1	# D.5344,
 239              	.LVL14:
 240              	.LBE60:
 241              	.LBE66:
 242              		.loc 1 61 0
 243 00e9 F30F117C 		movss	%xmm7, 28(%rsp)	# D.5344, %sfp
 243      241C
 244              	.LBB67:
 245              	.LBB61:
 246              		.loc 3 104 0
 247 00ef F30F1134 		movss	%xmm6, (%rsp)	# D.5344, %sfp
 247      24
 248 00f4 E8000000 		call	__printf_chk	#
 248      00
 249              	.LVL15:
 250              	.LBE61:
 251              	.LBE67:
  62:ti.c          ****   s = 0.0;
  63:ti.c          ****   for (i = nb; i < n; i++)
 252              		.loc 1 63 0
 253 00f9 4539EC   		cmpl	%r13d, %r12d	# i, n
  62:ti.c          ****   s = 0.0;
 254              		.loc 1 62 0
 255 00fc 0F57C0   		xorps	%xmm0, %xmm0	# s
 256              		.loc 1 63 0
 257 00ff F30F1034 		movss	(%rsp), %xmm6	# %sfp, D.5344
 257      24
 258 0104 F30F106C 		movss	20(%rsp), %xmm5	# %sfp, D.5344
 258      2414
 259 010a F30F1064 		movss	24(%rsp), %xmm4	# %sfp, D.5344
 259      2418
 260 0110 F30F107C 		movss	28(%rsp), %xmm7	# %sfp, D.5344
 260      241C
 261 0116 7E38     		jle	.L8	#,
 262 0118 41FFCC   		decl	%r12d	# D.5346
 263              	.LVL16:
  62:ti.c          ****   s = 0.0;
 264              		.loc 1 62 0
 265 011b 0F57C0   		xorps	%xmm0, %xmm0	# s
 266 011e 4529EC   		subl	%r13d, %r12d	# i, D.5347
 267              	.LVL17:
 268 0121 4D63ED   		movslq	%r13d, %r13	# i, D.5347
 269              	.LVL18:
 270              		.loc 1 63 0
 271 0124 31C0     		xorl	%eax, %eax	# ivtmp.33
 272 0126 49C1E502 		salq	$2, %r13	#, D.5347
 273              	.LVL19:
 274 012a 4A8D14A5 		leaq	4(,%r12,4), %rdx	#, D.5347
 274      04000000 
 275 0132 4C01ED   		addq	%r13, %rbp	# D.5347, D.5349
 276              	.LVL20:
 277 0135 4C01EB   		addq	%r13, %rbx	# D.5347, D.5349
 278              	.LVL21:
 279              		.p2align 4,,7
 280              		.p2align 3
 281              	.L9:
  64:ti.c          ****    s += a[i] * b[i];
 282              		.loc 1 64 0 discriminator 2
 283 0138 F30F104C 		movss	0(%rbp,%rax), %xmm1	# MEM[base: _90, index: ivtmp.33_94, offset: 0B], D.5344
 283      0500
 284 013e F30F590C 		mulss	(%rbx,%rax), %xmm1	# MEM[base: _87, index: ivtmp.33_94, offset: 0B], D.5344
 284      03
 285 0143 4883C004 		addq	$4, %rax	#, ivtmp.33
  63:ti.c          ****    s += a[i] * b[i];
 286              		.loc 1 63 0 discriminator 2
 287 0147 4839D0   		cmpq	%rdx, %rax	# D.5347, ivtmp.33
 288              		.loc 1 64 0 discriminator 2
 289 014a F30F58C1 		addss	%xmm1, %xmm0	# D.5344, s
 290              	.LVL22:
  63:ti.c          ****    s += a[i] * b[i];
 291              		.loc 1 63 0 discriminator 2
 292 014e 75E8     		jne	.L9	#,
 293              	.LVL23:
 294              	.L8:
  65:ti.c          ****   s = s + temp[0] + temp[1] + temp[2] + temp[3];
 295              		.loc 1 65 0
 296 0150 F30F58C7 		addss	%xmm7, %xmm0	# D.5344, s
 297              	.LBB68:
 298              	.LBB69:
 299              		.loc 3 104 0
 300 0154 BE000000 		movl	$.LC2, %esi	#,
 300      00
 301 0159 BF010000 		movl	$1, %edi	#,
 301      00
 302 015e B8010000 		movl	$1, %eax	#,
 302      00
 303              	.LBE69:
 304              	.LBE68:
 305              		.loc 1 65 0
 306 0163 0F28C8   		movaps	%xmm0, %xmm1	# s, s
 307 0166 F30F58CE 		addss	%xmm6, %xmm1	# D.5344, s
 308 016a F30F58CD 		addss	%xmm5, %xmm1	# D.5344, s
 309 016e F30F58CC 		addss	%xmm4, %xmm1	# D.5344, s
 310              	.LVL24:
  66:ti.c          ****   printf("s = %g\n",s);
 311              		.loc 1 66 0
 312 0172 F30F5AC1 		cvtss2sd	%xmm1, %xmm0	# s, D.5345
 313 0176 F30F110C 		movss	%xmm1, (%rsp)	# s, %sfp
 313      24
 314              	.LBB71:
 315              	.LBB70:
 316              		.loc 3 104 0
 317 017b E8000000 		call	__printf_chk	#
 317      00
 318              	.LVL25:
 319              	.LBE70:
 320              	.LBE71:
  67:ti.c          ****   return s;
  68:ti.c          ****  }
 321              		.loc 1 68 0
 322 0180 F30F100C 		movss	(%rsp), %xmm1	# %sfp, s
 322      24
 323 0185 4883C428 		addq	$40, %rsp	#,
 324              		.cfi_def_cfa_offset 40
 325              	.LVL26:
 326 0189 5B       		popq	%rbx	#
 327              		.cfi_def_cfa_offset 32
 328 018a 5D       		popq	%rbp	#
 329              		.cfi_def_cfa_offset 24
 330 018b 415C     		popq	%r12	#
 331              		.cfi_def_cfa_offset 16
 332 018d 0F28C1   		movaps	%xmm1, %xmm0	# s,
 333 0190 415D     		popq	%r13	#
 334              		.cfi_def_cfa_offset 8
 335 0192 C3       		ret
 336              		.cfi_endproc
 337              	.LFE553:
 339 0193 66666666 		.p2align 4,,15
 339      2E0F1F84 
 339      00000000 
 339      00
 340              		.globl	vinner2
 342              	vinner2:
 343              	.LFB554:
  69:ti.c          **** 
  70:ti.c          **** float vinner2(float a[], float b[], int n)
  71:ti.c          ****  {
 344              		.loc 1 71 0
 345              		.cfi_startproc
 346              	.LVL27:
  72:ti.c          ****   int i,nb;
  73:ti.c          ****   float s;
  74:ti.c          ****   float temp[4] __attribute__((aligned(16)));
  75:ti.c          ****   __m128 v1, v2, acc;
  76:ti.c          **** 
  77:ti.c          ****   nb = n - (n % 4);
 347              		.loc 1 77 0
 348 01a0 89D1     		movl	%edx, %ecx	# n, tmp101
 349 01a2 4189D0   		movl	%edx, %r8d	# n, i
 350 01a5 C1F91F   		sarl	$31, %ecx	#, tmp101
 351              	.LBB72:
 352              	.LBB73:
 231:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 353              		.loc 2 231 0
 354 01a8 0F57C9   		xorps	%xmm1, %xmm1	# acc
 355              	.LBE73:
 356              	.LBE72:
 357              		.loc 1 77 0
 358 01ab C1E91E   		shrl	$30, %ecx	#, tmp101
 359 01ae 8D040A   		leal	(%rdx,%rcx), %eax	#, D.5369
 360 01b1 83E003   		andl	$3, %eax	#, D.5369
 361 01b4 29C8     		subl	%ecx, %eax	# tmp101, D.5369
 362 01b6 4129C0   		subl	%eax, %r8d	# D.5369, i
 363              	.LVL28:
  78:ti.c          ****   acc = _mm_xor_ps(acc,acc);
  79:ti.c          ****   for (i = 0; i < nb; i += 4)
 364              		.loc 1 79 0
 365 01b9 4585C0   		testl	%r8d, %r8d	# i
 366 01bc 7E26     		jle	.L13	#,
 367 01be 418D48FF 		leal	-1(%r8), %ecx	#, D.5370
 368 01c2 31C0     		xorl	%eax, %eax	# ivtmp.56
 369 01c4 C1E902   		shrl	$2, %ecx	#,
 370 01c7 48FFC1   		incq	%rcx	# D.5371
 371 01ca 48C1E104 		salq	$4, %rcx	#, D.5371
 372              	.LVL29:
 373 01ce 6690     		.p2align 4,,7
 374              		.p2align 3
 375              	.L14:
 376              	.LBB74:
 377              	.LBB75:
 169:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 378              		.loc 2 169 0 discriminator 2
 379 01d0 0F280407 		movaps	(%rdi,%rax), %xmm0	# MEM[base: a_11(D), index: ivtmp.56_46, offset: 0B], tmp110
 380 01d4 0F590406 		mulps	(%rsi,%rax), %xmm0	# MEM[base: b_14(D), index: ivtmp.56_46, offset: 0B], tmp110
 381              	.LVL30:
 382 01d8 4883C010 		addq	$16, %rax	#, ivtmp.56
 383              	.LVL31:
 384              	.LBE75:
 385              	.LBE74:
 386              		.loc 1 79 0 discriminator 2
 387 01dc 4839C8   		cmpq	%rcx, %rax	# D.5371, ivtmp.56
 388              	.LBB76:
 389              	.LBB77:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 390              		.loc 2 157 0 discriminator 2
 391 01df 0F58C8   		addps	%xmm0, %xmm1	# tmp110, acc
 392              	.LVL32:
 393              	.LBE77:
 394              	.LBE76:
 395              		.loc 1 79 0 discriminator 2
 396 01e2 75EC     		jne	.L14	#,
 397              	.LVL33:
 398              	.L13:
 399              	.LBB78:
 400              	.LBB79:
 717:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 401              		.loc 2 717 0
 402 01e4 0F28D1   		movaps	%xmm1, %xmm2	# acc, tmp117
 403              	.LBE79:
 404              	.LBE78:
  80:ti.c          ****    {
  81:ti.c          ****     v1 = _mm_load_ps(&a[i]);
  82:ti.c          ****     v2 = _mm_load_ps(&b[i]);
  83:ti.c          ****     v2 = _mm_mul_ps(v1,v2);
  84:ti.c          ****     acc = _mm_add_ps(acc,v2);
  85:ti.c          ****    }
  86:ti.c          ****   v1 = _mm_shuffle_ps(acc,acc,_MM_SHUFFLE(1,0,3,2));
  87:ti.c          ****   v1 = _mm_add_ps(v1,acc);
  88:ti.c          ****   v2 = _mm_shuffle_ps(v1,v1,_MM_SHUFFLE(2,3,0,1));
  89:ti.c          ****   v2 = _mm_add_ps(v2,v1);
  90:ti.c          ****   _mm_store_ss(&s,v2);
  91:ti.c          ****   for (i = nb; i < n; i++)
 405              		.loc 1 91 0
 406 01e7 4439C2   		cmpl	%r8d, %edx	# i, n
 407              	.LBB81:
 408              	.LBB80:
 717:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 409              		.loc 2 717 0
 410 01ea 0FC6D14E 		shufps	$78, %xmm1, %xmm2	#, acc, tmp117
 411              	.LVL34:
 412              	.LBE80:
 413              	.LBE81:
 414              	.LBB82:
 415              	.LBB83:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 416              		.loc 2 157 0
 417 01ee 0F58D1   		addps	%xmm1, %xmm2	# acc, tmp117
 418              	.LVL35:
 419              	.LBE83:
 420              	.LBE82:
 421              	.LBB84:
 422              	.LBB85:
 717:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 423              		.loc 2 717 0
 424 01f1 0F28C2   		movaps	%xmm2, %xmm0	# tmp117, tmp121
 425 01f4 0FC6C2B1 		shufps	$177, %xmm2, %xmm0	#, tmp117, tmp121
 426              	.LVL36:
 427              	.LBE85:
 428              	.LBE84:
 429              	.LBB86:
 430              	.LBB87:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 431              		.loc 2 157 0
 432 01f8 0F58C2   		addps	%xmm2, %xmm0	# tmp117, tmp121
 433              	.LVL37:
 434              	.LBE87:
 435              	.LBE86:
 436              		.loc 1 91 0
 437 01fb 7E3A     		jle	.L15	#,
 438 01fd FFCA     		decl	%edx	# D.5370
 439              	.LVL38:
 440 01ff 31C0     		xorl	%eax, %eax	# ivtmp.49
 441 0201 4429C2   		subl	%r8d, %edx	# i, D.5371
 442              	.LVL39:
 443 0204 4D63C0   		movslq	%r8d, %r8	# i, D.5371
 444              	.LVL40:
 445 0207 49C1E002 		salq	$2, %r8	#, D.5371
 446              	.LVL41:
 447 020b 488D1495 		leaq	4(,%rdx,4), %rdx	#, D.5371
 447      04000000 
 448 0213 4C01C7   		addq	%r8, %rdi	# D.5371, D.5374
 449              	.LVL42:
 450 0216 4C01C6   		addq	%r8, %rsi	# D.5371, D.5374
 451              	.LVL43:
 452 0219 0F1F8000 		.p2align 4,,7
 452      000000
 453              		.p2align 3
 454              	.L16:
  92:ti.c          ****    s += a[i] * b[i];
 455              		.loc 1 92 0 discriminator 2
 456 0220 F30F100C 		movss	(%rdi,%rax), %xmm1	# MEM[base: _76, index: ivtmp.49_80, offset: 0B], D.5372
 456      07
 457 0225 F30F590C 		mulss	(%rsi,%rax), %xmm1	# MEM[base: _73, index: ivtmp.49_80, offset: 0B], D.5372
 457      06
 458 022a 4883C004 		addq	$4, %rax	#, ivtmp.49
  91:ti.c          ****    s += a[i] * b[i];
 459              		.loc 1 91 0 discriminator 2
 460 022e 4839D0   		cmpq	%rdx, %rax	# D.5371, ivtmp.49
 461              		.loc 1 92 0 discriminator 2
 462 0231 F30F58C1 		addss	%xmm1, %xmm0	# D.5372, s
 463              	.LVL44:
  91:ti.c          ****    s += a[i] * b[i];
 464              		.loc 1 91 0 discriminator 2
 465 0235 75E9     		jne	.L16	#,
 466              	.L15:
  93:ti.c          ****   return s;
  94:ti.c          ****  }
 467              		.loc 1 94 0
 468 0237 F3C3     		rep ret
 469              		.cfi_endproc
 470              	.LFE554:
 472              		.section	.rodata.str1.1
 473              	.LC6:
 474 0015 76656374 		.string	"vector s = %g\n"
 474      6F722073 
 474      203D2025 
 474      670A00
 475              	.LC7:
 476 0024 76656374 		.string	"vector2 s = %g\n"
 476      6F723220 
 476      73203D20 
 476      25670A00 
 477              		.section	.text.startup,"ax",@progbits
 478              		.p2align 4,,15
 479              		.globl	main
 481              	main:
 482              	.LFB551:
  11:ti.c          **** 
 483              		.loc 1 11 0
 484              		.cfi_startproc
 485              	.LVL45:
 486 0000 53       		pushq	%rbx	#
 487              		.cfi_def_cfa_offset 16
 488              		.cfi_offset 3, -16
  20:ti.c          ****    }
 489              		.loc 1 20 0
 490 0001 31C0     		xorl	%eax, %eax	# ivtmp.88
  11:ti.c          **** 
 491              		.loc 1 11 0
 492 0003 4881EC40 		subq	$8000, %rsp	#,
 492      1F0000
 493              		.cfi_def_cfa_offset 8016
 494 000a 660F6F1D 		movdqa	.LC4(%rip), %xmm3	#, vect_cst_.62
 494      00000000 
  20:ti.c          ****    }
 495              		.loc 1 20 0
 496 0012 660F6F05 		movdqa	.LC3(%rip), %xmm0	#, vect_vec_iv_.63
 496      00000000 
 497 001a 0F281500 		movaps	.LC5(%rip), %xmm2	#, tmp99
 497      000000
 498 0021 EB09     		jmp	.L19	#
 499              	.LVL46:
 500              		.p2align 4,,7
 501 0023 0F1F4400 		.p2align 3
 501      00
 502              	.L23:
 503 0028 660F6FC1 		movdqa	%xmm1, %xmm0	# vect_vec_iv_.63, vect_vec_iv_.63
 504              	.L19:
 505 002c 660F6FC8 		movdqa	%xmm0, %xmm1	# vect_vec_iv_.63, vect_vec_iv_.63
  19:ti.c          ****     b[i] = 1;
 506              		.loc 1 19 0 discriminator 2
 507 0030 0F5BC0   		cvtdq2ps	%xmm0, %xmm0	# vect_vec_iv_.63, tmp82
  20:ti.c          ****    }
 508              		.loc 1 20 0 discriminator 2
 509 0033 0F299404 		movaps	%xmm2, 4000(%rsp,%rax)	# tmp99, MEM[symbol: b, index: ivtmp.88_44, offset: 0B]
 509      A00F0000 
 510 003b 660FFECB 		paddd	%xmm3, %xmm1	# vect_cst_.62, vect_vec_iv_.63
  19:ti.c          ****     b[i] = 1;
 511              		.loc 1 19 0 discriminator 2
 512 003f 0F290404 		movaps	%xmm0, (%rsp,%rax)	# tmp82, MEM[symbol: a, index: ivtmp.88_44, offset: 0B]
 513 0043 4883C010 		addq	$16, %rax	#, ivtmp.88
 514 0047 483DA00F 		cmpq	$4000, %rax	#, ivtmp.88
 514      0000
 515 004d 75D9     		jne	.L23	#,
  20:ti.c          ****    }
 516              		.loc 1 20 0
 517 004f 0F57C9   		xorps	%xmm1, %xmm1	# s0
 518 0052 31C0     		xorl	%eax, %eax	# ivtmp.83
 519              		.p2align 4,,7
 520 0054 0F1F4000 		.p2align 3
 521              	.L21:
 522              	.LVL47:
 523              	.LBB88:
 524              	.LBB89:
  40:ti.c          ****   return s;
 525              		.loc 1 40 0
 526 0058 F30F1004 		movss	(%rsp,%rax), %xmm0	# MEM[symbol: a, index: ivtmp.83_39, offset: 0B], D.5412
 526      04
 527 005d F30F5984 		mulss	4000(%rsp,%rax), %xmm0	# MEM[symbol: b, index: ivtmp.83_39, offset: 0B], D.5412
 527      04A00F00 
 527      00
 528 0066 4883C004 		addq	$4, %rax	#, ivtmp.83
  39:ti.c          ****    s += a[i] * b[i];
 529              		.loc 1 39 0
 530 006a 483DA00F 		cmpq	$4000, %rax	#, ivtmp.83
 530      0000
  40:ti.c          ****   return s;
 531              		.loc 1 40 0
 532 0070 F30F58C8 		addss	%xmm0, %xmm1	# D.5412, s0
 533              	.LVL48:
  39:ti.c          ****    s += a[i] * b[i];
 534              		.loc 1 39 0
 535 0074 75E2     		jne	.L21	#,
 536              	.LVL49:
 537              	.LBE89:
 538              	.LBE88:
  24:ti.c          **** 
 539              		.loc 1 24 0
 540 0076 F30F5AC1 		cvtss2sd	%xmm1, %xmm0	# s0, D.5410
 541              	.LBB90:
 542              	.LBB91:
 543              		.loc 3 104 0
 544 007a BE000000 		movl	$.LC2, %esi	#,
 544      00
 545              	.LVL50:
 546 007f BF010000 		movl	$1, %edi	#,
 546      00
 547              	.LVL51:
 548 0084 B8010000 		movl	$1, %eax	#,
 548      00
 549              	.LBE91:
 550              	.LBE90:
  26:ti.c          ****   printf("vector s = %g\n",s1);
 551              		.loc 1 26 0
 552 0089 31DB     		xorl	%ebx, %ebx	# n
 553              	.LBB93:
 554              	.LBB92:
 555              		.loc 3 104 0
 556 008b E8000000 		call	__printf_chk	#
 556      00
 557              	.LVL52:
 558              	.LBE92:
 559              	.LBE93:
  26:ti.c          ****   printf("vector s = %g\n",s1);
 560              		.loc 1 26 0
 561 0090 488DB424 		leaq	4000(%rsp), %rsi	#, tmp101
 561      A00F0000 
 562 0098 89DA     		movl	%ebx, %edx	# n,
 563 009a 4889E7   		movq	%rsp, %rdi	#,
 564 009d 31C0     		xorl	%eax, %eax	#
 565 009f E8000000 		call	vinner1	#
 565      00
 566              	.LVL53:
 567 00a4 F30F2AC0 		cvtsi2ss	%eax, %xmm0	# D.5411, s1
 568              	.LVL54:
 569              	.LBB94:
 570              	.LBB95:
 571              		.loc 3 104 0
 572 00a8 BE000000 		movl	$.LC6, %esi	#,
 572      00
 573 00ad BF010000 		movl	$1, %edi	#,
 573      00
 574 00b2 B8010000 		movl	$1, %eax	#,
 574      00
 575              	.LBE95:
 576              	.LBE94:
  27:ti.c          **** 
 577              		.loc 1 27 0
 578 00b7 F30F5AC0 		cvtss2sd	%xmm0, %xmm0	# s1, D.5410
 579              	.LVL55:
 580              	.LBB97:
 581              	.LBB96:
 582              		.loc 3 104 0
 583 00bb E8000000 		call	__printf_chk	#
 583      00
 584              	.LVL56:
 585              	.LBE96:
 586              	.LBE97:
  29:ti.c          ****   printf("vector2 s = %g\n",s2);
 587              		.loc 1 29 0
 588 00c0 488DB424 		leaq	4000(%rsp), %rsi	#, tmp102
 588      A00F0000 
 589 00c8 89DA     		movl	%ebx, %edx	# n,
 590 00ca 4889E7   		movq	%rsp, %rdi	#,
 591 00cd E8000000 		call	vinner2	#
 591      00
 592              	.LVL57:
  30:ti.c          ****  }
 593              		.loc 1 30 0
 594 00d2 F30F5AC0 		cvtss2sd	%xmm0, %xmm0	# s2, D.5410
 595              	.LVL58:
 596              	.LBB98:
 597              	.LBB99:
 598              		.loc 3 104 0
 599 00d6 BE000000 		movl	$.LC7, %esi	#,
 599      00
 600 00db BF010000 		movl	$1, %edi	#,
 600      00
 601 00e0 B8010000 		movl	$1, %eax	#,
 601      00
 602 00e5 E8000000 		call	__printf_chk	#
 602      00
 603              	.LVL59:
 604              	.LBE99:
 605              	.LBE98:
  31:ti.c          **** 
 606              		.loc 1 31 0
 607 00ea 4881C440 		addq	$8000, %rsp	#,
 607      1F0000
 608              		.cfi_def_cfa_offset 16
 609 00f1 5B       		popq	%rbx	#
 610              		.cfi_def_cfa_offset 8
 611 00f2 C3       		ret
 612              		.cfi_endproc
 613              	.LFE551:
 615              		.section	.rodata.cst16,"aM",@progbits,16
 616              		.align 16
 617              	.LC3:
 618 0000 00000000 		.long	0
 619 0004 01000000 		.long	1
 620 0008 02000000 		.long	2
 621 000c 03000000 		.long	3
 622              		.align 16
 623              	.LC4:
 624 0010 04000000 		.long	4
 625 0014 04000000 		.long	4
 626 0018 04000000 		.long	4
 627 001c 04000000 		.long	4
 628              		.align 16
 629              	.LC5:
 630 0020 0000803F 		.long	1065353216
 631 0024 0000803F 		.long	1065353216
 632 0028 0000803F 		.long	1065353216
 633 002c 0000803F 		.long	1065353216
 634              		.text
 635              	.Letext0:
 636              		.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
 637              		.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
 638              		.file 6 "/usr/include/libio.h"
 639              		.file 7 "/usr/include/stdio.h"
