;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.1.1 *
;* Date/Time created: Mon Feb 13 10:49:59 2017                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=on --code_state=32 --diag_wrap=off --embedded_constants=on --endian=little --float_support=vfplib --hll_source=on --object_format=elf --silicon_version=5e --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=off 
	.state32

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/dm368_psc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.1.1 Copyright (c) 1996-2013 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("E:\Projects\CCS5.5\system_test\system_test_led\Debug")
;	D:\WorkSpace\CCS5.5\ccsv5\tools\compiler\arm_5.1.1\bin\armopt.exe --call_assumptions=0 --gen_opt_info=0 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\060162 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\060164 --opt_info_filename=sources\\dm368_psc.nfo 
	.sect	".text"
	.clink
	.armfunc dm368_psc_init
	.state32
	.global	dm368_psc_init

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_psc_init")
	.dwattr $C$DW$1, DW_AT_low_pc(dm368_psc_init)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("dm368_psc_init")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("../sources/dm368_psc.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x1a)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$1, DW_AT_decl_file("../sources/dm368_psc.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$1, DW_AT_decl_column(0x07)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_psc.c",line 27,column 1,is_stmt,address dm368_psc_init,isa 2

	.dwfde $C$DW$CIE, dm368_psc_init

;*****************************************************************************
;* FUNCTION NAME: dm368_psc_init                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
dm368_psc_init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 28	-----------------------    dm368_psc_enableAll();
;** 29	-----------------------    return 0;
        STMFD     SP!, {A4, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../sources/dm368_psc.c",line 28,column 2,is_stmt,isa 2
$C$DW$2	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$2, DW_AT_low_pc(0x00)
	.dwattr $C$DW$2, DW_AT_name("dm368_psc_enableAll")
	.dwattr $C$DW$2, DW_AT_TI_call
        BL        dm368_psc_enableAll   ; [DPU_PIPE] |28| 
        ; CALL OCCURS {dm368_psc_enableAll }  ; [] |28| 
	.dwpsn	file "../sources/dm368_psc.c",line 29,column 2,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |29| 
	.dwpsn	file "../sources/dm368_psc.c",line 30,column 1,is_stmt,isa 2
$C$DW$3	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$3, DW_AT_low_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_return
        LDMFD     SP!, {A4, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../sources/dm368_psc.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x1e)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.clink
	.armfunc dm368_psc_enableAll
	.state32
	.global	dm368_psc_enableAll

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_psc_enableAll")
	.dwattr $C$DW$4, DW_AT_low_pc(dm368_psc_enableAll)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("dm368_psc_enableAll")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$4, DW_AT_TI_begin_file("../sources/dm368_psc.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x26)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$4, DW_AT_decl_file("../sources/dm368_psc.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x26)
	.dwattr $C$DW$4, DW_AT_decl_column(0x07)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_psc.c",line 39,column 1,is_stmt,address dm368_psc_enableAll,isa 2

	.dwfde $C$DW$CIE, dm368_psc_enableAll

;*****************************************************************************
;* FUNCTION NAME: dm368_psc_enableAll                                        *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Regs Used         : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                   *
;*****************************************************************************
dm368_psc_enableAll:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 41	-----------------------    if ( (i = 0u) > 40 ) goto g3;
        STMFD     SP!, {V1, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
;* V1    assigned to i
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg4]
	.dwpsn	file "../sources/dm368_psc.c",line 41,column 13,is_stmt,isa 2
        MOV       V1, #0                ; [DPU_PIPE] |41| 
        CMP       V1, #40               ; [DPU_PIPE] |41| 
        BGT       ||$C$L2||             ; [DPU_PIPE] |41| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |41| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 41
;*   Loop closing brace source line  : 42
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
;**	-----------------------g2:
;** 42	-----------------------    dm368_psc_changeState((int)i, 3);
;** 41	-----------------------    if ( (++i) <= 40 ) goto g2;
	.dwpsn	file "../sources/dm368_psc.c",line 42,column 3,is_stmt,isa 2
        MOV       A1, V1                ; [DPU_PIPE] |42| 
        MOV       A2, #3                ; [DPU_PIPE] |42| 
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_name("dm368_psc_changeState")
	.dwattr $C$DW$6, DW_AT_TI_call
        BL        dm368_psc_changeState ; [DPU_PIPE] |42| 
        ; CALL OCCURS {dm368_psc_changeState }  ; [] |42| 
	.dwpsn	file "../sources/dm368_psc.c",line 41,column 19,is_stmt,isa 2
        ADD       V9, V1, #1            ; [DPU_PIPE] |41| 
        AND       V1, V9, #255          ; [DPU_PIPE] |41| 
        CMP       V1, #40               ; [DPU_PIPE] |41| 
        BLE       ||$C$L1||             ; [DPU_PIPE] |41| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |41| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
;**	-----------------------g3:
;** 43	-----------------------    if ( (i = 42u) >= 48 ) goto g5;
	.dwpsn	file "../sources/dm368_psc.c",line 43,column 14,is_stmt,isa 2
        MOV       V1, #42               ; [DPU_PIPE] |43| 
        CMP       V1, #48               ; [DPU_PIPE] |43| 
        BGE       ||$C$L4||             ; [DPU_PIPE] |43| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |43| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L3||
;*
;*   Loop source line                : 43
;*   Loop closing brace source line  : 44
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L3||:    
;**	-----------------------g4:
;** 44	-----------------------    dm368_psc_changeState((int)i, 3);
;** 43	-----------------------    if ( (++i) < 48 ) goto g4;
	.dwpsn	file "../sources/dm368_psc.c",line 44,column 3,is_stmt,isa 2
        MOV       A1, V1                ; [DPU_PIPE] |44| 
        MOV       A2, #3                ; [DPU_PIPE] |44| 
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_name("dm368_psc_changeState")
	.dwattr $C$DW$7, DW_AT_TI_call
        BL        dm368_psc_changeState ; [DPU_PIPE] |44| 
        ; CALL OCCURS {dm368_psc_changeState }  ; [] |44| 
	.dwpsn	file "../sources/dm368_psc.c",line 43,column 20,is_stmt,isa 2
        ADD       V9, V1, #1            ; [DPU_PIPE] |43| 
        AND       V1, V9, #255          ; [DPU_PIPE] |43| 
        CMP       V1, #48               ; [DPU_PIPE] |43| 
        BLT       ||$C$L3||             ; [DPU_PIPE] |43| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |43| 
;* --------------------------------------------------------------------------*
||$C$L4||:    
;**	-----------------------g5:
;** 45	-----------------------    if ( (i = 48u) >= 52 ) goto g7;
	.dwpsn	file "../sources/dm368_psc.c",line 45,column 14,is_stmt,isa 2
        MOV       V1, #48               ; [DPU_PIPE] |45| 
        CMP       V1, #52               ; [DPU_PIPE] |45| 
        BGE       ||$C$L6||             ; [DPU_PIPE] |45| 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |45| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L5||
;*
;*   Loop source line                : 45
;*   Loop closing brace source line  : 46
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L5||:    
;**	-----------------------g6:
;** 46	-----------------------    dm368_psc_changeState((int)i, 3);
;** 45	-----------------------    if ( (++i) < 52 ) goto g6;
	.dwpsn	file "../sources/dm368_psc.c",line 46,column 3,is_stmt,isa 2
        MOV       A1, V1                ; [DPU_PIPE] |46| 
        MOV       A2, #3                ; [DPU_PIPE] |46| 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_name("dm368_psc_changeState")
	.dwattr $C$DW$8, DW_AT_TI_call
        BL        dm368_psc_changeState ; [DPU_PIPE] |46| 
        ; CALL OCCURS {dm368_psc_changeState }  ; [] |46| 
	.dwpsn	file "../sources/dm368_psc.c",line 45,column 20,is_stmt,isa 2
        ADD       V9, V1, #1            ; [DPU_PIPE] |45| 
        AND       V1, V9, #255          ; [DPU_PIPE] |45| 
        CMP       V1, #52               ; [DPU_PIPE] |45| 
        BLT       ||$C$L5||             ; [DPU_PIPE] |45| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |45| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
;**	-----------------------g7:
;** 48	-----------------------    dm368_psc_changeState(41, 3);
;** 49	-----------------------    return 0;
	.dwpsn	file "../sources/dm368_psc.c",line 48,column 2,is_stmt,isa 2
        MOV       A1, #41               ; [DPU_PIPE] |48| 
        MOV       A2, #3                ; [DPU_PIPE] |48| 
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_name("dm368_psc_changeState")
	.dwattr $C$DW$9, DW_AT_TI_call
        BL        dm368_psc_changeState ; [DPU_PIPE] |48| 
        ; CALL OCCURS {dm368_psc_changeState }  ; [] |48| 
	.dwpsn	file "../sources/dm368_psc.c",line 49,column 2,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |49| 
	.dwpsn	file "../sources/dm368_psc.c",line 50,column 1,is_stmt,isa 2
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return
        LDMFD     SP!, {V1, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("../sources/dm368_psc.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x32)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.clink
	.armfunc dm368_psc_changeState
	.state32
	.global	dm368_psc_changeState

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_psc_changeState")
	.dwattr $C$DW$11, DW_AT_low_pc(dm368_psc_changeState)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("dm368_psc_changeState")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$11, DW_AT_TI_begin_file("../sources/dm368_psc.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x3e)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$11, DW_AT_decl_file("../sources/dm368_psc.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$11, DW_AT_decl_column(0x07)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/dm368_psc.c",line 63,column 1,is_stmt,address dm368_psc_changeState,isa 2

	.dwfde $C$DW$CIE, dm368_psc_changeState
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("id")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("state")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("state")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: dm368_psc_changeState                                      *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,V9,SR                                      *
;*   Regs Used         : A1,A2,A3,V9,LR,SR                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
dm368_psc_changeState:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 64	-----------------------    mdstat = (unsigned *)(id*4)+29628416;
;** 65	-----------------------    mdctl = (unsigned *)(id*4)+29628928;
;** 68	-----------------------    if ( state != *mdstat ) goto g3;
;* A1    assigned to id
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("id")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]
;* A2    assigned to state
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("state")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("state")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg1]
;* V9    assigned to mdstat
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("mdstat")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("mdstat")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg12]
;* A1    assigned to mdctl
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("mdctl")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("mdctl")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg0]
	.dwpsn	file "../sources/dm368_psc.c",line 64,column 17,is_stmt,isa 2
        LDR       V9, $C$CON1           ; [DPU_PIPE] |64| 
        ADD       V9, V9, A1, LSL #2    ; [DPU_PIPE] |64| 
	.dwpsn	file "../sources/dm368_psc.c",line 65,column 17,is_stmt,isa 2
        LDR       A3, $C$CON2           ; [DPU_PIPE] |65| 
        ADD       A1, A3, A1, LSL #2    ; [DPU_PIPE] |65| 
	.dwpsn	file "../sources/dm368_psc.c",line 68,column 2,is_stmt,isa 2
        LDR       V9, [V9, #0]          ; [DPU_PIPE] |68| 
        CMP       V9, A2                ; [DPU_PIPE] |68| 
        BEQ       ||$C$L7||             ; [DPU_PIPE] |68| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |68| 
;* --------------------------------------------------------------------------*
        LDR       V9, $C$CON3           ; [DPU_PIPE] |71| 
        B         ||$C$L8||             ; [DPU_PIPE] 
        ; BRANCH OCCURS {||$C$L8||}      ; [] 
;* --------------------------------------------------------------------------*
||$C$L7||:    
;** 69	-----------------------    return 1;
;**	-----------------------g3:
	.dwpsn	file "../sources/dm368_psc.c",line 69,column 3,is_stmt,isa 2
        MOV       A1, #1                ; [DPU_PIPE] |69| 
        B         ||$C$L10||            ; [DPU_PIPE] |69| 
        ; BRANCH OCCURS {||$C$L10||}     ; [] |69| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L8||
;*
;*   Loop source line                : 71
;*   Loop closing brace source line  : 71
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L8||:    
;**	-----------------------g4:
;** 71	-----------------------    if ( *(volatile unsigned *)0x1c41128u&1u ) goto g4;
	.dwpsn	file "../sources/dm368_psc.c",line 71,column 2,is_stmt,isa 2
        LDR       A3, [V9, #0]          ; [DPU_PIPE] |71| 
        MOVS      A3, A3, LSL #31       ; [DPU_PIPE] |71| 
        BNE       ||$C$L8||             ; [DPU_PIPE] |71| 
        ; BRANCHCC OCCURS {||$C$L8||}    ; [] |71| 
;* --------------------------------------------------------------------------*
;** 74	-----------------------    *mdctl &= 0xffffffe0u;
;** 75	-----------------------    *mdctl |= state;
;** 78	-----------------------    *(volatile unsigned *)0x1c41120u |= 1u;
	.dwpsn	file "../sources/dm368_psc.c",line 74,column 2,is_stmt,isa 2
        LDR       A3, [A1, #0]          ; [DPU_PIPE] |74| 
        BIC       A3, A3, #31           ; [DPU_PIPE] |74| 
        STR       A3, [A1, #0]          ; [DPU_PIPE] |74| 
	.dwpsn	file "../sources/dm368_psc.c",line 75,column 2,is_stmt,isa 2
        LDR       A3, [A1, #0]          ; [DPU_PIPE] |75| 
        ORR       A2, A2, A3            ; [DPU_PIPE] |75| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |75| 
	.dwpsn	file "../sources/dm368_psc.c",line 78,column 2,is_stmt,isa 2
        LDR       A2, $C$CON4           ; [DPU_PIPE] |78| 
        LDR       A1, [A2, #0]          ; [DPU_PIPE] |78| 
        ORR       A1, A1, #1            ; [DPU_PIPE] |78| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |78| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L9||
;*
;*   Loop source line                : 81
;*   Loop closing brace source line  : 81
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L9||:    
;**	-----------------------g6:
;** 81	-----------------------    if ( *(volatile unsigned *)0x1c41128u&1u ) goto g6;
	.dwpsn	file "../sources/dm368_psc.c",line 81,column 2,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |81| 
        MOVS      A1, A1, LSL #31       ; [DPU_PIPE] |81| 
        BNE       ||$C$L9||             ; [DPU_PIPE] |81| 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |81| 
;* --------------------------------------------------------------------------*
;** 82	-----------------------    return 0;
	.dwpsn	file "../sources/dm368_psc.c",line 82,column 2,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |82| 
;* --------------------------------------------------------------------------*
||$C$L10||:    
	.dwpsn	file "../sources/dm368_psc.c",line 84,column 1,is_stmt,isa 2
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return
        BX        LR                    ; [DPU_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../sources/dm368_psc.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x54)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	29628416,32
	.align	4
||$C$CON2||:	.bits	29628928,32
	.align	4
||$C$CON3||:	.bits	29626664,32
	.align	4
||$C$CON4||:	.bits	29626656,32

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
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x20)
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

