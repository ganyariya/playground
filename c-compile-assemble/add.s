	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_doubled                        ; -- Begin function doubled
	.p2align	2
_doubled:                               ; @doubled
Lfunc_begin0:
	.file	0 "/Users/ganyariya/develop/playground/c-compile-assemble" "add.c"
	.loc	0 5 0                           ; add.c:5:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
Ltmp1:
	.loc	0 6 12 prologue_end             ; add.c:6:12
	ldr	w8, [sp, #12]
	.loc	0 6 14 is_stmt 0                ; add.c:6:14
	lsl	w0, w8, #1
	.loc	0 6 5 epilogue_begin            ; add.c:6:5
	add	sp, sp, #16
	ret
Ltmp2:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	_add                            ; -- Begin function add
	.p2align	2
_add:                                   ; @add
Lfunc_begin1:
	.loc	0 13 0 is_stmt 1                ; add.c:13:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
Ltmp3:
	.loc	0 15 12 prologue_end            ; add.c:15:12
	adrp	x8, _globalW@GOTPAGE
	ldr	x8, [x8, _globalW@GOTPAGEOFF]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	.loc	0 15 30 is_stmt 0               ; add.c:15:30
	ldur	w0, [x29, #-4]
	.loc	0 15 22                         ; add.c:15:22
	bl	_doubled
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	.loc	0 15 20                         ; add.c:15:20
	add	w8, w8, w0
	.loc	0 15 35                         ; add.c:15:35
	ldr	w9, [sp, #8]
	.loc	0 15 33                         ; add.c:15:33
	add	w0, w8, w9
	.loc	0 15 5 epilogue_begin           ; add.c:15:5
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp4:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	37                              ; DW_FORM_strx1
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	37                              ; DW_FORM_strx1
	.byte	114                             ; DW_AT_str_offsets_base
	.byte	23                              ; DW_FORM_sec_offset
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	37                              ; DW_FORM_strx1
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	115                             ; DW_AT_addr_base
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.ascii	"\347\177"                      ; DW_AT_APPLE_omit_frame_ptr
	.byte	25                              ; DW_FORM_flag_present
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	5                               ; DWARF version number
	.byte	1                               ; DWARF Unit Type
	.byte	8                               ; Address Size (in bytes)
.set Lset1, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset1
	.byte	1                               ; Abbrev [1] 0xc:0x5e DW_TAG_compile_unit
	.byte	0                               ; DW_AT_producer
	.short	29                              ; DW_AT_language
	.byte	1                               ; DW_AT_name
	.byte	2                               ; DW_AT_LLVM_sysroot
.set Lset2, Lstr_offsets_base0-Lsection_str_off ; DW_AT_str_offsets_base
	.long	Lset2
.set Lset3, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset3
	.byte	3                               ; DW_AT_comp_dir
	.byte	0                               ; DW_AT_low_pc
.set Lset4, Lfunc_end1-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset4
.set Lset5, Laddr_table_base0-Lsection_info0 ; DW_AT_addr_base
	.long	Lset5
	.byte	2                               ; Abbrev [2] 0x24:0x1b DW_TAG_subprogram
	.byte	0                               ; DW_AT_low_pc
.set Lset6, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset6
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.byte	4                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	4                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	101                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	3                               ; Abbrev [3] 0x33:0xb DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	12
	.byte	7                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	4                               ; DW_AT_decl_line
	.long	101                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x3f:0x26 DW_TAG_subprogram
	.byte	1                               ; DW_AT_low_pc
.set Lset7, Lfunc_end1-Lfunc_begin1     ; DW_AT_high_pc
	.long	Lset7
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.byte	6                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	101                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	3                               ; Abbrev [3] 0x4e:0xb DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	124
	.byte	7                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.long	101                             ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x59:0xb DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.byte	8                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.long	101                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x65:0x4 DW_TAG_base_type
	.byte	5                               ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str_offs,regular,debug
Lsection_str_off:
	.long	40                              ; Length of String Offsets Set
	.short	5
	.short	0
Lstr_offsets_base0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 17.0.0 (clang-1700.0.13.5)" ; string offset=0
	.asciz	"add.c"                         ; string offset=47
	.asciz	"/"                             ; string offset=53
	.asciz	"/Users/ganyariya/develop/playground/c-compile-assemble" ; string offset=55
	.asciz	"doubled"                       ; string offset=110
	.asciz	"add"                           ; string offset=118
	.asciz	"int"                           ; string offset=122
	.asciz	"x"                             ; string offset=126
	.asciz	"y"                             ; string offset=128
	.section	__DWARF,__debug_str_offs,regular,debug
	.long	0
	.long	47
	.long	53
	.long	55
	.long	110
	.long	122
	.long	118
	.long	126
	.long	128
	.section	__DWARF,__debug_addr,regular,debug
Lsection_info0:
.set Lset8, Ldebug_addr_end0-Ldebug_addr_start0 ; Length of contribution
	.long	Lset8
Ldebug_addr_start0:
	.short	5                               ; DWARF version number
	.byte	8                               ; Address size
	.byte	0                               ; Segment selector size
Laddr_table_base0:
	.quad	Lfunc_begin0
	.quad	Lfunc_begin1
Ldebug_addr_end0:
	.section	__DWARF,__debug_names,regular,debug
Ldebug_names_begin:
.set Lset9, Lnames_end0-Lnames_start0   ; Header: unit length
	.long	Lset9
Lnames_start0:
	.short	5                               ; Header: version
	.short	0                               ; Header: padding
	.long	1                               ; Header: compilation unit count
	.long	0                               ; Header: local type unit count
	.long	0                               ; Header: foreign type unit count
	.long	3                               ; Header: bucket count
	.long	3                               ; Header: name count
.set Lset10, Lnames_abbrev_end0-Lnames_abbrev_start0 ; Header: abbreviation table size
	.long	Lset10
	.long	8                               ; Header: augmentation string size
	.ascii	"LLVM0700"                      ; Header: augmentation string
.set Lset11, Lcu_begin0-Lsection_info   ; Compilation unit 0
	.long	Lset11
	.long	0                               ; Bucket 0
	.long	1                               ; Bucket 1
	.long	2                               ; Bucket 2
	.long	193486030                       ; Hash in Bucket 1
	.long	193495088                       ; Hash in Bucket 2
	.long	552124292                       ; Hash in Bucket 2
	.long	118                             ; String in Bucket 1: add
	.long	122                             ; String in Bucket 2: int
	.long	110                             ; String in Bucket 2: doubled
.set Lset12, Lnames1-Lnames_entries0    ; Offset in Bucket 1
	.long	Lset12
.set Lset13, Lnames2-Lnames_entries0    ; Offset in Bucket 2
	.long	Lset13
.set Lset14, Lnames0-Lnames_entries0    ; Offset in Bucket 2
	.long	Lset14
Lnames_abbrev_start0:
	.byte	1                               ; Abbrev code
	.byte	46                              ; DW_TAG_subprogram
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	2                               ; Abbrev code
	.byte	36                              ; DW_TAG_base_type
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev list
Lnames_abbrev_end0:
Lnames_entries0:
Lnames1:
L1:
	.byte	1                               ; Abbreviation code
	.long	63                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: add
Lnames2:
L2:
	.byte	2                               ; Abbreviation code
	.long	101                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: int
Lnames0:
L0:
	.byte	1                               ; Abbreviation code
	.long	36                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: doubled
	.p2align	2, 0x0
Lnames_end0:
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
