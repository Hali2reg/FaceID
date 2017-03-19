;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.1.1 *
;* Date/Time created: Mon Feb 13 10:49:56 2017                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=on --code_state=32 --diag_wrap=off --embedded_constants=on --endian=little --float_support=vfplib --hll_source=on --object_format=elf --silicon_version=5e --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=off 
	.state32

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/dm368_ddr.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.1.1 Copyright (c) 1996-2013 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("E:\Projects\CCS5.5\system_test\system_test_led\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_psc_changeState")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("dm368_psc_changeState")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("E:/Projects/CCS5.5/system_test/system_test_led/heads/dm368_psc.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x27)
	.dwattr $C$DW$1, DW_AT_decl_column(0x07)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$6)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$6)
	.dwendtag $C$DW$1

;	D:\WorkSpace\CCS5.5\ccsv5\tools\compiler\arm_5.1.1\bin\armopt.exe --call_assumptions=0 --gen_opt_info=0 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\005762 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\005764 --opt_info_filename=sources\\dm368_ddr.nfo 
	.sect	".text"
	.clink
	.armfunc ddr_init
	.state32
	.global	ddr_init

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("ddr_init")
	.dwattr $C$DW$4, DW_AT_low_pc(ddr_init)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("ddr_init")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$4, DW_AT_TI_begin_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x1a)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$4, DW_AT_decl_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$4, DW_AT_decl_column(0x08)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_ddr.c",line 27,column 1,is_stmt,address ddr_init,isa 2

	.dwfde $C$DW$CIE, ddr_init

;*****************************************************************************
;* FUNCTION NAME: ddr_init                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
ddr_init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 32	-----------------------    *(volatile unsigned *)0x1c40074u = *(volatile unsigned *)0x1c40074u&0xffff9f3fu;
;** 35	-----------------------    *(volatile unsigned *)0x1c40074u = *(volatile unsigned *)0x1c40074u|0x2000u;
        STMFD     SP!, {A4, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../sources/dm368_ddr.c",line 32,column 5,is_stmt,isa 2
        LDR       V9, $C$CON1           ; [DPU_PIPE] |32| 
        LDR       A2, $C$CON2           ; [DPU_PIPE] |32| 
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |32| 
        AND       A1, A2, A1            ; [DPU_PIPE] |32| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |32| 
	.dwpsn	file "../sources/dm368_ddr.c",line 35,column 5,is_stmt,isa 2
        LDR       A2, [V9, #0]          ; [DPU_PIPE] |35| 
        MOV       A1, V9                ; [DPU_PIPE] |35| 
        ORR       A2, A2, #8192         ; [DPU_PIPE] |35| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |35| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 38
;*   Loop closing brace source line  : 38
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
;**	-----------------------g2:
;** 38	-----------------------    if ( !(*(volatile unsigned *)0x1c40074u&0x8000u) ) goto g2;
	.dwpsn	file "../sources/dm368_ddr.c",line 38,column 12,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |38| 
        TST       A1, #32768            ; [DPU_PIPE] |38| 
        BEQ       ||$C$L1||             ; [DPU_PIPE] |38| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |38| 
;* --------------------------------------------------------------------------*
;** 41	-----------------------    *(volatile unsigned *)0x1c40074u = *(volatile unsigned *)0x1c40074u|0x80u;
;** 45	-----------------------    *(volatile unsigned *)0x1c40074u = *(volatile unsigned *)0x1c40074u|0x4040u;
;** 48	-----------------------    *(volatile unsigned *)0x200000e4u = 198u;
;** 50	-----------------------    *(volatile unsigned *)0x20000008u = 0x853c832u;
;** 51	-----------------------    *(volatile unsigned *)0x2000000cu = 1896u;
;** 52	-----------------------    *(volatile unsigned *)0x20000020u = 254u;
;** 53	-----------------------    *(volatile unsigned *)0x20000010u = 0x576d6c9au;
;** 63	-----------------------    *(volatile unsigned *)0x20000014u = 0x442ec742u;
;** 71	-----------------------    *(volatile unsigned *)0x20000008u = 0x8534832u;
;** 73	-----------------------    dm368_psc_changeState(13, 1);
;** 74	-----------------------    dm368_psc_changeState(13, 3);
;**  	-----------------------    return;
	.dwpsn	file "../sources/dm368_ddr.c",line 41,column 5,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |41| 
        ORR       A1, A1, #128          ; [DPU_PIPE] |41| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |41| 
	.dwpsn	file "../sources/dm368_ddr.c",line 45,column 5,is_stmt,isa 2
        LDR       A2, $C$CON3           ; [DPU_PIPE] |45| 
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |45| 
        ORR       A1, A2, A1            ; [DPU_PIPE] |45| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |45| 
	.dwpsn	file "../sources/dm368_ddr.c",line 48,column 5,is_stmt,isa 2
        LDR       A1, $C$CON4           ; [DPU_PIPE] |48| 
        MOV       V9, #198              ; [DPU_PIPE] |48| 
        STR       V9, [A1, #0]          ; [DPU_PIPE] |48| 
	.dwpsn	file "../sources/dm368_ddr.c",line 50,column 5,is_stmt,isa 2
        LDR       A1, $C$CON5           ; [DPU_PIPE] |50| 
        MOV       V9, #536870920        ; [DPU_PIPE] |50| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |50| 
	.dwpsn	file "../sources/dm368_ddr.c",line 51,column 5,is_stmt,isa 2
        LDR       A1, $C$CON6           ; [DPU_PIPE] |51| 
        MOV       A2, #536870924        ; [DPU_PIPE] |51| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |51| 
	.dwpsn	file "../sources/dm368_ddr.c",line 52,column 5,is_stmt,isa 2
        LDR       A2, $C$CON7           ; [DPU_PIPE] |52| 
        MOV       A1, #254              ; [DPU_PIPE] |52| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |52| 
	.dwpsn	file "../sources/dm368_ddr.c",line 53,column 5,is_stmt,isa 2
        LDR       A1, $C$CON9           ; [DPU_PIPE] |53| 
        LDR       A2, $C$CON8           ; [DPU_PIPE] |53| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |53| 
	.dwpsn	file "../sources/dm368_ddr.c",line 63,column 5,is_stmt,isa 2
        LDR       A1, $C$CON11          ; [DPU_PIPE] |63| 
        LDR       A2, $C$CON10          ; [DPU_PIPE] |63| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |63| 
	.dwpsn	file "../sources/dm368_ddr.c",line 71,column 5,is_stmt,isa 2
        LDR       A1, $C$CON12          ; [DPU_PIPE] |71| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |71| 
	.dwpsn	file "../sources/dm368_ddr.c",line 73,column 5,is_stmt,isa 2
        MOV       A1, #13               ; [DPU_PIPE] |73| 
        MOV       A2, #1                ; [DPU_PIPE] |73| 
$C$DW$5	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$5, DW_AT_low_pc(0x00)
	.dwattr $C$DW$5, DW_AT_name("dm368_psc_changeState")
	.dwattr $C$DW$5, DW_AT_TI_call
        BL        dm368_psc_changeState ; [DPU_PIPE] |73| 
        ; CALL OCCURS {dm368_psc_changeState }  ; [] |73| 
	.dwpsn	file "../sources/dm368_ddr.c",line 74,column 5,is_stmt,isa 2
        MOV       A1, #13               ; [DPU_PIPE] |74| 
        MOV       A2, #3                ; [DPU_PIPE] |74| 
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_name("dm368_psc_changeState")
	.dwattr $C$DW$6, DW_AT_TI_call
        BL        dm368_psc_changeState ; [DPU_PIPE] |74| 
        ; CALL OCCURS {dm368_psc_changeState }  ; [] |74| 
	.dwpsn	file "../sources/dm368_ddr.c",line 75,column 1,is_stmt,isa 2
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return
        LDMFD     SP!, {A4, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x4b)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.clink
	.armfunc ddr_word_rwTest
	.state32
	.global	ddr_word_rwTest

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("ddr_word_rwTest")
	.dwattr $C$DW$8, DW_AT_low_pc(ddr_word_rwTest)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("ddr_word_rwTest")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$8, DW_AT_TI_begin_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x57)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$8, DW_AT_decl_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x57)
	.dwattr $C$DW$8, DW_AT_decl_column(0x08)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_ddr.c",line 88,column 1,is_stmt,address ddr_word_rwTest,isa 2

	.dwfde $C$DW$CIE, ddr_word_rwTest
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("start")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("start")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg0]
$C$DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg1]
$C$DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("val")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: ddr_word_rwTest                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2,A4,V9,SP,LR,SR                                *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
ddr_word_rwTest:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 90	-----------------------    end = start+len;
;** 91	-----------------------    errorcount = 0u;
;** 95	-----------------------    pdata = (unsigned *)start;
;** 96	-----------------------    i = start;
;** 96	-----------------------    if ( i >= end ) goto g3;
        STMFD     SP!, {A4, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
;* A1    assigned to start
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("start")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("start")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]
;* A2    assigned to len
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg1]
;* A3    assigned to val
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("val")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg2]
;* A2    assigned to i
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg1]
;* LR    assigned to end
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("end")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("end")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg14]
;* V9    assigned to errorcount
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("errorcount")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("errorcount")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]
;* A4    assigned to pdata
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("pdata")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("pdata")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg3]
	.dwpsn	file "../sources/dm368_ddr.c",line 90,column 16,is_stmt,isa 2
        ADD       LR, A2, A1            ; [DPU_PIPE] |90| 
	.dwpsn	file "../sources/dm368_ddr.c",line 91,column 23,is_stmt,isa 2
        MOV       V9, #0                ; [DPU_PIPE] |91| 
	.dwpsn	file "../sources/dm368_ddr.c",line 95,column 2,is_stmt,isa 2
        MOV       A4, A1                ; [DPU_PIPE] |95| 
	.dwpsn	file "../sources/dm368_ddr.c",line 96,column 11,is_stmt,isa 2
        MOV       A2, A4                ; [DPU_PIPE] 
	.dwpsn	file "../sources/dm368_ddr.c",line 96,column 22,is_stmt,isa 2
        CMP       LR, A2                ; [DPU_PIPE] |96| 
        BLS       ||$C$L3||             ; [DPU_PIPE] |96| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |96| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L2||
;*
;*   Loop source line                : 96
;*   Loop closing brace source line  : 99
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L2||:    
;**	-----------------------g2:
;** 98	-----------------------    *pdata++ = val;
;** 96	-----------------------    if ( (i += 4u) < end ) goto g2;
	.dwpsn	file "../sources/dm368_ddr.c",line 98,column 9,is_stmt,isa 2
        STR       A3, [A4], #4          ; [DPU_PIPE] |98| 
	.dwpsn	file "../sources/dm368_ddr.c",line 96,column 22,is_stmt,isa 2
        ADD       A2, A2, #4            ; [DPU_PIPE] |96| 
        CMP       LR, A2                ; [DPU_PIPE] |96| 
        BHI       ||$C$L2||             ; [DPU_PIPE] |96| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |96| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
;**	-----------------------g3:
;** 102	-----------------------    pdata = (unsigned *)start;
;** 103	-----------------------    i = start;
;** 103	-----------------------    if ( i >= end ) goto g7;
	.dwpsn	file "../sources/dm368_ddr.c",line 102,column 2,is_stmt,isa 2
        MOV       A4, A1                ; [DPU_PIPE] |102| 
	.dwpsn	file "../sources/dm368_ddr.c",line 103,column 11,is_stmt,isa 2
        MOV       A2, A4                ; [DPU_PIPE] 
	.dwpsn	file "../sources/dm368_ddr.c",line 103,column 22,is_stmt,isa 2
        CMP       LR, A2                ; [DPU_PIPE] |103| 
        BLS       ||$C$L6||             ; [DPU_PIPE] |103| 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |103| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L4||
;*
;*   Loop source line                : 103
;*   Loop closing brace source line  : 110
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L4||:    
;**	-----------------------g4:
;** 105	-----------------------    if ( *pdata++ != val ) goto g6;
	.dwpsn	file "../sources/dm368_ddr.c",line 105,column 9,is_stmt,isa 2
        LDR       A1, [A4], #4          ; [DPU_PIPE] |105| 
        CMP       A3, A1                ; [DPU_PIPE] |105| 
        BNE       ||$C$L5||             ; [DPU_PIPE] |105| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |105| 
;* --------------------------------------------------------------------------*
;** 103	-----------------------    if ( (i += 4u) < end ) goto g4;
	.dwpsn	file "../sources/dm368_ddr.c",line 103,column 22,is_stmt,isa 2
        ADD       A2, A2, #4            ; [DPU_PIPE] |103| 
        CMP       LR, A2                ; [DPU_PIPE] |103| 
        BHI       ||$C$L4||             ; [DPU_PIPE] |103| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |103| 
;* --------------------------------------------------------------------------*
;** 103	-----------------------    goto g7;
        B         ||$C$L6||             ; [DPU_PIPE] |103| 
        ; BRANCH OCCURS {||$C$L6||}      ; [] |103| 
;* --------------------------------------------------------------------------*
||$C$L5||:    
;**	-----------------------g6:
;** 107	-----------------------    ++errorcount;
	.dwpsn	file "../sources/dm368_ddr.c",line 107,column 13,is_stmt,isa 2
        ADD       V9, V9, #1            ; [DPU_PIPE] |107| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
;**	-----------------------g7:
;** 112	-----------------------    return errorcount;
	.dwpsn	file "../sources/dm368_ddr.c",line 112,column 5,is_stmt,isa 2
        MOV       A1, V9                ; [DPU_PIPE] |112| 
	.dwpsn	file "../sources/dm368_ddr.c",line 113,column 1,is_stmt,isa 2
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return
        LDMFD     SP!, {A4, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$8, DW_AT_TI_end_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x71)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"
	.clink
	.armfunc ddr_dword_rwTest
	.state32
	.global	ddr_dword_rwTest

$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("ddr_dword_rwTest")
	.dwattr $C$DW$20, DW_AT_low_pc(ddr_dword_rwTest)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("ddr_dword_rwTest")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$20, DW_AT_TI_begin_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0x7c)
	.dwattr $C$DW$20, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$20, DW_AT_decl_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$20, DW_AT_decl_column(0x08)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_ddr.c",line 125,column 1,is_stmt,address ddr_dword_rwTest,isa 2

	.dwfde $C$DW$CIE, ddr_dword_rwTest
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("start")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("start")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg0]
$C$DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: ddr_dword_rwTest                                           *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
ddr_dword_rwTest:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 127	-----------------------    end = start+len;
;** 128	-----------------------    errorcount = 0u;
;** 133	-----------------------    pdata = (unsigned *)start;
;** 134	-----------------------    i = start;
;** 134	-----------------------    if ( i >= end ) goto g3;
        STMFD     SP!, {A4, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
;* A1    assigned to start
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("start")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("start")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]
;* A2    assigned to len
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg1]
;* A2    assigned to i
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg1]
;* A4    assigned to end
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("end")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("end")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg3]
;* V9    assigned to errorcount
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("errorcount")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("errorcount")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg12]
;* A3    assigned to pdata
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("pdata")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("pdata")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg2]
	.dwpsn	file "../sources/dm368_ddr.c",line 127,column 16,is_stmt,isa 2
        ADD       A4, A2, A1            ; [DPU_PIPE] |127| 
	.dwpsn	file "../sources/dm368_ddr.c",line 128,column 23,is_stmt,isa 2
        MOV       V9, #0                ; [DPU_PIPE] |128| 
	.dwpsn	file "../sources/dm368_ddr.c",line 133,column 2,is_stmt,isa 2
        MOV       A3, A1                ; [DPU_PIPE] |133| 
	.dwpsn	file "../sources/dm368_ddr.c",line 134,column 11,is_stmt,isa 2
        MOV       A2, A3                ; [DPU_PIPE] 
	.dwpsn	file "../sources/dm368_ddr.c",line 134,column 22,is_stmt,isa 2
        CMP       A4, A2                ; [DPU_PIPE] |134| 
        BLS       ||$C$L8||             ; [DPU_PIPE] |134| 
        ; BRANCHCC OCCURS {||$C$L8||}    ; [] |134| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L7||
;*
;*   Loop source line                : 134
;*   Loop closing brace source line  : 140
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L7||:    
;**	-----------------------g2:
;** 136	-----------------------    *pdata++ = i;
;** 137	-----------------------    *pdata++ = i+4u;
;** 138	-----------------------    *pdata++ = i+8u;
;** 139	-----------------------    *pdata++ = i+12u;
;** 134	-----------------------    if ( (i += 16u) < end ) goto g2;
	.dwpsn	file "../sources/dm368_ddr.c",line 136,column 6,is_stmt,isa 2
        STR       A2, [A3], #4          ; [DPU_PIPE] |136| 
	.dwpsn	file "../sources/dm368_ddr.c",line 137,column 3,is_stmt,isa 2
        ADD       LR, A2, #4            ; [DPU_PIPE] |137| 
        STR       LR, [A3], #4          ; [DPU_PIPE] |137| 
	.dwpsn	file "../sources/dm368_ddr.c",line 138,column 3,is_stmt,isa 2
        ADD       LR, A2, #8            ; [DPU_PIPE] |138| 
        STR       LR, [A3], #4          ; [DPU_PIPE] |138| 
	.dwpsn	file "../sources/dm368_ddr.c",line 139,column 3,is_stmt,isa 2
        ADD       LR, A2, #12           ; [DPU_PIPE] |139| 
        STR       LR, [A3], #4          ; [DPU_PIPE] |139| 
	.dwpsn	file "../sources/dm368_ddr.c",line 134,column 22,is_stmt,isa 2
        ADD       A2, A2, #16           ; [DPU_PIPE] |134| 
        CMP       A4, A2                ; [DPU_PIPE] |134| 
        BHI       ||$C$L7||             ; [DPU_PIPE] |134| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |134| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
;**	-----------------------g3:
;** 143	-----------------------    pdata = (unsigned *)start;
;** 144	-----------------------    i = start;
;** 144	-----------------------    if ( i >= end ) goto g7;
	.dwpsn	file "../sources/dm368_ddr.c",line 143,column 2,is_stmt,isa 2
        MOV       A3, A1                ; [DPU_PIPE] |143| 
	.dwpsn	file "../sources/dm368_ddr.c",line 144,column 11,is_stmt,isa 2
        MOV       A2, A3                ; [DPU_PIPE] 
	.dwpsn	file "../sources/dm368_ddr.c",line 144,column 22,is_stmt,isa 2
        CMP       A4, A2                ; [DPU_PIPE] |144| 
        BLS       ||$C$L11||            ; [DPU_PIPE] |144| 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |144| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L9||
;*
;*   Loop source line                : 144
;*   Loop closing brace source line  : 151
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L9||:    
;**	-----------------------g4:
;** 146	-----------------------    if ( *pdata++ != i ) goto g6;
	.dwpsn	file "../sources/dm368_ddr.c",line 146,column 9,is_stmt,isa 2
        LDR       A1, [A3], #4          ; [DPU_PIPE] |146| 
        CMP       A2, A1                ; [DPU_PIPE] |146| 
        BNE       ||$C$L10||            ; [DPU_PIPE] |146| 
        ; BRANCHCC OCCURS {||$C$L10||}   ; [] |146| 
;* --------------------------------------------------------------------------*
;** 144	-----------------------    if ( (i += 4u) < end ) goto g4;
	.dwpsn	file "../sources/dm368_ddr.c",line 144,column 22,is_stmt,isa 2
        ADD       A2, A2, #4            ; [DPU_PIPE] |144| 
        CMP       A4, A2                ; [DPU_PIPE] |144| 
        BHI       ||$C$L9||             ; [DPU_PIPE] |144| 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |144| 
;* --------------------------------------------------------------------------*
;** 144	-----------------------    goto g7;
        B         ||$C$L11||            ; [DPU_PIPE] |144| 
        ; BRANCH OCCURS {||$C$L11||}     ; [] |144| 
;* --------------------------------------------------------------------------*
||$C$L10||:    
;**	-----------------------g6:
;** 148	-----------------------    ++errorcount;
	.dwpsn	file "../sources/dm368_ddr.c",line 148,column 13,is_stmt,isa 2
        ADD       V9, V9, #1            ; [DPU_PIPE] |148| 
;* --------------------------------------------------------------------------*
||$C$L11||:    
;**	-----------------------g7:
;** 153	-----------------------    return errorcount;
	.dwpsn	file "../sources/dm368_ddr.c",line 153,column 5,is_stmt,isa 2
        MOV       A1, V9                ; [DPU_PIPE] |153| 
	.dwpsn	file "../sources/dm368_ddr.c",line 154,column 1,is_stmt,isa 2
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return
        LDMFD     SP!, {A4, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$20, DW_AT_TI_end_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x9a)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text"
	.clink
	.armfunc ddr_test
	.state32
	.global	ddr_test

$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("ddr_test")
	.dwattr $C$DW$30, DW_AT_low_pc(ddr_test)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("ddr_test")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$30, DW_AT_TI_begin_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0xa3)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$30, DW_AT_decl_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$30, DW_AT_decl_column(0x08)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_ddr.c",line 164,column 1,is_stmt,address ddr_test,isa 2

	.dwfde $C$DW$CIE, ddr_test

;*****************************************************************************
;* FUNCTION NAME: ddr_test                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Regs Used         : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                   *
;*****************************************************************************
ddr_test:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 167	-----------------------    if ( !ddr_word_rwTest(0x80000000u, 1048576u, 0xffffffffu) ) goto g3;
        STMFD     SP!, {V1, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
;* V1    assigned to errors
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("errors")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("errors")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg4]
	.dwpsn	file "../sources/dm368_ddr.c",line 167,column 2,is_stmt,isa 2
        MOV       A1, #-2147483648      ; [DPU_PIPE] |167| 
        MOV       A2, #1048576          ; [DPU_PIPE] |167| 
        MVN       A3, #0                ; [DPU_PIPE] |167| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("ddr_word_rwTest")
	.dwattr $C$DW$32, DW_AT_TI_call
        BL        ddr_word_rwTest       ; [DPU_PIPE] |167| 
        ; CALL OCCURS {ddr_word_rwTest }  ; [] |167| 
        CMP       A1, #0                ; [DPU_PIPE] |167| 
        BEQ       ||$C$L12||            ; [DPU_PIPE] |167| 
        ; BRANCHCC OCCURS {||$C$L12||}   ; [] |167| 
;* --------------------------------------------------------------------------*
;** 168	-----------------------    ++errors;
	.dwpsn	file "../sources/dm368_ddr.c",line 168,column 3,is_stmt,isa 2
        ADD       V9, V1, #1            ; [DPU_PIPE] |168| 
        MOV       V1, V9, LSL #16       ; [DPU_PIPE] 
        MOV       V1, V1, LSR #16       ; [DPU_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L12||:    
;**	-----------------------g3:
;** 169	-----------------------    if ( !ddr_word_rwTest(0x80000000u, 1048576u, 0xaaaaaaaau) ) goto g5;
	.dwpsn	file "../sources/dm368_ddr.c",line 169,column 2,is_stmt,isa 2
        LDR       A3, $C$CON13          ; [DPU_PIPE] |169| 
        MOV       A1, #-2147483648      ; [DPU_PIPE] |169| 
        MOV       A2, #1048576          ; [DPU_PIPE] |169| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("ddr_word_rwTest")
	.dwattr $C$DW$33, DW_AT_TI_call
        BL        ddr_word_rwTest       ; [DPU_PIPE] |169| 
        ; CALL OCCURS {ddr_word_rwTest }  ; [] |169| 
        CMP       A1, #0                ; [DPU_PIPE] |169| 
        BEQ       ||$C$L13||            ; [DPU_PIPE] |169| 
        ; BRANCHCC OCCURS {||$C$L13||}   ; [] |169| 
;* --------------------------------------------------------------------------*
;** 170	-----------------------    errors += 2;
	.dwpsn	file "../sources/dm368_ddr.c",line 170,column 3,is_stmt,isa 2
        ADD       V9, V1, #2            ; [DPU_PIPE] |170| 
        MOV       V1, V9, LSL #16       ; [DPU_PIPE] 
        MOV       V1, V1, LSR #16       ; [DPU_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L13||:    
;**	-----------------------g5:
;** 171	-----------------------    if ( !ddr_word_rwTest(0x80000000u, 1048576u, 0x55555555u) ) goto g7;
	.dwpsn	file "../sources/dm368_ddr.c",line 171,column 2,is_stmt,isa 2
        LDR       A3, $C$CON14          ; [DPU_PIPE] |171| 
        MOV       A1, #-2147483648      ; [DPU_PIPE] |171| 
        MOV       A2, #1048576          ; [DPU_PIPE] |171| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("ddr_word_rwTest")
	.dwattr $C$DW$34, DW_AT_TI_call
        BL        ddr_word_rwTest       ; [DPU_PIPE] |171| 
        ; CALL OCCURS {ddr_word_rwTest }  ; [] |171| 
        CMP       A1, #0                ; [DPU_PIPE] |171| 
        BEQ       ||$C$L14||            ; [DPU_PIPE] |171| 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |171| 
;* --------------------------------------------------------------------------*
;** 172	-----------------------    errors += 4;
	.dwpsn	file "../sources/dm368_ddr.c",line 172,column 3,is_stmt,isa 2
        ADD       V9, V1, #4            ; [DPU_PIPE] |172| 
        MOV       V1, V9, LSL #16       ; [DPU_PIPE] 
        MOV       V1, V1, LSR #16       ; [DPU_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L14||:    
;**	-----------------------g7:
;** 173	-----------------------    if ( !ddr_word_rwTest(0x80000000u, 1048576u, 0u) ) goto g9;
	.dwpsn	file "../sources/dm368_ddr.c",line 173,column 2,is_stmt,isa 2
        MOV       A1, #-2147483648      ; [DPU_PIPE] |173| 
        MOV       A2, #1048576          ; [DPU_PIPE] |173| 
        MOV       A3, #0                ; [DPU_PIPE] |173| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("ddr_word_rwTest")
	.dwattr $C$DW$35, DW_AT_TI_call
        BL        ddr_word_rwTest       ; [DPU_PIPE] |173| 
        ; CALL OCCURS {ddr_word_rwTest }  ; [] |173| 
        CMP       A1, #0                ; [DPU_PIPE] |173| 
        BEQ       ||$C$L15||            ; [DPU_PIPE] |173| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |173| 
;* --------------------------------------------------------------------------*
;** 174	-----------------------    errors += 8;
	.dwpsn	file "../sources/dm368_ddr.c",line 174,column 3,is_stmt,isa 2
        ADD       V9, V1, #8            ; [DPU_PIPE] |174| 
        MOV       V1, V9, LSL #16       ; [DPU_PIPE] 
        MOV       V1, V1, LSR #16       ; [DPU_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L15||:    
;**	-----------------------g9:
;** 178	-----------------------    return errors != 0u;
	.dwpsn	file "../sources/dm368_ddr.c",line 178,column 3,is_stmt,isa 2
        CMP       V1, #0                ; [DPU_PIPE] |178| 
        MOV       A1, A3                ; [DPU_PIPE] 
        BEQ       ||$C$L16||            ; [DPU_PIPE] |178| 
        ; BRANCHCC OCCURS {||$C$L16||}   ; [] |178| 
;* --------------------------------------------------------------------------*
        MOV       A1, #1                ; [DPU_PIPE] |178| 
;* --------------------------------------------------------------------------*
||$C$L16||:    
	.dwpsn	file "../sources/dm368_ddr.c",line 182,column 1,is_stmt,isa 2
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return
        LDMFD     SP!, {V1, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("../sources/dm368_ddr.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0xb6)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	29622388,32
	.align	4
||$C$CON2||:	.bits	-24769,32
	.align	4
||$C$CON3||:	.bits	16448,32
	.align	4
||$C$CON4||:	.bits	536871140,32
	.align	4
||$C$CON5||:	.bits	139708466,32
	.align	4
||$C$CON6||:	.bits	1896,32
	.align	4
||$C$CON7||:	.bits	536870944,32
	.align	4
||$C$CON8||:	.bits	536870928,32
	.align	4
||$C$CON9||:	.bits	1466789018,32
	.align	4
||$C$CON10||:	.bits	536870932,32
	.align	4
||$C$CON11||:	.bits	1143916354,32
	.align	4
||$C$CON12||:	.bits	139675698,32
	.align	4
||$C$CON13||:	.bits	-1431655766,32
	.align	4
||$C$CON14||:	.bits	1431655765,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	dm368_psc_changeState

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
$C$DW$T$22	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$22, DW_AT_address_class(0x20)
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

