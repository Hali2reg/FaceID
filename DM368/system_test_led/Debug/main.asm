;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.1.1 *
;* Date/Time created: Mon Feb 13 10:50:00 2017                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=on --code_state=32 --diag_wrap=off --embedded_constants=on --endian=little --float_support=vfplib --hll_source=on --object_format=elf --silicon_version=5e --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=off 
	.state32

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.1.1 Copyright (c) 1996-2013 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("E:\Projects\CCS5.5\system_test\system_test_led\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_init")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("dm368_init")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("E:/Projects/CCS5.5/system_test/system_test_led/heads/dm368.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x427)
	.dwattr $C$DW$1, DW_AT_decl_column(0x07)

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("dm368_waitusec")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("E:/Projects/CCS5.5/system_test/system_test_led/heads/dm368.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x42f)
	.dwattr $C$DW$2, DW_AT_decl_column(0x06)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$2


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_led_on")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("dm368_led_on")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("E:/Projects/CCS5.5/system_test/system_test_led/heads/dm368_gpio.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x79)
	.dwattr $C$DW$4, DW_AT_decl_column(0x07)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$9)
	.dwendtag $C$DW$4


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_led_off")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("dm368_led_off")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("E:/Projects/CCS5.5/system_test/system_test_led/heads/dm368_gpio.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$6, DW_AT_decl_column(0x07)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$9)
	.dwendtag $C$DW$6

;	D:\WorkSpace\CCS5.5\ccsv5\tools\compiler\arm_5.1.1\bin\armopt.exe --call_assumptions=0 --gen_opt_info=0 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\027922 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\027924 --opt_info_filename=sources\\main.nfo 
	.sect	".text"
	.clink
	.armfunc main
	.state32
	.global	main

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$8, DW_AT_low_pc(main)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$8, DW_AT_TI_begin_file("../sources/main.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x13)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$8, DW_AT_decl_file("../sources/main.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x13)
	.dwattr $C$DW$8, DW_AT_decl_column(0x05)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/main.c",line 19,column 16,is_stmt,address main,isa 2

	.dwfde $C$DW$CIE, main

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Regs Used         : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 23	-----------------------    dm368_init();
        STMFD     SP!, {V1, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
	.dwpsn	file "../sources/main.c",line 23,column 2,is_stmt,isa 2
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_name("dm368_init")
	.dwattr $C$DW$9, DW_AT_TI_call
        BL        dm368_init            ; [DPU_PIPE] |23| 
        ; CALL OCCURS {dm368_init }      ; [] |23| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 25
;*   Loop closing brace source line  : 43
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
;**	-----------------------g2:
;** 27	-----------------------    dm368_led_off(0);
;** 28	-----------------------    dm368_waitusec(50000u);
;** 29	-----------------------    dm368_led_off(1);
;** 30	-----------------------    dm368_waitusec(50000u);
;** 31	-----------------------    dm368_led_off(2);
;** 32	-----------------------    dm368_waitusec(50000u);
;** 33	-----------------------    dm368_led_off(3);
;** 34	-----------------------    dm368_waitusec(50000u);
;** 35	-----------------------    dm368_led_on(0);
;** 36	-----------------------    dm368_waitusec(50000u);
;** 37	-----------------------    dm368_led_on(1);
	.dwpsn	file "../sources/main.c",line 27,column 3,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |27| 
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_name("dm368_led_off")
	.dwattr $C$DW$10, DW_AT_TI_call
        BL        dm368_led_off         ; [DPU_PIPE] |27| 
        ; CALL OCCURS {dm368_led_off }   ; [] |27| 
	.dwpsn	file "../sources/main.c",line 28,column 3,is_stmt,isa 2
        LDR       V1, $C$CON1           ; [DPU_PIPE] |42| 
        MOV       A1, V1                ; [DPU_PIPE] |28| 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$11, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |28| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |28| 
	.dwpsn	file "../sources/main.c",line 29,column 3,is_stmt,isa 2
        MOV       A1, #1                ; [DPU_PIPE] |29| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("dm368_led_off")
	.dwattr $C$DW$12, DW_AT_TI_call
        BL        dm368_led_off         ; [DPU_PIPE] |29| 
        ; CALL OCCURS {dm368_led_off }   ; [] |29| 
	.dwpsn	file "../sources/main.c",line 30,column 3,is_stmt,isa 2
        MOV       A1, V1                ; [DPU_PIPE] |30| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$13, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |30| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |30| 
	.dwpsn	file "../sources/main.c",line 31,column 3,is_stmt,isa 2
        MOV       A1, #2                ; [DPU_PIPE] |31| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_name("dm368_led_off")
	.dwattr $C$DW$14, DW_AT_TI_call
        BL        dm368_led_off         ; [DPU_PIPE] |31| 
        ; CALL OCCURS {dm368_led_off }   ; [] |31| 
	.dwpsn	file "../sources/main.c",line 32,column 3,is_stmt,isa 2
        MOV       A1, V1                ; [DPU_PIPE] |32| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$15, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |32| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |32| 
	.dwpsn	file "../sources/main.c",line 33,column 3,is_stmt,isa 2
        MOV       A1, #3                ; [DPU_PIPE] |33| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("dm368_led_off")
	.dwattr $C$DW$16, DW_AT_TI_call
        BL        dm368_led_off         ; [DPU_PIPE] |33| 
        ; CALL OCCURS {dm368_led_off }   ; [] |33| 
	.dwpsn	file "../sources/main.c",line 34,column 3,is_stmt,isa 2
        MOV       A1, V1                ; [DPU_PIPE] |34| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$17, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |34| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |34| 
	.dwpsn	file "../sources/main.c",line 35,column 3,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |35| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("dm368_led_on")
	.dwattr $C$DW$18, DW_AT_TI_call
        BL        dm368_led_on          ; [DPU_PIPE] |35| 
        ; CALL OCCURS {dm368_led_on }    ; [] |35| 
	.dwpsn	file "../sources/main.c",line 36,column 3,is_stmt,isa 2
        MOV       A1, V1                ; [DPU_PIPE] |36| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$19, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |36| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |36| 
	.dwpsn	file "../sources/main.c",line 37,column 3,is_stmt,isa 2
        MOV       A1, #1                ; [DPU_PIPE] |37| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("dm368_led_on")
	.dwattr $C$DW$20, DW_AT_TI_call
        BL        dm368_led_on          ; [DPU_PIPE] |37| 
        ; CALL OCCURS {dm368_led_on }    ; [] |37| 
;* --------------------------------------------------------------------------*
;** 38	-----------------------    dm368_waitusec(50000u);
;** 39	-----------------------    dm368_led_on(2);
;** 40	-----------------------    dm368_waitusec(50000u);
;** 41	-----------------------    dm368_led_on(3);
;** 42	-----------------------    dm368_waitusec(50000u);
;** 25	-----------------------    goto g2;
	.dwpsn	file "../sources/main.c",line 38,column 3,is_stmt,isa 2
        MOV       A1, V1                ; [DPU_PIPE] |38| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$21, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |38| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |38| 
	.dwpsn	file "../sources/main.c",line 39,column 3,is_stmt,isa 2
        MOV       A1, #2                ; [DPU_PIPE] |39| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("dm368_led_on")
	.dwattr $C$DW$22, DW_AT_TI_call
        BL        dm368_led_on          ; [DPU_PIPE] |39| 
        ; CALL OCCURS {dm368_led_on }    ; [] |39| 
	.dwpsn	file "../sources/main.c",line 40,column 3,is_stmt,isa 2
        MOV       A1, V1                ; [DPU_PIPE] |40| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$23, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |40| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |40| 
	.dwpsn	file "../sources/main.c",line 41,column 3,is_stmt,isa 2
        MOV       A1, #3                ; [DPU_PIPE] |41| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("dm368_led_on")
	.dwattr $C$DW$24, DW_AT_TI_call
        BL        dm368_led_on          ; [DPU_PIPE] |41| 
        ; CALL OCCURS {dm368_led_on }    ; [] |41| 
	.dwpsn	file "../sources/main.c",line 42,column 3,is_stmt,isa 2
        MOV       A1, V1                ; [DPU_PIPE] |42| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$25, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |42| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |42| 
	.dwpsn	file "../sources/main.c",line 25,column 8,is_stmt,isa 2
        B         ||$C$L1||             ; [DPU_PIPE] |25| 
        ; BRANCH OCCURS {||$C$L1||}      ; [] |25| 
;* --------------------------------------------------------------------------*
	.dwattr $C$DW$8, DW_AT_TI_end_file("../sources/main.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x2f)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	50000,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	dm368_init
	.global	dm368_waitusec
	.global	dm368_led_on
	.global	dm368_led_off

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_optimization_goals(3)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_optimization_goals(0)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "TI", Tag_File, 1, Tag_FP_interface(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 14
	.dwcfi	cfa_register, 13
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 14
	.dwcfi	undefined, 7
	.dwendentry
	.dwendtag $C$DW$CU

