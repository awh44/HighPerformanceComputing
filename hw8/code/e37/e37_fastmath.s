
Analyzing loop at e37.c:57

e37.c:57: note: ===== analyze_loop_nest =====
e37.c:57: note: === vect_analyze_loop_form ===
e37.c:57: note: === get_loop_niters ===
e37.c:57: note: ==> get_loop_niters:256
e37.c:57: note: === vect_analyze_data_refs ===

e37.c:57: note: not vectorized: no vectype for stmt: _23 = MEM[(__v4sf *)_13];
 scalar_type: __v4sf
e37.c:57: note: bad data references.
Analyzing loop at e37.c:52

e37.c:52: note: ===== analyze_loop_nest =====
e37.c:52: note: === vect_analyze_loop_form ===
e37.c:52: note: === get_loop_niters ===
e37.c:52: note: ==> get_loop_niters:1024
e37.c:52: note: === vect_analyze_data_refs ===

e37.c:52: note: get vectype with 4 units of type float
e37.c:52: note: vectype: vector(4) float
e37.c:52: note: === vect_analyze_scalar_cycles ===
e37.c:52: note: Analyze phi: i_32 = PHI <i_10(4), 0(2)>

e37.c:52: note: Access function of PHI: {0, +, 1}_1
e37.c:52: note: step: 1,  init: 0
e37.c:52: note: Detected induction.
e37.c:52: note: Analyze phi: .MEM_34 = PHI <.MEM_9(4), .MEM_7(2)>

e37.c:52: note: Analyze phi: ivtmp_15 = PHI <ivtmp_30(4), 1024(2)>

e37.c:52: note: Access function of PHI: {1024, +, 4294967295}_1
e37.c:52: note: step: 4294967295,  init: 1024
e37.c:52: note: Detected induction.
e37.c:52: note: === vect_pattern_recog ===
e37.c:52: note: === vect_mark_stmts_to_be_vectorized ===
e37.c:52: note: init: phi relevant? i_32 = PHI <i_10(4), 0(2)>

e37.c:52: note: init: phi relevant? .MEM_34 = PHI <.MEM_9(4), .MEM_7(2)>

e37.c:52: note: init: phi relevant? ivtmp_15 = PHI <ivtmp_30(4), 1024(2)>

e37.c:52: note: init: stmt relevant? # DEBUG i => i_32

e37.c:52: note: init: stmt relevant? _8 = (float) i_32;

e37.c:52: note: init: stmt relevant? x[i_32] = _8;

e37.c:52: note: vec_stmt_relevant_p: stmt has vdefs.
e37.c:52: note: mark relevant 4, live 0.
e37.c:52: note: init: stmt relevant? i_10 = i_32 + 1;

e37.c:52: note: init: stmt relevant? # DEBUG i => i_10

e37.c:52: note: init: stmt relevant? # DEBUG i => i_10

e37.c:52: note: init: stmt relevant? ivtmp_30 = ivtmp_15 - 1;

e37.c:52: note: init: stmt relevant? if (ivtmp_30 != 0)

e37.c:52: note: worklist: examine stmt: x[i_32] = _8;

e37.c:52: note: vect_is_simple_use: operand _8
e37.c:52: note: def_stmt: _8 = (float) i_32;

e37.c:52: note: type of def: 3.
e37.c:52: note: mark relevant 4, live 0.
e37.c:52: note: worklist: examine stmt: _8 = (float) i_32;

e37.c:52: note: vect_is_simple_use: operand i_32
e37.c:52: note: def_stmt: i_32 = PHI <i_10(4), 0(2)>

e37.c:52: note: type of def: 4.
e37.c:52: note: mark relevant 4, live 0.
e37.c:52: note: worklist: examine stmt: i_32 = PHI <i_10(4), 0(2)>

e37.c:52: note: vect_is_simple_use: operand i_10
e37.c:52: note: def_stmt: i_10 = i_32 + 1;

e37.c:52: note: type of def: 3.
e37.c:52: note: mark relevant 4, live 0.
e37.c:52: note: vect_is_simple_use: operand 0
e37.c:52: note: worklist: examine stmt: i_10 = i_32 + 1;

e37.c:52: note: vect_is_simple_use: operand i_32
e37.c:52: note: def_stmt: i_32 = PHI <i_10(4), 0(2)>

e37.c:52: note: type of def: 4.
e37.c:52: note: mark relevant 4, live 0.
e37.c:52: note: already marked relevant/live.
e37.c:52: note: === vect_analyze_dependences ===
e37.c:52: note: === vect_determine_vectorization_factor ===
e37.c:52: note: ==> examining phi: i_32 = PHI <i_10(4), 0(2)>

e37.c:52: note: get vectype for scalar type:  int
e37.c:52: note: get vectype with 4 units of type int
e37.c:52: note: vectype: vector(4) int
e37.c:52: note: vectype: vector(4) int
e37.c:52: note: nunits = 4
e37.c:52: note: ==> examining phi: .MEM_34 = PHI <.MEM_9(4), .MEM_7(2)>

e37.c:52: note: ==> examining phi: ivtmp_15 = PHI <ivtmp_30(4), 1024(2)>

e37.c:52: note: ==> examining statement: # DEBUG i => i_32

e37.c:52: note: skip.
e37.c:52: note: ==> examining statement: _8 = (float) i_32;

e37.c:52: note: get vectype for scalar type:  float
e37.c:52: note: get vectype with 4 units of type float
e37.c:52: note: vectype: vector(4) float
e37.c:52: note: get vectype for scalar type:  float
e37.c:52: note: get vectype with 4 units of type float
e37.c:52: note: vectype: vector(4) float
e37.c:52: note: vectype: vector(4) float
e37.c:52: note: nunits = 4
e37.c:52: note: ==> examining statement: x[i_32] = _8;

e37.c:52: note: get vectype for scalar type:  float
e37.c:52: note: get vectype with 4 units of type float
e37.c:52: note: vectype: vector(4) float
e37.c:52: note: vectype: vector(4) float
e37.c:52: note: nunits = 4
e37.c:52: note: ==> examining statement: i_10 = i_32 + 1;

e37.c:52: note: get vectype for scalar type:  int
e37.c:52: note: get vectype with 4 units of type int
e37.c:52: note: vectype: vector(4) int
e37.c:52: note: get vectype for scalar type:  int
e37.c:52: note: get vectype with 4 units of type int
e37.c:52: note: vectype: vector(4) int
e37.c:52: note: vectype: vector(4) int
e37.c:52: note: nunits = 4
e37.c:52: note: ==> examining statement: # DEBUG i => i_10

e37.c:52: note: skip.
e37.c:52: note: ==> examining statement: # DEBUG i => i_10

e37.c:52: note: skip.
e37.c:52: note: ==> examining statement: ivtmp_30 = ivtmp_15 - 1;

e37.c:52: note: skip.
e37.c:52: note: ==> examining statement: if (ivtmp_30 != 0)

e37.c:52: note: skip.
e37.c:52: note: vectorization factor = 4
e37.c:52: note: === vect_analyze_data_refs_alignment ===
e37.c:52: note: vect_compute_data_ref_alignment:
e37.c:52: note: misalign = 0 bytes of ref x[i_32]
e37.c:52: note: === vect_analyze_data_ref_accesses ===
e37.c:52: note: === vect_prune_runtime_alias_test_list ===
e37.c:52: note: === vect_enhance_data_refs_alignment ===
e37.c:52: note: vect_can_advance_ivs_p:
e37.c:52: note: Analyze phi: i_32 = PHI <i_10(4), 0(2)>

e37.c:52: note: Access function of PHI: {0, +, 1}_1
e37.c:52: note: Analyze phi: .MEM_34 = PHI <.MEM_9(4), .MEM_7(2)>

e37.c:52: note: virtual phi. skip.
e37.c:52: note: Analyze phi: ivtmp_15 = PHI <ivtmp_30(4), 1024(2)>

e37.c:52: note: Access function of PHI: {1024, +, 4294967295}_1
e37.c:52: note: === vect_analyze_slp ===
e37.c:52: note: === vect_make_slp_decision ===
e37.c:52: note: === vect_detect_hybrid_slp ===
e37.c:52: note: === vect_analyze_loop_operations ===
e37.c:52: note: examining phi: i_32 = PHI <i_10(4), 0(2)>

e37.c:52: note: === vectorizable_induction ===
e37.c:52: note: vect_model_induction_cost: inside_cost = 0, prologue_cost = 0 .
e37.c:52: note: examining phi: .MEM_34 = PHI <.MEM_9(4), .MEM_7(2)>

e37.c:52: note: examining phi: ivtmp_15 = PHI <ivtmp_30(4), 1024(2)>

e37.c:52: note: ==> examining statement: # DEBUG i => i_32

e37.c:52: note: irrelevant.
e37.c:52: note: ==> examining statement: _8 = (float) i_32;

e37.c:52: note: vect_is_simple_use: operand i_32
e37.c:52: note: def_stmt: i_32 = PHI <i_10(4), 0(2)>

e37.c:52: note: type of def: 4.
e37.c:52: note: === vectorizable_conversion ===
e37.c:52: note: vect_model_simple_cost: inside_cost = 0, prologue_cost = 0 .
e37.c:52: note: ==> examining statement: x[i_32] = _8;

e37.c:52: note: vect_is_simple_use: operand _8
e37.c:52: note: def_stmt: _8 = (float) i_32;

e37.c:52: note: type of def: 3.
e37.c:52: note: vect_model_store_cost: aligned.
e37.c:52: note: vect_model_store_cost: inside_cost = 0, prologue_cost = 0 .
e37.c:52: note: ==> examining statement: i_10 = i_32 + 1;

e37.c:52: note: vect_is_simple_use: operand i_32
e37.c:52: note: def_stmt: i_32 = PHI <i_10(4), 0(2)>

e37.c:52: note: type of def: 4.
e37.c:52: note: vect_is_simple_use: operand 1
e37.c:52: note: === vectorizable_operation ===
e37.c:52: note: vect_model_simple_cost: inside_cost = 0, prologue_cost = 0 .
e37.c:52: note: ==> examining statement: # DEBUG i => i_10

e37.c:52: note: irrelevant.
e37.c:52: note: ==> examining statement: # DEBUG i => i_10

e37.c:52: note: irrelevant.
e37.c:52: note: ==> examining statement: ivtmp_30 = ivtmp_15 - 1;

e37.c:52: note: irrelevant.
e37.c:52: note: ==> examining statement: if (ivtmp_30 != 0)

e37.c:52: note: irrelevant.
e37.c:52: note: vectorization_factor = 4, niters = 1024
e37.c:52: note: === vect_update_slp_costs_according_to_vf ===
e37.c:52: note: cost model disabled.

Vectorizing loop at e37.c:52

e37.c:52: note: === vec_transform_loop ===
e37.c:52: note: ------>vectorizing phi: i_32 = PHI <i_10(4), 0(9)>

e37.c:52: note: transform phi.
e37.c:52: note: transform induction phi.
e37.c:52: note: get vectype with 4 units of type int
e37.c:52: note: vectype: vector(4) int
e37.c:52: note: get vectype with 4 units of type int
e37.c:52: note: vectype: vector(4) int
e37.c:52: note: created new init_stmt: stmp_var_.18_28 = 0 + 1;

e37.c:52: note: created new init_stmt: stmp_var_.18_31 = stmp_var_.18_28 + 1;

e37.c:52: note: created new init_stmt: stmp_var_.18_29 = stmp_var_.18_31 + 1;

e37.c:52: note: created new init_stmt: vect_cst_.19_27 = {0, stmp_var_.18_28, stmp_var_.18_31, stmp_var_.18_29};

e37.c:52: note: get vectype with 4 units of type int
e37.c:52: note: vectype: vector(4) int
e37.c:52: note: created new init_stmt: vect_cst_.20_4 = { 4, 4, 4, 4 };

e37.c:52: note: transform induction: created def-use cycle: vect_vec_iv_.21_3 = PHI <vect_vec_iv_.21_37(4), vect_cst_.19_27(9)>

vect_vec_iv_.21_37 = vect_vec_iv_.21_3 + vect_cst_.20_4;

e37.c:52: note: ------>vectorizing phi: .MEM_34 = PHI <.MEM_9(4), .MEM_7(9)>

e37.c:52: note: ------>vectorizing phi: ivtmp_15 = PHI <ivtmp_30(4), 1024(9)>

e37.c:52: note: ------>vectorizing phi: vect_vec_iv_.21_3 = PHI <vect_vec_iv_.21_37(4), vect_cst_.19_27(9)>

e37.c:52: note: ------>vectorizing statement: vect_vec_iv_.21_37 = vect_vec_iv_.21_3 + vect_cst_.20_4;

e37.c:52: note: ------>vectorizing statement: # DEBUG i => i_32

e37.c:52: note: ------>vectorizing statement: _8 = (float) i_32;

e37.c:52: note: transform statement.
e37.c:52: note: vect_is_simple_use: operand i_32
e37.c:52: note: def_stmt: i_32 = PHI <i_10(4), 0(9)>

e37.c:52: note: type of def: 4.
e37.c:52: note: transform conversion. ncopies = 1.
e37.c:52: note: vect_get_vec_def_for_operand: i_32
e37.c:52: note: vect_is_simple_use: operand i_32
e37.c:52: note: def_stmt: i_32 = PHI <i_10(4), 0(9)>

e37.c:52: note: type of def: 4.
e37.c:52: note: def =  i_32  def_stmt =  i_32 = PHI <i_10(4), 0(9)>

e37.c:52: note: add new stmt: vect_var_.22_38 = (vector(4) float) vect_vec_iv_.21_3;

e37.c:52: note: ------>vectorizing statement: x[i_32] = _8;

e37.c:52: note: transform statement.
e37.c:52: note: vect_is_simple_use: operand _8
e37.c:52: note: def_stmt: _8 = (float) i_32;

e37.c:52: note: type of def: 3.
e37.c:52: note: transform store. ncopies = 1
e37.c:52: note: vect_get_vec_def_for_operand: _8
e37.c:52: note: vect_is_simple_use: operand _8
e37.c:52: note: def_stmt: _8 = (float) i_32;

e37.c:52: note: type of def: 3.
e37.c:52: note: def =  _8  def_stmt =  _8 = (float) i_32;

e37.c:52: note: create vector_type-pointer variable to type: vector(4) float  vectorizing an array ref: x
e37.c:52: note: created vect_px.26_39
e37.c:52: note: add new stmt: MEM[(float[1024] *)vect_px.23_40] = vect_var_.22_38;

e37.c:52: note: ------>vectorizing statement: i_10 = i_32 + 1;

e37.c:52: note: transform statement.
e37.c:52: note: vect_is_simple_use: operand i_32
e37.c:52: note: def_stmt: i_32 = PHI <i_10(4), 0(9)>

e37.c:52: note: type of def: 4.
e37.c:52: note: vect_is_simple_use: operand 1
e37.c:52: note: transform binary/unary operation.
e37.c:52: note: vect_get_vec_def_for_operand: i_32
e37.c:52: note: vect_is_simple_use: operand i_32
e37.c:52: note: def_stmt: i_32 = PHI <i_10(4), 0(9)>

e37.c:52: note: type of def: 4.
e37.c:52: note: def =  i_32  def_stmt =  i_32 = PHI <i_10(4), 0(9)>

e37.c:52: note: vect_get_vec_def_for_operand: 1
e37.c:52: note: vect_is_simple_use: operand 1
e37.c:52: note: get vectype with 4 units of type int
e37.c:52: note: vectype: vector(4) int
e37.c:52: note: Create vector_cst. nunits = 4
e37.c:52: note: created new init_stmt: vect_cst_.28_9 = { 1, 1, 1, 1 };

e37.c:52: note: add new stmt: vect_i.27_43 = vect_vec_iv_.21_3 + vect_cst_.28_9;

e37.c:52: note: ------>vectorizing statement: # DEBUG i => i_10

e37.c:52: note: ------>vectorizing statement: # DEBUG i => i_10

e37.c:52: note: ------>vectorizing statement: ivtmp_30 = ivtmp_15 - 1;

e37.c:52: note: ------>vectorizing statement: vect_px.23_41 = vect_px.23_40 + 16;

e37.c:52: note: ------>vectorizing statement: if (ivtmp_30 != 0)

loop at e37.c:54: if (ivtmp_45 < 256)

e37.c:52: note: LOOP VECTORIZED.
e37.c:45: note: vectorized 1 loops in function.

e37.c:49: note: ===vect_slp_analyze_bb===

e37.c:49: note: === vect_analyze_data_refs ===

e37.c:49: note: not vectorized: no vectype for stmt: ind = { 0.0, 1.0e+0, 2.0e+0, 3.0e+0 };
 scalar_type: __m128
e37.c:49: note: === vect_pattern_recog ===
e37.c:49: note: === vect_analyze_dependences ===
e37.c:49: note: === vect_analyze_data_refs_alignment ===
e37.c:49: note: === vect_analyze_data_ref_accesses ===
e37.c:49: note: === vect_analyze_slp ===
e37.c:49: note: Failed to SLP the basic block.
e37.c:49: note: not vectorized: failed to find SLP opportunities in basic block.

e37.c:54: note: ===vect_slp_analyze_bb===

e37.c:54: note: === vect_analyze_data_refs ===

e37.c:54: note: not vectorized: no vectype for stmt: MEM[(float[1024] *)vect_px.23_40] = vect_var_.22_38;
 scalar_type: vector(4) float
e37.c:54: note: === vect_pattern_recog ===
e37.c:54: note: === vect_analyze_dependences ===
e37.c:54: note: === vect_analyze_data_refs_alignment ===
e37.c:54: note: === vect_analyze_data_ref_accesses ===
e37.c:54: note: === vect_analyze_slp ===
e37.c:54: note: Failed to SLP the basic block.
e37.c:54: note: not vectorized: failed to find SLP opportunities in basic block.

e37.c:45: note: ===vect_slp_analyze_bb===

e37.c:45: note: === vect_analyze_data_refs ===

e37.c:45: note: not vectorized: not enough data-refs in basic block.

e37.c:45: note: ===vect_slp_analyze_bb===

e37.c:45: note: === vect_analyze_data_refs ===

e37.c:45: note: not vectorized: not enough data-refs in basic block.

e37.c:59: note: ===vect_slp_analyze_bb===

e37.c:59: note: === vect_analyze_data_refs ===

e37.c:59: note: not vectorized: no vectype for stmt: _23 = MEM[(__v4sf *)_13];
 scalar_type: __v4sf
e37.c:59: note: === vect_pattern_recog ===
e37.c:59: note: vect_is_simple_use: operand _11
e37.c:59: note: def_stmt: _11 = (long unsigned int) i_33;

e37.c:59: note: type of def: 3.
e37.c:59: note: vect_is_simple_use: operand i_33
e37.c:59: note: def_stmt: i_33 = PHI <i_19(7), 0(5)>

e37.c:59: note: type of def: 2.
e37.c:59: note: vect_is_simple_use: operand 4
e37.c:59: note: === vect_analyze_dependences ===
e37.c:59: note: === vect_analyze_data_refs_alignment ===
e37.c:59: note: === vect_analyze_data_ref_accesses ===
e37.c:59: note: === vect_analyze_slp ===
e37.c:59: note: Failed to SLP the basic block.
e37.c:59: note: not vectorized: failed to find SLP opportunities in basic block.

e37.c:45: note: ===vect_slp_analyze_bb===

e37.c:45: note: === vect_analyze_data_refs ===

e37.c:45: note: not vectorized: not enough data-refs in basic block.

e37.c:65: note: ===vect_slp_analyze_bb===

e37.c:65: note: === vect_analyze_data_refs ===

e37.c:65: note: not vectorized: no vectype for stmt: x_vec = x_vec_lsm.16_36;
 scalar_type: __m128
e37.c:65: note: === vect_pattern_recog ===
e37.c:65: note: === vect_analyze_dependences ===
e37.c:65: note: === vect_analyze_data_refs_alignment ===
e37.c:65: note: === vect_analyze_data_ref_accesses ===
e37.c:65: note: === vect_analyze_slp ===
e37.c:65: note: Failed to SLP the basic block.
e37.c:65: note: not vectorized: failed to find SLP opportunities in basic block.
   1              		.file	"e37.c"
   2              	# GNU C (Ubuntu 4.8.4-2ubuntu1~14.04) version 4.8.4 (x86_64-linux-gnu)
   3              	#	compiled by GNU C version 4.8.4, GMP version 5.1.3, MPFR version 3.1.2-p3, MPC version 1.0.1
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -imultiarch x86_64-linux-gnu e37.c -mtune=opteron-sse3
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
  57              	.LFB566:
  58              		.file 1 "e37.c"
   1:e37.c         **** #include <x86intrin.h>
   2:e37.c         **** 
   3:e37.c         **** //void addindex(float *x, int n)
   4:e37.c         **** // {
   5:e37.c         **** //  int i;
   6:e37.c         **** //  for (i = 0; i < n; i++)
   7:e37.c         **** //   x[i] = x[i] + i;
   8:e37.c         **** // }
   9:e37.c         **** 
  10:e37.c         **** // n a multiple of 4, x is 16-byte aligned
  11:e37.c         **** //void addindex_vec(float *x, int n)
  12:e37.c         **** // {
  13:e37.c         **** //  __m128 index, x_vec;
  14:e37.c         **** //  int i;
  15:e37.c         **** //
  16:e37.c         **** //  for (i = 0; i < n; i+=4)
  17:e37.c         **** //   {
  18:e37.c         **** //    x_vec = _mm_load_ps(x+i); // load 4 floats
  19:e37.c         **** //    index = _mm_set_ps(i+3, i+2, i+1, i); // create vector with indexes
  20:e37.c         **** //    x_vec = _mm_add_ps(x_vec, index); // add the two
  21:e37.c         **** //    _mm_store_ps(x+i, x_vec); // store back
  22:e37.c         **** //   }
  23:e37.c         **** // }
  24:e37.c         **** 
  25:e37.c         **** // n a multiple of 4, x is 16-byte aligned
  26:e37.c         **** //void addindex_vec(float *x, int n) {
  27:e37.c         **** //  __m128 x_vec, init, incr;
  28:e37.c         **** //
  29:e37.c         **** //ind  = _mm_set_ps(3, 2, 1, 0);
  30:e37.c         **** //incr = _mm_set1_ps(4);
  31:e37.c         **** //for (int i = 0; i < n; i+=4) {
  32:e37.c         **** //    x_vec = _mm_load_ps(x+i);              // load 4 floats
  33:e37.c         **** //    x_vec = _mm_add_ps(x_vec, ind);        // add the two
  34:e37.c         **** //    ind   = _mm_add_ps(ind, incr);         // update ind
  35:e37.c         **** //    _mm_store_ps(x+i, x_vec);              // store back
  36:e37.c         **** //  }
  37:e37.c         **** //}
  38:e37.c         **** 
  39:e37.c         **** #define SIZE 1024
  40:e37.c         **** 
  41:e37.c         **** float __attribute__((aligned (16))) x[SIZE];
  42:e37.c         **** __m128 x_vec, ind, incr;
  43:e37.c         **** int dx();
  44:e37.c         **** 
  45:e37.c         **** int main(int argc, char *argv[])
  46:e37.c         ****  {
  59              		.loc 1 46 0
  60              		.cfi_startproc
  61              	.LVL0:
  47:e37.c         ****   int i, n;
  48:e37.c         **** 
  49:e37.c         ****   ind  = _mm_set_ps(3, 2, 1, 0);
  50:e37.c         ****   incr = _mm_set1_ps(4);
  62              		.loc 1 50 0
  63 0000 0F281500 		movaps	.LC2(%rip), %xmm2	#, tmp99
  63      000000
  64 0007 BA000000 		movl	$x+4096, %edx	#, D.4726
  64      00
  65 000c B8000000 		movl	$x, %eax	#, ivtmp.41
  65      00
  66 0011 0F291500 		movaps	%xmm2, incr(%rip)	# tmp99, incr
  66      000000
  67              	.LVL1:
  68 0018 660F6F1D 		movdqa	.LC3(%rip), %xmm3	#, vect_cst_.20
  68      00000000 
  69 0020 660F6F05 		movdqa	.LC0(%rip), %xmm0	#, vect_vec_iv_.21
  69      00000000 
  70 0028 EB0A     		jmp	.L3	#
  71              	.LVL2:
  72 002a 660F1F44 		.p2align 4,,7
  72      0000
  73              		.p2align 3
  74              	.L7:
  75 0030 660F6FC1 		movdqa	%xmm1, %xmm0	# vect_vec_iv_.21, vect_vec_iv_.21
  76              	.L3:
  77 0034 660F6FC8 		movdqa	%xmm0, %xmm1	# vect_vec_iv_.21, vect_vec_iv_.21
  78 0038 4883C010 		addq	$16, %rax	#, ivtmp.41
  51:e37.c         **** 
  52:e37.c         ****   for (i = 0; i < SIZE; i++)
  53:e37.c         ****    {
  54:e37.c         ****     x[i] = (float) i;
  79              		.loc 1 54 0 discriminator 2
  80 003c 0F5BC0   		cvtdq2ps	%xmm0, %xmm0	# vect_vec_iv_.21, tmp94
  81 003f 0F2940F0 		movaps	%xmm0, -16(%rax)	# tmp94, MEM[base: _19, offset: 0B]
  82 0043 483D0000 		cmpq	$x+4096, %rax	#, ivtmp.41
  82      0000
  83 0049 660FFECB 		paddd	%xmm3, %xmm1	# vect_cst_.20, vect_vec_iv_.21
  84 004d 75E1     		jne	.L7	#,
  85              		.loc 1 54 0 is_stmt 0
  86 004f 0F280500 		movaps	.LC1(%rip), %xmm0	#, D.4727
  86      000000
  87 0056 B8000000 		movl	$x, %eax	#, ivtmp.36
  87      00
  88 005b 0F1F4400 		.p2align 4,,7
  88      00
  89              		.p2align 3
  90              	.L5:
  91              	.LVL3:
  92 0060 4883C010 		addq	$16, %rax	#, ivtmp.36
  93              	.LVL4:
  94              	.LBB14:
  95              	.LBB15:
  96              		.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/xmmintrin.h"
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
  97              		.loc 2 157 0 is_stmt 1 discriminator 2
  98 0064 0F2848F0 		movaps	-16(%rax), %xmm1	# MEM[base: _8, offset: 0B], tmp95
  99 0068 0F58C8   		addps	%xmm0, %xmm1	# D.4727, tmp95
 100              	.LVL5:
 101              	.LBE15:
 102              	.LBE14:
 103              	.LBB16:
 104              	.LBB17:
 105 006b 0F58C2   		addps	%xmm2, %xmm0	# tmp99, D.4727
 106              	.LVL6:
 107              	.LBE17:
 108              	.LBE16:
 109              	.LBB18:
 110              	.LBB19:
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
 111              		.loc 2 947 0 discriminator 2
 112 006e 0F2948F0 		movaps	%xmm1, -16(%rax)	# tmp95, MEM[base: _8, offset: 0B]
 113              	.LVL7:
 114              	.LBE19:
 115              	.LBE18:
  55:e37.c         ****    }
  56:e37.c         **** 
  57:e37.c         ****   for (i = 0; i < SIZE; i+=4)
 116              		.loc 1 57 0 discriminator 2
 117 0072 4839C2   		cmpq	%rax, %rdx	# ivtmp.36, D.4726
 118 0075 75E9     		jne	.L5	#,
  58:e37.c         ****    {
  59:e37.c         ****     x_vec = _mm_load_ps(x+i);              // load 4 floats
  60:e37.c         ****     x_vec = _mm_add_ps(x_vec, ind);        // add the two
  61:e37.c         ****     ind   = _mm_add_ps(ind, incr);         // update ind
  62:e37.c         ****     _mm_store_ps(x+i, x_vec);              // store back
  63:e37.c         ****    }
  64:e37.c         **** 
  65:e37.c         ****   n = dx(x);
 119              		.loc 1 65 0
 120 0077 BF000000 		movl	$x, %edi	#,
 120      00
 121              	.LVL8:
 122 007c 31C0     		xorl	%eax, %eax	#
 123              	.LVL9:
 124 007e 0F290D00 		movaps	%xmm1, x_vec(%rip)	# tmp95, x_vec
 124      000000
 125 0085 0F290500 		movaps	%xmm0, ind(%rip)	# D.4727, ind
 125      000000
 126 008c E9000000 		jmp	dx	#
 126      00
 127              	.LVL10:
 128              		.cfi_endproc
 129              	.LFE566:
 131              		.comm	incr,16,16
 132              		.comm	ind,16,16
 133              		.comm	x_vec,16,16
 134              		.comm	x,4096,16
 135              		.section	.rodata.cst16,"aM",@progbits,16
 136              		.align 16
 137              	.LC0:
 138 0000 00000000 		.long	0
 139 0004 01000000 		.long	1
 140 0008 02000000 		.long	2
 141 000c 03000000 		.long	3
 142              		.align 16
 143              	.LC1:
 144 0010 00000000 		.long	0
 145 0014 0000803F 		.long	1065353216
 146 0018 00000040 		.long	1073741824
 147 001c 00004040 		.long	1077936128
 148              		.align 16
 149              	.LC2:
 150 0020 00008040 		.long	1082130432
 151 0024 00008040 		.long	1082130432
 152 0028 00008040 		.long	1082130432
 153 002c 00008040 		.long	1082130432
 154              		.align 16
 155              	.LC3:
 156 0030 04000000 		.long	4
 157 0034 04000000 		.long	4
 158 0038 04000000 		.long	4
 159 003c 04000000 		.long	4
 160              		.text
 161              	.Letext0:
