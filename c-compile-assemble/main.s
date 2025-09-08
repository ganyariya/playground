	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.file	0 "/Users/ganyariya/develop/playground/c-compile-assemble" "main.c"
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.loc	0 8 0                           ; main.c:8:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
Ltmp0:
	.loc	0 9 15 prologue_end             ; main.c:9:15
	mov	w0, #5                          ; =0x5
	mov	w1, #8                          ; =0x8
	bl	_add
	.loc	0 9 9 is_stmt 0                 ; main.c:9:9
	str	w0, [sp, #12]
	.loc	0 11 26 is_stmt 1               ; main.c:11:26
	ldr	w8, [sp, #12]
                                        ; kill: def $x8 killed $w8
	.loc	0 11 5 is_stmt 0                ; main.c:11:5
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	.loc	0 13 5 epilogue_begin is_stmt 1 ; main.c:13:5
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp1:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_globalW                        ; @globalW
	.p2align	2, 0x0
_globalW:
	.long	100                             ; 0x64

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Sum = %d\n"

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
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
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
	.byte	4                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
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
	.byte	9                               ; Abbreviation Code
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
	.byte	10                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
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
	.byte	11                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
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
	.byte	1                               ; Abbrev [1] 0xc:0x81 DW_TAG_compile_unit
	.byte	0                               ; DW_AT_producer
	.short	29                              ; DW_AT_language
	.byte	1                               ; DW_AT_name
	.byte	2                               ; DW_AT_LLVM_sysroot
.set Lset2, Lstr_offsets_base0-Lsection_str_off ; DW_AT_str_offsets_base
	.long	Lset2
.set Lset3, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset3
	.byte	3                               ; DW_AT_comp_dir
	.byte	2                               ; DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset4
.set Lset5, Laddr_table_base0-Lsection_info0 ; DW_AT_addr_base
	.long	Lset5
	.byte	2                               ; Abbrev [2] 0x24:0xb DW_TAG_variable
	.byte	4                               ; DW_AT_name
	.long	47                              ; DW_AT_type
                                        ; DW_AT_external
	.byte	0                               ; DW_AT_decl_file
	.byte	5                               ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               ; Abbrev [3] 0x2f:0x4 DW_TAG_base_type
	.byte	5                               ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x33:0xa DW_TAG_variable
	.long	61                              ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	1
	.byte	5                               ; Abbrev [5] 0x3d:0xc DW_TAG_array_type
	.long	73                              ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x42:0x6 DW_TAG_subrange_type
	.long	77                              ; DW_AT_type
	.byte	10                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x49:0x4 DW_TAG_base_type
	.byte	6                               ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	7                               ; Abbrev [7] 0x4d:0x4 DW_TAG_base_type
	.byte	7                               ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; Abbrev [8] 0x51:0x31 DW_TAG_subprogram
	.byte	2                               ; DW_AT_low_pc
.set Lset6, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset6
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.byte	8                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	47                              ; DW_AT_type
                                        ; DW_AT_external
	.byte	9                               ; Abbrev [9] 0x60:0xb DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.byte	9                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.long	47                              ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x6b:0xb DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.byte	10                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.long	130                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x76:0xb DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	12
	.byte	11                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.long	47                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x82:0x5 DW_TAG_pointer_type
	.long	135                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x87:0x5 DW_TAG_pointer_type
	.long	73                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str_offs,regular,debug
Lsection_str_off:
	.long	52                              ; Length of String Offsets Set
	.short	5
	.short	0
Lstr_offsets_base0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 17.0.0 (clang-1700.0.13.5)" ; string offset=0
	.asciz	"main.c"                        ; string offset=47
	.asciz	"/"                             ; string offset=54
	.asciz	"/Users/ganyariya/develop/playground/c-compile-assemble" ; string offset=56
	.asciz	"globalW"                       ; string offset=111
	.asciz	"int"                           ; string offset=119
	.asciz	"char"                          ; string offset=123
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=128
	.asciz	"main"                          ; string offset=148
	.asciz	"argc"                          ; string offset=153
	.asciz	"argv"                          ; string offset=158
	.asciz	"sum"                           ; string offset=163
	.section	__DWARF,__debug_str_offs,regular,debug
	.long	0
	.long	47
	.long	54
	.long	56
	.long	111
	.long	119
	.long	123
	.long	128
	.long	148
	.long	153
	.long	158
	.long	163
	.section	__DWARF,__debug_addr,regular,debug
Lsection_info0:
.set Lset7, Ldebug_addr_end0-Ldebug_addr_start0 ; Length of contribution
	.long	Lset7
Ldebug_addr_start0:
	.short	5                               ; DWARF version number
	.byte	8                               ; Address size
	.byte	0                               ; Segment selector size
Laddr_table_base0:
	.quad	_globalW
	.quad	l_.str
	.quad	Lfunc_begin0
Ldebug_addr_end0:
	.section	__DWARF,__debug_names,regular,debug
Ldebug_names_begin:
.set Lset8, Lnames_end0-Lnames_start0   ; Header: unit length
	.long	Lset8
Lnames_start0:
	.short	5                               ; Header: version
	.short	0                               ; Header: padding
	.long	1                               ; Header: compilation unit count
	.long	0                               ; Header: local type unit count
	.long	0                               ; Header: foreign type unit count
	.long	5                               ; Header: bucket count
	.long	5                               ; Header: name count
.set Lset9, Lnames_abbrev_end0-Lnames_abbrev_start0 ; Header: abbreviation table size
	.long	Lset9
	.long	8                               ; Header: augmentation string size
	.ascii	"LLVM0700"                      ; Header: augmentation string
.set Lset10, Lcu_begin0-Lsection_info   ; Compilation unit 0
	.long	Lset10
	.long	0                               ; Bucket 0
	.long	1                               ; Bucket 1
	.long	0                               ; Bucket 2
	.long	2                               ; Bucket 3
	.long	4                               ; Bucket 4
	.long	2090499946                      ; Hash in Bucket 1
	.long	193495088                       ; Hash in Bucket 3
	.long	217009403                       ; Hash in Bucket 3
	.long	7027469                         ; Hash in Bucket 4
	.long	2090147939                      ; Hash in Bucket 4
	.long	148                             ; String in Bucket 1: main
	.long	119                             ; String in Bucket 3: int
	.long	128                             ; String in Bucket 3: __ARRAY_SIZE_TYPE__
	.long	111                             ; String in Bucket 4: globalW
	.long	123                             ; String in Bucket 4: char
.set Lset11, Lnames4-Lnames_entries0    ; Offset in Bucket 1
	.long	Lset11
.set Lset12, Lnames0-Lnames_entries0    ; Offset in Bucket 3
	.long	Lset12
.set Lset13, Lnames3-Lnames_entries0    ; Offset in Bucket 3
	.long	Lset13
.set Lset14, Lnames1-Lnames_entries0    ; Offset in Bucket 4
	.long	Lset14
.set Lset15, Lnames2-Lnames_entries0    ; Offset in Bucket 4
	.long	Lset15
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
	.byte	3                               ; Abbrev code
	.byte	52                              ; DW_TAG_variable
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev list
Lnames_abbrev_end0:
Lnames_entries0:
Lnames4:
L4:
	.byte	1                               ; Abbreviation code
	.long	81                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: main
Lnames0:
L2:
	.byte	2                               ; Abbreviation code
	.long	47                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: int
Lnames3:
L1:
	.byte	2                               ; Abbreviation code
	.long	77                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: __ARRAY_SIZE_TYPE__
Lnames1:
L0:
	.byte	3                               ; Abbreviation code
	.long	36                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: globalW
Lnames2:
L3:
	.byte	2                               ; Abbreviation code
	.long	73                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: char
	.p2align	2, 0x0
Lnames_end0:
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
