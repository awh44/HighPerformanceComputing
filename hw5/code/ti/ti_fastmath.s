   1              		.file	"ti.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu ti.c -mtune=opteron-sse3
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
  52              		.p2align 4,,15
  53              		.globl	inner
  55              	inner:
  56              	.LFB552:
  57              		.file 1 "ti.c"
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
  58              		.loc 1 34 0
  59              		.cfi_startproc
  60              	.LVL0:
  61 0000 4889F8   		movq	%rdi, %rax	# a, D.5373
  62 0003 55       		pushq	%rbp	#
  63              		.cfi_def_cfa_offset 16
  64              		.cfi_offset 6, -16
  65 0004 83E00F   		andl	$15, %eax	#, D.5373
  66 0007 48C1E802 		shrq	$2, %rax	#, D.5373
  67 000b 53       		pushq	%rbx	#
  68              		.cfi_def_cfa_offset 24
  69              		.cfi_offset 3, -24
  70 000c 48F7D8   		negq	%rax	# D.5373
  71 000f 89C2     		movl	%eax, %edx	# D.5373, prolog_loop_niters.20
  72              	.LVL1:
  73 0011 83E203   		andl	$3, %edx	#, prolog_loop_niters.20
  74 0014 0F84CE00 		je	.L9	#,
  74      0000
  75              		.loc 1 34 0
  76 001a 0F57D2   		xorps	%xmm2, %xmm2	# s
  77 001d 31C0     		xorl	%eax, %eax	# ivtmp.62
  78 001f B9E70300 		movl	$999, %ecx	#, tmp158
  78      00
  79              	.LVL2:
  80              	.L3:
  35:ti.c          ****   int i;
  36:ti.c          ****   float s;
  37:ti.c          **** 
  38:ti.c          ****   s = 0.0;
  39:ti.c          ****   for (i = 0; i < SIZE; i++)
  40:ti.c          ****    s += a[i] * b[i];
  81              		.loc 1 40 0
  82 0024 F30F1004 		movss	(%rsi,%rax,4), %xmm0	# MEM[base: b_9(D), index: ivtmp.62_93, step: 4, offset: 0B], D.5374
  82      86
  83 0029 4189CA   		movl	%ecx, %r10d	# tmp158, D.5371
  84 002c F30F5904 		mulss	(%rdi,%rax,4), %xmm0	# MEM[base: a_5(D), index: ivtmp.62_93, step: 4, offset: 0B], D.5374
  84      87
  85 0031 4129C2   		subl	%eax, %r10d	# ivtmp.62, D.5371
  86 0034 448D5801 		leal	1(%rax), %r11d	#, i
  87 0038 48FFC0   		incq	%rax	# ivtmp.62
  88              	.LVL3:
  89 003b 39C2     		cmpl	%eax, %edx	# ivtmp.62, prolog_loop_niters.20
  90 003d F30F58D0 		addss	%xmm0, %xmm2	# D.5374, s
  91              	.LVL4:
  92 0041 77E1     		ja	.L3	#,
  93              	.LVL5:
  94              	.L2:
  95 0043 BBE80300 		movl	$1000, %ebx	#, niters.22
  95      00
  39:ti.c          ****    s += a[i] * b[i];
  96              		.loc 1 39 0
  97 0048 0F57C9   		xorps	%xmm1, %xmm1	# vect_s.38
  98 004b 29D3     		subl	%edx, %ebx	# prolog_loop_niters.20, niters.22
  99 004d 89D2     		movl	%edx, %edx	# prolog_loop_niters.20, prolog_loop_adjusted_niters.21
 100 004f 31C0     		xorl	%eax, %eax	# ivtmp.56
 101 0051 4189D8   		movl	%ebx, %r8d	# niters.22, bnd.23
 102 0054 488D0C95 		leaq	0(,%rdx,4), %rcx	#, base_off.29
 102      00000000 
 103 005c 31D2     		xorl	%edx, %edx	# ivtmp.53
 104 005e 41C1E802 		shrl	$2, %r8d	#, bnd.23
 105 0062 428D2C85 		leal	0(,%r8,4), %ebp	#, ratio_mult_vf.24
 105      00000000 
 106 006a 4C8D0C0F 		leaq	(%rdi,%rcx), %r9	#, vect_pa.30
 107 006e 4801F1   		addq	%rsi, %rcx	# b, vect_pb.35
 108              		.p2align 4,,7
 109 0071 0F1F8000 		.p2align 3
 109      000000
 110              	.L8:
 111              		.loc 1 40 0 discriminator 2
 112 0078 0F120401 		movlps	(%rcx,%rax), %xmm0	# MEM[base: vect_pb.35_82, index: ivtmp.56_56, offset: 0B], vect_var_.37
 113 007c FFC2     		incl	%edx	# ivtmp.53
 114 007e 0F164401 		movhps	8(%rcx,%rax), %xmm0	# MEM[base: vect_pb.35_82, index: ivtmp.56_56, offset: 0B], vect_var_.3
 114      08
 115 0083 410F5904 		mulps	(%r9,%rax), %xmm0	# MEM[base: vect_pa.30_77, index: ivtmp.56_56, offset: 0B], vect_var_.37
 115      01
 116 0088 4883C010 		addq	$16, %rax	#, ivtmp.56
 117 008c 4139D0   		cmpl	%edx, %r8d	# ivtmp.53, bnd.23
 118 008f 0F58C8   		addps	%xmm0, %xmm1	# vect_var_.37, vect_s.38
 119 0092 77E4     		ja	.L8	#,
 120 0094 F20F7CC9 		haddps	%xmm1, %xmm1	# vect_s.38, vect_s.40
 121 0098 4129EA   		subl	%ebp, %r10d	# ratio_mult_vf.24, tmp.26
 122 009b 39EB     		cmpl	%ebp, %ebx	# ratio_mult_vf.24, niters.22
 123 009d 418D042B 		leal	(%r11,%rbp), %eax	#, tmp.25
 124 00a1 F20F7CC9 		haddps	%xmm1, %xmm1	# vect_s.40, vect_s.40
 125 00a5 0F28C1   		movaps	%xmm1, %xmm0	#, s
 126 00a8 F30F58C2 		addss	%xmm2, %xmm0	# s, s
 127 00ac 7431     		je	.L6	#,
 128 00ae 418D52FF 		leal	-1(%r10), %edx	#, D.5372
 129 00b2 4898     		cltq
 130 00b4 48C1E002 		salq	$2, %rax	#, D.5372
 131 00b8 488D1495 		leaq	4(,%rdx,4), %rdx	#, D.5372
 131      04000000 
 132 00c0 4801C7   		addq	%rax, %rdi	# D.5372, D.5370
 133              	.LVL6:
 134 00c3 4801C6   		addq	%rax, %rsi	# D.5372, D.5370
 135              	.LVL7:
 136              		.loc 1 40 0 is_stmt 0
 137 00c6 31C0     		xorl	%eax, %eax	# ivtmp.50
 138              	.L7:
 139              	.LVL8:
 140 00c8 F30F100C 		movss	(%rsi,%rax), %xmm1	# MEM[base: _4, index: ivtmp.50_70, offset: 0B], D.5374
 140      06
 141 00cd F30F590C 		mulss	(%rdi,%rax), %xmm1	# MEM[base: _19, index: ivtmp.50_70, offset: 0B], D.5374
 141      07
 142 00d2 4883C004 		addq	$4, %rax	#, ivtmp.50
  39:ti.c          ****    s += a[i] * b[i];
 143              		.loc 1 39 0 is_stmt 1
 144 00d6 4839D0   		cmpq	%rdx, %rax	# D.5372, ivtmp.50
 145              		.loc 1 40 0
 146 00d9 F30F58C1 		addss	%xmm1, %xmm0	# D.5374, s
 147              	.LVL9:
  39:ti.c          ****    s += a[i] * b[i];
 148              		.loc 1 39 0
 149 00dd 75E9     		jne	.L7	#,
 150              	.LVL10:
 151              	.L6:
  41:ti.c          ****   return s;
  42:ti.c          ****  }
 152              		.loc 1 42 0
 153 00df 5B       		popq	%rbx	#
 154              		.cfi_remember_state
 155              		.cfi_def_cfa_offset 16
 156 00e0 5D       		popq	%rbp	#
 157              		.cfi_def_cfa_offset 8
 158 00e1 C3       		ret
 159              	.LVL11:
 160              		.p2align 4,,7
 161 00e2 660F1F44 		.p2align 3
 161      0000
 162              	.L9:
 163              		.cfi_restore_state
  34:ti.c          ****   int i;
 164              		.loc 1 34 0
 165 00e8 41BAE803 		movl	$1000, %r10d	#, D.5371
 165      0000
  38:ti.c          ****   for (i = 0; i < SIZE; i++)
 166              		.loc 1 38 0
 167 00ee 0F57D2   		xorps	%xmm2, %xmm2	# s
  39:ti.c          ****    s += a[i] * b[i];
 168              		.loc 1 39 0
 169 00f1 4531DB   		xorl	%r11d, %r11d	# i
 170 00f4 E94AFFFF 		jmp	.L2	#
 170      FF
 171              		.cfi_endproc
 172              	.LFE552:
 174              		.section	.rodata.str1.1,"aMS",@progbits,1
 175              	.LC1:
 176 0000 25672025 		.string	"%g %g %g %g\n"
 176      67202567 
 176      2025670A 
 176      00
 177              	.LC2:
 178 000d 73203D20 		.string	"s = %g\n"
 178      25670A00 
 179              		.text
 180 00f9 0F1F8000 		.p2align 4,,15
 180      000000
 181              		.globl	vinner
 183              	vinner:
 184              	.LFB553:
  43:ti.c          **** 
  44:ti.c          **** float vinner(float a[], float b[], int n)
  45:ti.c          ****  {
 185              		.loc 1 45 0
 186              		.cfi_startproc
 187              	.LVL12:
 188 0100 4155     		pushq	%r13	#
 189              		.cfi_def_cfa_offset 16
 190              		.cfi_offset 13, -16
 191 0102 4189D5   		movl	%edx, %r13d	# n, n
  46:ti.c          ****   int i,nb;
  47:ti.c          ****   float s;
  48:ti.c          ****   float temp[4] __attribute__((aligned(16)));
  49:ti.c          ****   __m128 v1, v2, acc;
  50:ti.c          **** 
  51:ti.c          ****   nb = n - (n % 4);
 192              		.loc 1 51 0
 193 0105 C1FA1F   		sarl	$31, %edx	#, tmp148
 194              	.LVL13:
 195 0108 C1EA1E   		shrl	$30, %edx	#, tmp148
 196              	.LBB46:
 197              	.LBB47:
 198              		.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h"
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
 199              		.loc 2 231 0
 200 010b 0F57C9   		xorps	%xmm1, %xmm1	# acc
 201              	.LBE47:
 202              	.LBE46:
  45:ti.c          ****   int i,nb;
 203              		.loc 1 45 0
 204 010e 4154     		pushq	%r12	#
 205              		.cfi_def_cfa_offset 24
 206              		.cfi_offset 12, -24
 207              		.loc 1 51 0
 208 0110 418D4415 		leal	0(%r13,%rdx), %eax	#, D.5434
 208      00
  45:ti.c          ****   int i,nb;
 209              		.loc 1 45 0
 210 0115 4989FC   		movq	%rdi, %r12	# a, a
 211 0118 55       		pushq	%rbp	#
 212              		.cfi_def_cfa_offset 32
 213              		.cfi_offset 6, -32
 214              		.loc 1 51 0
 215 0119 83E003   		andl	$3, %eax	#, D.5434
  45:ti.c          ****   int i,nb;
 216              		.loc 1 45 0
 217 011c 4889F5   		movq	%rsi, %rbp	# b, b
 218              		.loc 1 51 0
 219 011f 29D0     		subl	%edx, %eax	# tmp148, D.5434
  45:ti.c          ****   int i,nb;
 220              		.loc 1 45 0
 221 0121 53       		pushq	%rbx	#
 222              		.cfi_def_cfa_offset 40
 223              		.cfi_offset 3, -40
 224              		.loc 1 51 0
 225 0122 4489EB   		movl	%r13d, %ebx	# n, i
 226 0125 29C3     		subl	%eax, %ebx	# D.5434, i
 227              	.LVL14:
  45:ti.c          ****   int i,nb;
 228              		.loc 1 45 0
 229 0127 4883EC28 		subq	$40, %rsp	#,
 230              		.cfi_def_cfa_offset 80
  52:ti.c          ****   acc = _mm_xor_ps(acc,acc);
  53:ti.c          ****   for (i = 0; i < nb; i += 4)
 231              		.loc 1 53 0
 232 012b 85DB     		testl	%ebx, %ebx	# i
 233 012d 7E27     		jle	.L14	#,
 234 012f 8D4BFF   		leal	-1(%rbx), %ecx	#, D.5438
 235 0132 31C0     		xorl	%eax, %eax	# ivtmp.126
 236 0134 C1E902   		shrl	$2, %ecx	#,
 237 0137 48FFC1   		incq	%rcx	# D.5440
 238 013a 48C1E104 		salq	$4, %rcx	#, D.5440
 239              	.LVL15:
 240 013e 6690     		.p2align 4,,7
 241              		.p2align 3
 242              	.L15:
 243              	.LBB48:
 244              	.LBB49:
 169:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 245              		.loc 2 169 0 discriminator 2
 246 0140 410F2804 		movaps	(%r12,%rax), %xmm0	# MEM[base: a_11(D), index: ivtmp.126_92, offset: 0B], tmp157
 246      04
 247 0145 0F594405 		mulps	0(%rbp,%rax), %xmm0	# MEM[base: b_14(D), index: ivtmp.126_92, offset: 0B], tmp157
 247      00
 248              	.LVL16:
 249 014a 4883C010 		addq	$16, %rax	#, ivtmp.126
 250              	.LVL17:
 251              	.LBE49:
 252              	.LBE48:
 253              		.loc 1 53 0 discriminator 2
 254 014e 4839C8   		cmpq	%rcx, %rax	# D.5440, ivtmp.126
 255              	.LBB50:
 256              	.LBB51:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 257              		.loc 2 157 0 discriminator 2
 258 0151 0F58C8   		addps	%xmm0, %xmm1	# tmp157, acc
 259              	.LVL18:
 260              	.LBE51:
 261              	.LBE50:
 262              		.loc 1 53 0 discriminator 2
 263 0154 75EA     		jne	.L15	#,
 264              	.LVL19:
 265              	.L14:
 266              	.LBB52:
 267              	.LBB53:
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
 268              		.loc 2 947 0
 269 0156 0F290C24 		movaps	%xmm1, (%rsp)	# acc, %sfp
 270              	.LBE53:
 271              	.LBE52:
  54:ti.c          ****    {
  55:ti.c          ****     v1 = _mm_load_ps(&a[i]);
  56:ti.c          ****     v2 = _mm_load_ps(&b[i]);
  57:ti.c          ****     v2 = _mm_mul_ps(v1,v2);
  58:ti.c          ****     acc = _mm_add_ps(acc,v2);
  59:ti.c          ****    }
  60:ti.c          ****   _mm_store_ps(temp,acc);
  61:ti.c          ****   printf("%g %g %g %g\n",temp[0],temp[1],temp[2],temp[3]);
 272              		.loc 1 61 0
 273 015a 488B4424 		movq	8(%rsp), %rax	# %sfp, tmp161
 273      08
 274 015f 4889C7   		movq	%rax, %rdi	# tmp161, tmp198
 275              	.LVL20:
 276 0162 48C1EF20 		shrq	$32, %rdi	#, tmp198
 277 0166 897C2414 		movl	%edi, 20(%rsp)	# tmp163, %sfp
 278              	.LBB54:
 279              	.LBB55:
 280              		.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
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
 281              		.loc 3 104 0
 282 016a BF010000 		movl	$1, %edi	#,
 282      00
 283              	.LBE55:
 284              	.LBE54:
 285              		.loc 1 61 0
 286 016f F30F1074 		movss	20(%rsp), %xmm6	# %sfp, D.5435
 286      2414
 287 0175 89442414 		movl	%eax, 20(%rsp)	# tmp165, %sfp
 288 0179 488B0424 		movq	(%rsp), %rax	# %sfp, temp
 289              	.LVL21:
 290 017d F30F107C 		movss	20(%rsp), %xmm7	# %sfp, D.5435
 290      2414
 291              	.LBB62:
 292              	.LBB56:
 293              		.loc 3 104 0
 294 0183 F30F5ADE 		cvtss2sd	%xmm6, %xmm3	# D.5435,
 295 0187 F30F5AD7 		cvtss2sd	%xmm7, %xmm2	# D.5435,
 296              	.LBE56:
 297              	.LBE62:
 298              		.loc 1 61 0
 299 018b 4889C6   		movq	%rax, %rsi	# temp, tmp201
 300              	.LVL22:
 301              	.LBB63:
 302              	.LBB57:
 303              		.loc 3 104 0
 304 018e F30F1174 		movss	%xmm6, 24(%rsp)	# D.5435, %sfp
 304      2418
 305              	.LBE57:
 306              	.LBE63:
 307              		.loc 1 61 0
 308 0194 48C1EE20 		shrq	$32, %rsi	#, tmp201
 309 0198 893424   		movl	%esi, (%rsp)	# tmp168, %sfp
 310              	.LBB64:
 311              	.LBB58:
 312              		.loc 3 104 0
 313 019b BE000000 		movl	$.LC1, %esi	#,
 313      00
 314              	.LBE58:
 315              	.LBE64:
 316              		.loc 1 61 0
 317 01a0 F30F102C 		movss	(%rsp), %xmm5	# %sfp, D.5435
 317      24
 318 01a5 890424   		movl	%eax, (%rsp)	# temp, %sfp
 319              	.LBB65:
 320              	.LBB59:
 321              		.loc 3 104 0
 322 01a8 B8040000 		movl	$4, %eax	#,
 322      00
 323              	.LBE59:
 324              	.LBE65:
 325              		.loc 1 61 0
 326 01ad F30F1024 		movss	(%rsp), %xmm4	# %sfp, D.5435
 326      24
 327              	.LVL23:
 328              	.LBB66:
 329              	.LBB60:
 330              		.loc 3 104 0
 331 01b2 F30F5ACD 		cvtss2sd	%xmm5, %xmm1	# D.5435,
 332              	.LVL24:
 333              	.LBE60:
 334              	.LBE66:
 335              		.loc 1 61 0
 336 01b6 F30F5AC4 		cvtss2sd	%xmm4, %xmm0	# D.5435, D.5436
 337 01ba F30F1164 		movss	%xmm4, 28(%rsp)	# D.5435, %sfp
 337      241C
 338              	.LBB67:
 339              	.LBB61:
 340              		.loc 3 104 0
 341 01c0 F30F112C 		movss	%xmm5, (%rsp)	# D.5435, %sfp
 341      24
 342 01c5 E8000000 		call	__printf_chk	#
 342      00
 343              	.LVL25:
 344              	.LBE61:
 345              	.LBE67:
  62:ti.c          ****   s = 0.0;
  63:ti.c          ****   for (i = nb; i < n; i++)
 346              		.loc 1 63 0
 347 01ca 4139DD   		cmpl	%ebx, %r13d	# i, n
  62:ti.c          ****   s = 0.0;
 348              		.loc 1 62 0
 349 01cd 0F57C9   		xorps	%xmm1, %xmm1	# s
 350              		.loc 1 63 0
 351 01d0 F30F102C 		movss	(%rsp), %xmm5	# %sfp, D.5435
 351      24
 352 01d5 F30F107C 		movss	20(%rsp), %xmm7	# %sfp, D.5435
 352      2414
 353 01db F30F1074 		movss	24(%rsp), %xmm6	# %sfp, D.5435
 353      2418
 354 01e1 F30F1064 		movss	28(%rsp), %xmm4	# %sfp, D.5435
 354      241C
 355 01e7 0F8EE400 		jle	.L16	#,
 355      0000
 356 01ed 4C63CB   		movslq	%ebx, %r9	# i, D.5442
 357 01f0 4489EA   		movl	%r13d, %edx	# n, niters.72
 358 01f3 49C1E102 		salq	$2, %r9	#, D.5442
 359 01f7 29DA     		subl	%ebx, %edx	# i, niters.72
 360 01f9 4B8D0C0C 		leaq	(%r12,%r9), %rcx	#, batmp.73
 361 01fd 4889C8   		movq	%rcx, %rax	# batmp.73, D.5441
 362 0200 83E00F   		andl	$15, %eax	#, D.5441
 363 0203 48C1E802 		shrq	$2, %rax	#, D.5441
 364 0207 48F7D8   		negq	%rax	# D.5441
 365 020a 83E003   		andl	$3, %eax	#, D.5438
 366 020d 39D0     		cmpl	%edx, %eax	# niters.72, D.5438
 367 020f 0F47C2   		cmova	%edx, %eax	# D.5438,, niters.72, prolog_loop_niters.76
 368 0212 83FA03   		cmpl	$3, %edx	#, niters.72
 369 0215 0F46C2   		cmovbe	%edx, %eax	# prologue_after_cost_adjust.77,, niters.72, prologue_after_cost_adjust.77
 370 0218 85C0     		testl	%eax, %eax	# prologue_after_cost_adjust.77
 371 021a 89C6     		movl	%eax, %esi	# prologue_after_cost_adjust.77, prologue_after_cost_adjust.77
 372 021c 0F84F600 		je	.L30	#,
 372      0000
 373 0222 0F57C9   		xorps	%xmm1, %xmm1	# s
 374 0225 4A8D7C0D 		leaq	0(%rbp,%r9), %rdi	#, D.5437
 374      00
 375 022a 448D0403 		leal	(%rbx,%rax), %r8d	#, D.5434
 376 022e 31C0     		xorl	%eax, %eax	# ivtmp.119
 377              	.LVL26:
 378              	.L20:
  64:ti.c          ****    s += a[i] * b[i];
 379              		.loc 1 64 0
 380 0230 F30F1014 		movss	(%rcx,%rax), %xmm2	# MEM[base: batmp.73_79, index: ivtmp.119_145, offset: 0B], D.5435
 380      01
  63:ti.c          ****    s += a[i] * b[i];
 381              		.loc 1 63 0
 382 0235 FFC3     		incl	%ebx	# i
 383              	.LVL27:
 384              		.loc 1 64 0
 385 0237 F30F5914 		mulss	(%rdi,%rax), %xmm2	# MEM[base: _105, index: ivtmp.119_145, offset: 0B], D.5435
 385      07
 386 023c 4883C004 		addq	$4, %rax	#, ivtmp.119
 387 0240 4439C3   		cmpl	%r8d, %ebx	# D.5434, i
 388 0243 F30F58CA 		addss	%xmm2, %xmm1	# D.5435, s
 389              	.LVL28:
 390 0247 75E7     		jne	.L20	#,
 391 0249 39F2     		cmpl	%esi, %edx	# prologue_after_cost_adjust.77, niters.72
 392 024b 0F848000 		je	.L16	#,
 392      0000
 393              	.LVL29:
 394              	.L18:
 395 0251 29F2     		subl	%esi, %edx	# prologue_after_cost_adjust.77, niters.79
 396 0253 89F0     		movl	%esi, %eax	# prologue_after_cost_adjust.77, prolog_loop_adjusted_niters.78
 397 0255 89D7     		movl	%edx, %edi	# niters.79, bnd.80
 398 0257 C1EF02   		shrl	$2, %edi	#, bnd.80
 399 025a 4189F8   		movl	%edi, %r8d	# bnd.80, ratio_mult_vf.81
 400 025d 41C1E002 		sall	$2, %r8d	#, ratio_mult_vf.81
 401 0261 7444     		je	.L22	#,
  62:ti.c          ****   s = 0.0;
 402              		.loc 1 62 0
 403 0263 0F57C0   		xorps	%xmm0, %xmm0	# vect_s.94
 404 0266 48C1E002 		salq	$2, %rax	#, base_off.85
 405 026a 4901E9   		addq	%rbp, %r9	# b, batmp.89
 406 026d 4801C1   		addq	%rax, %rcx	# base_off.85, vect_p.86
 407 0270 4901C1   		addq	%rax, %r9	# base_off.85, vect_p.91
 408 0273 31F6     		xorl	%esi, %esi	# ivtmp.105
 409 0275 31C0     		xorl	%eax, %eax	# ivtmp.108
 410              	.LVL30:
 411              	.L27:
 412              		.loc 1 64 0 discriminator 2
 413 0277 410F121C 		movlps	(%r9,%rax), %xmm3	# MEM[base: vect_p.91_134, index: ivtmp.108_104, offset: 0B], vect_var_.9
 413      01
 414 027c FFC6     		incl	%esi	# ivtmp.105
 415 027e 410F165C 		movhps	8(%r9,%rax), %xmm3	# MEM[base: vect_p.91_134, index: ivtmp.108_104, offset: 0B], vect_var_.
 415      0108
 416 0284 0F591C01 		mulps	(%rcx,%rax), %xmm3	# MEM[base: vect_p.86_125, index: ivtmp.108_104, offset: 0B], vect_var_.9
 417 0288 4883C010 		addq	$16, %rax	#, ivtmp.108
 418 028c 39F7     		cmpl	%esi, %edi	# ivtmp.105, bnd.80
 419 028e 0F58C3   		addps	%xmm3, %xmm0	# vect_var_.93, vect_s.94
 420 0291 77E4     		ja	.L27	#,
 421 0293 4401C3   		addl	%r8d, %ebx	# ratio_mult_vf.81, i
 422 0296 4439C2   		cmpl	%r8d, %edx	# ratio_mult_vf.81, niters.79
 423 0299 F20F7CC0 		haddps	%xmm0, %xmm0	# vect_s.94, vect_s.96
 424 029d F20F7CC0 		haddps	%xmm0, %xmm0	# vect_s.96, vect_s.96
 425 02a1 F30F58C8 		addss	%xmm0, %xmm1	# stmp_s.95, s
 426 02a5 742A     		je	.L16	#,
 427              	.L22:
 428 02a7 4863C3   		movslq	%ebx, %rax	# i, D.5440
 429 02aa 48C1E002 		salq	$2, %rax	#, D.5440
 430 02ae 4901C4   		addq	%rax, %r12	# D.5440, D.5437
 431              	.LVL31:
 432 02b1 4801C5   		addq	%rax, %rbp	# D.5440, D.5437
 433              	.LVL32:
  62:ti.c          ****   s = 0.0;
 434              		.loc 1 62 0
 435 02b4 31C0     		xorl	%eax, %eax	# ivtmp.99
 436              	.L26:
 437              	.LVL33:
 438              		.loc 1 64 0
 439 02b6 F30F1044 		movss	0(%rbp,%rax,4), %xmm0	# MEM[base: _30, index: ivtmp.99_115, step: 4, offset: 0B], D.5435
 439      8500
 440 02bc F3410F59 		mulss	(%r12,%rax,4), %xmm0	# MEM[base: _27, index: ivtmp.99_115, step: 4, offset: 0B], D.5435
 440      0484
 441 02c2 48FFC0   		incq	%rax	# ivtmp.99
 442              	.LVL34:
 443 02c5 8D1403   		leal	(%rbx,%rax), %edx	#, D.5438
  63:ti.c          ****    s += a[i] * b[i];
 444              		.loc 1 63 0
 445 02c8 4139D5   		cmpl	%edx, %r13d	# D.5438, n
 446              		.loc 1 64 0
 447 02cb F30F58C8 		addss	%xmm0, %xmm1	# D.5435, s
 448              	.LVL35:
  63:ti.c          ****    s += a[i] * b[i];
 449              		.loc 1 63 0
 450 02cf 7FE5     		jg	.L26	#,
 451              	.LVL36:
 452              	.L16:
  65:ti.c          ****   s = s + temp[0] + temp[1] + temp[2] + temp[3];
 453              		.loc 1 65 0
 454 02d1 F30F58FE 		addss	%xmm6, %xmm7	# D.5435, s
 455              	.LBB68:
 456              	.LBB69:
 457              		.loc 3 104 0
 458 02d5 BE000000 		movl	$.LC2, %esi	#,
 458      00
 459 02da BF010000 		movl	$1, %edi	#,
 459      00
 460 02df B8010000 		movl	$1, %eax	#,
 460      00
 461              	.LBE69:
 462              	.LBE68:
 463              		.loc 1 65 0
 464 02e4 0F28D7   		movaps	%xmm7, %xmm2	# s, s
 465 02e7 F30F58D5 		addss	%xmm5, %xmm2	# D.5435, s
 466 02eb F30F58D4 		addss	%xmm4, %xmm2	# D.5435, s
 467 02ef F30F58D1 		addss	%xmm1, %xmm2	# s, s
 468              	.LVL37:
  66:ti.c          ****   printf("s = %g\n",s);
 469              		.loc 1 66 0
 470 02f3 F30F5AC2 		cvtss2sd	%xmm2, %xmm0	# s, D.5436
 471 02f7 F30F1114 		movss	%xmm2, (%rsp)	# s, %sfp
 471      24
 472              	.LBB71:
 473              	.LBB70:
 474              		.loc 3 104 0
 475 02fc E8000000 		call	__printf_chk	#
 475      00
 476              	.LVL38:
 477              	.LBE70:
 478              	.LBE71:
  67:ti.c          ****   return s;
  68:ti.c          ****  }
 479              		.loc 1 68 0
 480 0301 F30F1014 		movss	(%rsp), %xmm2	# %sfp, s
 480      24
 481 0306 4883C428 		addq	$40, %rsp	#,
 482              		.cfi_remember_state
 483              		.cfi_def_cfa_offset 40
 484              	.LVL39:
 485 030a 5B       		popq	%rbx	#
 486              		.cfi_def_cfa_offset 32
 487 030b 5D       		popq	%rbp	#
 488              		.cfi_def_cfa_offset 24
 489 030c 415C     		popq	%r12	#
 490              		.cfi_def_cfa_offset 16
 491 030e 0F28C2   		movaps	%xmm2, %xmm0	# s,
 492 0311 415D     		popq	%r13	#
 493              		.cfi_def_cfa_offset 8
 494              	.LVL40:
 495 0313 C3       		ret
 496              	.LVL41:
 497              		.p2align 4,,7
 498 0314 0F1F4000 		.p2align 3
 499              	.L30:
 500              		.cfi_restore_state
  62:ti.c          ****   for (i = nb; i < n; i++)
 501              		.loc 1 62 0
 502 0318 0F57C9   		xorps	%xmm1, %xmm1	# s
 503 031b E931FFFF 		jmp	.L18	#
 503      FF
 504              		.cfi_endproc
 505              	.LFE553:
 507              		.p2align 4,,15
 508              		.globl	vinner2
 510              	vinner2:
 511              	.LFB554:
  69:ti.c          **** 
  70:ti.c          **** float vinner2(float a[], float b[], int n)
  71:ti.c          ****  {
 512              		.loc 1 71 0
 513              		.cfi_startproc
  72:ti.c          ****   int i,nb;
  73:ti.c          ****   float s;
  74:ti.c          ****   float temp[4] __attribute__((aligned(16)));
  75:ti.c          ****   __m128 v1, v2, acc;
  76:ti.c          **** 
  77:ti.c          ****   nb = n - (n % 4);
 514              		.loc 1 77 0
 515 0320 89D1     		movl	%edx, %ecx	# n, tmp138
 516              	.LBB72:
 517              	.LBB73:
 231:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 518              		.loc 2 231 0
 519 0322 0F57C9   		xorps	%xmm1, %xmm1	# acc
 520              	.LBE73:
 521              	.LBE72:
 522              		.loc 1 77 0
 523 0325 C1F91F   		sarl	$31, %ecx	#, tmp138
 524 0328 C1E91E   		shrl	$30, %ecx	#, tmp138
 525 032b 8D040A   		leal	(%rdx,%rcx), %eax	#, D.5505
 526 032e 83E003   		andl	$3, %eax	#, D.5505
 527 0331 29C8     		subl	%ecx, %eax	# tmp138, D.5505
 528 0333 89D1     		movl	%edx, %ecx	# n, i
 529 0335 29C1     		subl	%eax, %ecx	# D.5505, i
  78:ti.c          ****   acc = _mm_xor_ps(acc,acc);
  79:ti.c          ****   for (i = 0; i < nb; i += 4)
 530              		.loc 1 79 0
 531 0337 85C9     		testl	%ecx, %ecx	# i
 532 0339 7E29     		jle	.L37	#,
 533 033b 448D41FF 		leal	-1(%rcx), %r8d	#, D.5507
 534              		.loc 1 79 0
 535 033f 31C0     		xorl	%eax, %eax	# ivtmp.184
 536 0341 41C1E802 		shrl	$2, %r8d	#,
 537 0345 49FFC0   		incq	%r8	# D.5504
 538 0348 49C1E004 		salq	$4, %r8	#, D.5504
 539 034c 0F1F4000 		.p2align 4,,7
 540              		.p2align 3
 541              	.L38:
 542              	.LBB74:
 543              	.LBB75:
 169:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 544              		.loc 2 169 0 discriminator 2
 545 0350 0F280407 		movaps	(%rdi,%rax), %xmm0	# MEM[base: a_11(D), index: ivtmp.184_63, offset: 0B], tmp147
 546 0354 0F590406 		mulps	(%rsi,%rax), %xmm0	# MEM[base: b_14(D), index: ivtmp.184_63, offset: 0B], tmp147
 547 0358 4883C010 		addq	$16, %rax	#, ivtmp.184
 548              	.LBE75:
 549              	.LBE74:
 550              		.loc 1 79 0 discriminator 2
 551 035c 4C39C0   		cmpq	%r8, %rax	# D.5504, ivtmp.184
 552              	.LBB76:
 553              	.LBB77:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 554              		.loc 2 157 0 discriminator 2
 555 035f 0F58C8   		addps	%xmm0, %xmm1	# tmp147, acc
 556              	.LBE77:
 557              	.LBE76:
 558              		.loc 1 79 0 discriminator 2
 559 0362 75EC     		jne	.L38	#,
 560              	.L37:
 561              	.LBB78:
 562              	.LBB79:
 717:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 563              		.loc 2 717 0
 564 0364 0F28D1   		movaps	%xmm1, %xmm2	# acc, tmp154
 565              	.LBE79:
 566              	.LBE78:
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
 567              		.loc 1 91 0
 568 0367 39CA     		cmpl	%ecx, %edx	# i, n
 569              	.LBB81:
 570              	.LBB80:
 717:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 571              		.loc 2 717 0
 572 0369 0FC6D14E 		shufps	$78, %xmm1, %xmm2	#, acc, tmp154
 573              	.LBE80:
 574              	.LBE81:
 575              	.LBB82:
 576              	.LBB83:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 577              		.loc 2 157 0
 578 036d 0F58D1   		addps	%xmm1, %xmm2	# acc, tmp154
 579              	.LBE83:
 580              	.LBE82:
 581              	.LBB84:
 582              	.LBB85:
 717:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 583              		.loc 2 717 0
 584 0370 0F28C2   		movaps	%xmm2, %xmm0	# tmp154, tmp158
 585 0373 0FC6C2B1 		shufps	$177, %xmm2, %xmm0	#, tmp154, tmp158
 586              	.LBE85:
 587              	.LBE84:
 588              	.LBB86:
 589              	.LBB87:
 157:/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h **** }
 590              		.loc 2 157 0
 591 0377 0F58C2   		addps	%xmm2, %xmm0	# tmp154, tmp158
 592              	.LBE87:
 593              	.LBE86:
 594              		.loc 1 91 0
 595 037a 0F8EEB00 		jle	.L61	#,
 595      0000
  71:ti.c          ****   int i,nb;
 596              		.loc 1 71 0
 597 0380 55       		pushq	%rbp	#
 598              		.cfi_def_cfa_offset 16
 599              		.cfi_offset 6, -16
 600 0381 4863E9   		movslq	%ecx, %rbp	# i, D.5511
 601 0384 4189D0   		movl	%edx, %r8d	# n, niters.130
 602 0387 48C1E502 		salq	$2, %rbp	#, D.5511
 603 038b 4129C8   		subl	%ecx, %r8d	# i, niters.130
 604 038e 4C8D0C2F 		leaq	(%rdi,%rbp), %r9	#, batmp.131
 605 0392 53       		pushq	%rbx	#
 606              		.cfi_def_cfa_offset 24
 607              		.cfi_offset 3, -24
 608 0393 4C89C8   		movq	%r9, %rax	# batmp.131, D.5510
 609 0396 83E00F   		andl	$15, %eax	#, D.5510
 610 0399 48C1E802 		shrq	$2, %rax	#, D.5510
 611 039d 48F7D8   		negq	%rax	# D.5510
 612 03a0 83E003   		andl	$3, %eax	#, D.5507
 613 03a3 4439C0   		cmpl	%r8d, %eax	# niters.130, D.5507
 614 03a6 410F47C0 		cmova	%r8d, %eax	# D.5507,, niters.130, prolog_loop_niters.134
 615              		.loc 1 91 0
 616 03aa 4183F803 		cmpl	$3, %r8d	#, niters.130
 617 03ae 410F46C0 		cmovbe	%r8d, %eax	# prologue_after_cost_adjust.135,, niters.130, prologue_after_cost_adjust.135
 618 03b2 85C0     		testl	%eax, %eax	# prologue_after_cost_adjust.135
 619 03b4 4189C2   		movl	%eax, %r10d	# prologue_after_cost_adjust.135, prologue_after_cost_adjust.135
 620 03b7 742C     		je	.L41	#,
 621 03b9 4C8D1C2E 		leaq	(%rsi,%rbp), %r11	#, D.5506
 622 03bd 8D1C08   		leal	(%rax,%rcx), %ebx	#, D.5505
 623 03c0 31C0     		xorl	%eax, %eax	# ivtmp.177
 624              	.L43:
  92:ti.c          ****    s += a[i] * b[i];
 625              		.loc 1 92 0
 626 03c2 F3410F10 		movss	(%r9,%rax), %xmm1	# MEM[base: batmp.131_77, index: ivtmp.177_131, offset: 0B], D.5509
 626      0C01
  91:ti.c          ****    s += a[i] * b[i];
 627              		.loc 1 91 0
 628 03c8 FFC1     		incl	%ecx	# i
 629              		.loc 1 92 0
 630 03ca F3410F59 		mulss	(%r11,%rax), %xmm1	# MEM[base: _91, index: ivtmp.177_131, offset: 0B], D.5509
 630      0C03
 631 03d0 4883C004 		addq	$4, %rax	#, ivtmp.177
 632 03d4 39D9     		cmpl	%ebx, %ecx	# D.5505, i
 633 03d6 F30F58C1 		addss	%xmm1, %xmm0	# D.5509, s
 634 03da 75E6     		jne	.L43	#,
 635 03dc 4539C2   		cmpl	%r8d, %r10d	# niters.130, prologue_after_cost_adjust.135
 636 03df 0F848400 		je	.L39	#,
 636      0000
 637              	.L41:
 638 03e5 4529D0   		subl	%r10d, %r8d	# prologue_after_cost_adjust.135, niters.137
 639 03e8 4489D0   		movl	%r10d, %eax	# prologue_after_cost_adjust.135, prolog_loop_adjusted_niters.136
 640 03eb 4589C3   		movl	%r8d, %r11d	# niters.137, bnd.138
 641 03ee 41C1EB02 		shrl	$2, %r11d	#, bnd.138
 642 03f2 4489DB   		movl	%r11d, %ebx	# bnd.138, ratio_mult_vf.139
 643 03f5 C1E302   		sall	$2, %ebx	#, ratio_mult_vf.139
 644 03f8 7446     		je	.L45	#,
  91:ti.c          ****    s += a[i] * b[i];
 645              		.loc 1 91 0
 646 03fa 0F57C9   		xorps	%xmm1, %xmm1	# vect_s.152
 647 03fd 48C1E002 		salq	$2, %rax	#, base_off.143
 648 0401 4801F5   		addq	%rsi, %rbp	# b, batmp.147
 649 0404 4901C1   		addq	%rax, %r9	# base_off.143, vect_p.144
 650 0407 4801C5   		addq	%rax, %rbp	# base_off.143, vect_p.149
 651 040a 4531D2   		xorl	%r10d, %r10d	# ivtmp.163
 652 040d 31C0     		xorl	%eax, %eax	# ivtmp.166
 653              	.L50:
 654              		.loc 1 92 0 discriminator 2
 655 040f 0F125405 		movlps	0(%rbp,%rax), %xmm2	# MEM[base: vect_p.149_120, index: ivtmp.166_90, offset: 0B], vect_var_
 655      00
 656 0414 41FFC2   		incl	%r10d	# ivtmp.163
 657 0417 0F165405 		movhps	8(%rbp,%rax), %xmm2	# MEM[base: vect_p.149_120, index: ivtmp.166_90, offset: 0B], vect_var_
 657      08
 658 041c 410F5914 		mulps	(%r9,%rax), %xmm2	# MEM[base: vect_p.144_111, index: ivtmp.166_90, offset: 0B], vect_var_.15
 658      01
 659 0421 4883C010 		addq	$16, %rax	#, ivtmp.166
 660 0425 4539D3   		cmpl	%r10d, %r11d	# ivtmp.163, bnd.138
 661 0428 0F58CA   		addps	%xmm2, %xmm1	# vect_var_.151, vect_s.152
 662 042b 77E2     		ja	.L50	#,
 663 042d 01D9     		addl	%ebx, %ecx	# ratio_mult_vf.139, i
 664 042f 4139D8   		cmpl	%ebx, %r8d	# ratio_mult_vf.139, niters.137
 665 0432 F20F7CC9 		haddps	%xmm1, %xmm1	# vect_s.152, vect_s.154
 666 0436 F20F7CC9 		haddps	%xmm1, %xmm1	# vect_s.154, vect_s.154
 667 043a F30F58C1 		addss	%xmm1, %xmm0	# stmp_s.153, s
 668 043e 7429     		je	.L39	#,
 669              	.L45:
 670 0440 4863C1   		movslq	%ecx, %rax	# i, D.5504
 671 0443 48C1E002 		salq	$2, %rax	#, D.5504
 672 0447 4801C7   		addq	%rax, %rdi	# D.5504, D.5506
 673 044a 4801C6   		addq	%rax, %rsi	# D.5504, D.5506
  91:ti.c          ****    s += a[i] * b[i];
 674              		.loc 1 91 0
 675 044d 31C0     		xorl	%eax, %eax	# ivtmp.157
 676              	.L49:
 677              		.loc 1 92 0
 678 044f F30F100C 		movss	(%rsi,%rax,4), %xmm1	# MEM[base: _21, index: ivtmp.157_101, step: 4, offset: 0B], D.5509
 678      86
 679 0454 F30F590C 		mulss	(%rdi,%rax,4), %xmm1	# MEM[base: _18, index: ivtmp.157_101, step: 4, offset: 0B], D.5509
 679      87
 680 0459 48FFC0   		incq	%rax	# ivtmp.157
 681 045c 448D0401 		leal	(%rcx,%rax), %r8d	#, D.5507
  91:ti.c          ****    s += a[i] * b[i];
 682              		.loc 1 91 0
 683 0460 4439C2   		cmpl	%r8d, %edx	# D.5507, n
 684              		.loc 1 92 0
 685 0463 F30F58C1 		addss	%xmm1, %xmm0	# D.5509, s
  91:ti.c          ****    s += a[i] * b[i];
 686              		.loc 1 91 0
 687 0467 7FE6     		jg	.L49	#,
 688              	.L39:
  93:ti.c          ****   return s;
  94:ti.c          ****  }
 689              		.loc 1 94 0
 690 0469 5B       		popq	%rbx	#
 691              		.cfi_restore 3
 692              		.cfi_def_cfa_offset 16
 693 046a 5D       		popq	%rbp	#
 694              		.cfi_restore 6
 695              		.cfi_def_cfa_offset 8
 696              	.L61:
 697 046b F3C3     		rep ret
 698              		.cfi_endproc
 699              	.LFE554:
 701              		.section	.rodata.str1.1
 702              	.LC6:
 703 0015 76656374 		.string	"vector s = %g\n"
 703      6F722073 
 703      203D2025 
 703      670A00
 704              	.LC7:
 705 0024 76656374 		.string	"vector2 s = %g\n"
 705      6F723220 
 705      73203D20 
 705      25670A00 
 706              		.section	.text.startup,"ax",@progbits
 707              		.p2align 4,,15
 708              		.globl	main
 710              	main:
 711              	.LFB551:
  11:ti.c          **** 
 712              		.loc 1 11 0
 713              		.cfi_startproc
 714              	.LVL42:
 715 0000 53       		pushq	%rbx	#
 716              		.cfi_def_cfa_offset 16
 717              		.cfi_offset 3, -16
 718 0001 31C0     		xorl	%eax, %eax	# ivtmp.230
 719 0003 4881EC40 		subq	$8000, %rsp	#,
 719      1F0000
 720              		.cfi_def_cfa_offset 8016
 721 000a 660F6F1D 		movdqa	.LC4(%rip), %xmm3	#, vect_cst_.205
 721      00000000 
  11:ti.c          **** 
 722              		.loc 1 11 0
 723 0012 660F6F05 		movdqa	.LC3(%rip), %xmm0	#, vect_vec_iv_.206
 723      00000000 
 724 001a 0F281500 		movaps	.LC5(%rip), %xmm2	#, tmp101
 724      000000
 725 0021 EB09     		jmp	.L64	#
 726              	.LVL43:
 727              		.p2align 4,,7
 728 0023 0F1F4400 		.p2align 3
 728      00
 729              	.L68:
 730 0028 660F6FC1 		movdqa	%xmm1, %xmm0	# vect_vec_iv_.206, vect_vec_iv_.206
 731              	.L64:
 732 002c 660F6FC8 		movdqa	%xmm0, %xmm1	# vect_vec_iv_.206, vect_vec_iv_.206
  19:ti.c          ****     b[i] = 1;
 733              		.loc 1 19 0 discriminator 2
 734 0030 0F5BC0   		cvtdq2ps	%xmm0, %xmm0	# vect_vec_iv_.206, tmp82
  20:ti.c          ****    }
 735              		.loc 1 20 0 discriminator 2
 736 0033 0F299404 		movaps	%xmm2, 4000(%rsp,%rax)	# tmp101, MEM[symbol: b, index: ivtmp.230_55, offset: 0B]
 736      A00F0000 
 737 003b 660FFECB 		paddd	%xmm3, %xmm1	# vect_cst_.205, vect_vec_iv_.206
  19:ti.c          ****     b[i] = 1;
 738              		.loc 1 19 0 discriminator 2
 739 003f 0F290404 		movaps	%xmm0, (%rsp,%rax)	# tmp82, MEM[symbol: a, index: ivtmp.230_55, offset: 0B]
 740 0043 4883C010 		addq	$16, %rax	#, ivtmp.230
 741 0047 483DA00F 		cmpq	$4000, %rax	#, ivtmp.230
 741      0000
 742 004d 75D9     		jne	.L68	#,
  20:ti.c          ****    }
 743              		.loc 1 20 0
 744 004f 0F57C9   		xorps	%xmm1, %xmm1	# vect_s0.199
 745 0052 31C0     		xorl	%eax, %eax	# ivtmp.222
 746              		.p2align 4,,7
 747 0054 0F1F4000 		.p2align 3
 748              	.L66:
 749              	.LBB88:
 750              	.LBB89:
  40:ti.c          ****   return s;
 751              		.loc 1 40 0
 752 0058 0F288404 		movaps	4000(%rsp,%rax), %xmm0	# MEM[symbol: b, index: ivtmp.222_46, offset: 0B], vect_var_.198
 752      A00F0000 
 753 0060 0F590404 		mulps	(%rsp,%rax), %xmm0	# MEM[symbol: a, index: ivtmp.222_46, offset: 0B], vect_var_.198
 754 0064 4883C010 		addq	$16, %rax	#, ivtmp.222
 755 0068 483DA00F 		cmpq	$4000, %rax	#, ivtmp.222
 755      0000
 756 006e 0F58C8   		addps	%xmm0, %xmm1	# vect_var_.198, vect_s0.199
 757              	.LVL44:
 758 0071 75E5     		jne	.L66	#,
 759              	.LVL45:
 760 0073 F20F7CC9 		haddps	%xmm1, %xmm1	# vect_s0.199, vect_s0.201
 761              	.LBE89:
 762              	.LBE88:
 763              	.LBB90:
 764              	.LBB91:
 765              		.loc 3 104 0
 766 0077 BE000000 		movl	$.LC2, %esi	#,
 766      00
 767              	.LVL46:
 768 007c BF010000 		movl	$1, %edi	#,
 768      00
 769              	.LVL47:
 770 0081 B8010000 		movl	$1, %eax	#,
 770      00
 771              	.LBE91:
 772              	.LBE90:
  26:ti.c          ****   printf("vector s = %g\n",s1);
 773              		.loc 1 26 0
 774 0086 31DB     		xorl	%ebx, %ebx	# n
 775 0088 F20F7CC9 		haddps	%xmm1, %xmm1	# vect_s0.201, vect_s0.201
 776 008c 0F28C1   		movaps	%xmm1, %xmm0	#, stmp_s0.200
  24:ti.c          **** 
 777              		.loc 1 24 0
 778 008f F30F5AC0 		cvtss2sd	%xmm0, %xmm0	# stmp_s0.200, D.5561
 779              	.LBB93:
 780              	.LBB92:
 781              		.loc 3 104 0
 782 0093 E8000000 		call	__printf_chk	#
 782      00
 783              	.LVL48:
 784              	.LBE92:
 785              	.LBE93:
  26:ti.c          ****   printf("vector s = %g\n",s1);
 786              		.loc 1 26 0
 787 0098 488DB424 		leaq	4000(%rsp), %rsi	#, tmp105
 787      A00F0000 
 788 00a0 89DA     		movl	%ebx, %edx	# n,
 789 00a2 4889E7   		movq	%rsp, %rdi	#,
 790 00a5 31C0     		xorl	%eax, %eax	#
 791 00a7 E8000000 		call	vinner1	#
 791      00
 792              	.LVL49:
 793 00ac F30F2AC0 		cvtsi2ss	%eax, %xmm0	# D.5562, s1
 794              	.LVL50:
 795              	.LBB94:
 796              	.LBB95:
 797              		.loc 3 104 0
 798 00b0 BE000000 		movl	$.LC6, %esi	#,
 798      00
 799 00b5 BF010000 		movl	$1, %edi	#,
 799      00
 800 00ba B8010000 		movl	$1, %eax	#,
 800      00
 801              	.LBE95:
 802              	.LBE94:
  27:ti.c          **** 
 803              		.loc 1 27 0
 804 00bf F30F5AC0 		cvtss2sd	%xmm0, %xmm0	# s1, D.5561
 805              	.LVL51:
 806              	.LBB97:
 807              	.LBB96:
 808              		.loc 3 104 0
 809 00c3 E8000000 		call	__printf_chk	#
 809      00
 810              	.LVL52:
 811              	.LBE96:
 812              	.LBE97:
  29:ti.c          ****   printf("vector2 s = %g\n",s2);
 813              		.loc 1 29 0
 814 00c8 488DB424 		leaq	4000(%rsp), %rsi	#, tmp106
 814      A00F0000 
 815 00d0 89DA     		movl	%ebx, %edx	# n,
 816 00d2 4889E7   		movq	%rsp, %rdi	#,
 817 00d5 E8000000 		call	vinner2	#
 817      00
 818              	.LVL53:
  30:ti.c          ****  }
 819              		.loc 1 30 0
 820 00da F30F5AC0 		cvtss2sd	%xmm0, %xmm0	# s2, D.5561
 821              	.LVL54:
 822              	.LBB98:
 823              	.LBB99:
 824              		.loc 3 104 0
 825 00de BE000000 		movl	$.LC7, %esi	#,
 825      00
 826 00e3 BF010000 		movl	$1, %edi	#,
 826      00
 827 00e8 B8010000 		movl	$1, %eax	#,
 827      00
 828 00ed E8000000 		call	__printf_chk	#
 828      00
 829              	.LVL55:
 830              	.LBE99:
 831              	.LBE98:
  31:ti.c          **** 
 832              		.loc 1 31 0
 833 00f2 4881C440 		addq	$8000, %rsp	#,
 833      1F0000
 834              		.cfi_def_cfa_offset 16
 835 00f9 5B       		popq	%rbx	#
 836              		.cfi_def_cfa_offset 8
 837 00fa C3       		ret
 838              		.cfi_endproc
 839              	.LFE551:
 841              		.section	.rodata.cst16,"aM",@progbits,16
 842              		.align 16
 843              	.LC3:
 844 0000 00000000 		.long	0
 845 0004 01000000 		.long	1
 846 0008 02000000 		.long	2
 847 000c 03000000 		.long	3
 848              		.align 16
 849              	.LC4:
 850 0010 04000000 		.long	4
 851 0014 04000000 		.long	4
 852 0018 04000000 		.long	4
 853 001c 04000000 		.long	4
 854              		.align 16
 855              	.LC5:
 856 0020 0000803F 		.long	1065353216
 857 0024 0000803F 		.long	1065353216
 858 0028 0000803F 		.long	1065353216
 859 002c 0000803F 		.long	1065353216
 860              		.text
 861              	.Letext0:
 862              		.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
 863              		.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
 864              		.file 6 "/usr/include/libio.h"
 865              		.file 7 "/usr/include/stdio.h"
