;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.1.1 *
;* Date/Time created: Mon Feb 13 10:49:57 2017                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=on --code_state=32 --diag_wrap=off --embedded_constants=on --endian=little --float_support=vfplib --hll_source=on --object_format=elf --silicon_version=5e --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=off 
	.state32

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/dm368_gpio.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.1.1 Copyright (c) 1996-2013 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("E:\Projects\CCS5.5\system_test\system_test_led\Debug")
;	D:\WorkSpace\CCS5.5\ccsv5\tools\compiler\arm_5.1.1\bin\armopt.exe --call_assumptions=0 --gen_opt_info=0 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\038882 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\038884 --opt_info_filename=sources\\dm368_gpio.nfo 
	.sect	".text"
	.clink
	.armfunc dm368_gpio_init
	.state32
	.global	dm368_gpio_init

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_gpio_init")
	.dwattr $C$DW$1, DW_AT_low_pc(dm368_gpio_init)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("dm368_gpio_init")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x1d)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$1, DW_AT_decl_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x07)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_gpio.c",line 30,column 1,is_stmt,address dm368_gpio_init,isa 2

	.dwfde $C$DW$CIE, dm368_gpio_init

;*****************************************************************************
;* FUNCTION NAME: dm368_gpio_init                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
dm368_gpio_init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 32	-----------------------    *(volatile unsigned *)0x1c67004u = 1u;
;** 35	-----------------------    dm368_gpio_setDirection(61, 0);
;** 36	-----------------------    dm368_gpio_setDirection(62, 0);
;** 37	-----------------------    dm368_gpio_setDirection(63, 0);
;** 38	-----------------------    dm368_gpio_setDirection(64, 0);
;** 40	-----------------------    return 0;
        STMFD     SP!, {A4, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../sources/dm368_gpio.c",line 32,column 5,is_stmt,isa 2
        LDR       A1, $C$CON1           ; [DPU_PIPE] |32| 
        MOV       V9, #1                ; [DPU_PIPE] |32| 
        STR       V9, [A1, #0]          ; [DPU_PIPE] |32| 
	.dwpsn	file "../sources/dm368_gpio.c",line 35,column 2,is_stmt,isa 2
        MOV       A2, #0                ; [DPU_PIPE] |35| 
        MOV       A1, #61               ; [DPU_PIPE] |35| 
$C$DW$2	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$2, DW_AT_low_pc(0x00)
	.dwattr $C$DW$2, DW_AT_name("dm368_gpio_setDirection")
	.dwattr $C$DW$2, DW_AT_TI_call
        BL        dm368_gpio_setDirection ; [DPU_PIPE] |35| 
        ; CALL OCCURS {dm368_gpio_setDirection }  ; [] |35| 
	.dwpsn	file "../sources/dm368_gpio.c",line 36,column 2,is_stmt,isa 2
        MOV       A1, #62               ; [DPU_PIPE] |36| 
        MOV       A2, #0                ; [DPU_PIPE] |36| 
$C$DW$3	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$3, DW_AT_low_pc(0x00)
	.dwattr $C$DW$3, DW_AT_name("dm368_gpio_setDirection")
	.dwattr $C$DW$3, DW_AT_TI_call
        BL        dm368_gpio_setDirection ; [DPU_PIPE] |36| 
        ; CALL OCCURS {dm368_gpio_setDirection }  ; [] |36| 
	.dwpsn	file "../sources/dm368_gpio.c",line 37,column 2,is_stmt,isa 2
        MOV       A1, #63               ; [DPU_PIPE] |37| 
        MOV       A2, #0                ; [DPU_PIPE] |37| 
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_name("dm368_gpio_setDirection")
	.dwattr $C$DW$4, DW_AT_TI_call
        BL        dm368_gpio_setDirection ; [DPU_PIPE] |37| 
        ; CALL OCCURS {dm368_gpio_setDirection }  ; [] |37| 
	.dwpsn	file "../sources/dm368_gpio.c",line 38,column 2,is_stmt,isa 2
        MOV       A1, #64               ; [DPU_PIPE] |38| 
        MOV       A2, #0                ; [DPU_PIPE] |38| 
$C$DW$5	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$5, DW_AT_low_pc(0x00)
	.dwattr $C$DW$5, DW_AT_name("dm368_gpio_setDirection")
	.dwattr $C$DW$5, DW_AT_TI_call
        BL        dm368_gpio_setDirection ; [DPU_PIPE] |38| 
        ; CALL OCCURS {dm368_gpio_setDirection }  ; [] |38| 
	.dwpsn	file "../sources/dm368_gpio.c",line 40,column 5,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |40| 
	.dwpsn	file "../sources/dm368_gpio.c",line 41,column 1,is_stmt,isa 2
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return
        LDMFD     SP!, {A4, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x29)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.clink
	.armfunc dm368_gpio_setDirection
	.state32
	.global	dm368_gpio_setDirection

$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_gpio_setDirection")
	.dwattr $C$DW$7, DW_AT_low_pc(dm368_gpio_setDirection)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("dm368_gpio_setDirection")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x33)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$7, DW_AT_decl_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x33)
	.dwattr $C$DW$7, DW_AT_decl_column(0x07)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/dm368_gpio.c",line 52,column 1,is_stmt,address dm368_gpio_setDirection,isa 2

	.dwfde $C$DW$CIE, dm368_gpio_setDirection
$C$DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_name("number")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg0]
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("direction")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("direction")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: dm368_gpio_setDirection                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SR                                   *
;*   Regs Used         : A1,A2,A3,A4,V9,LR,SR                                *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
dm368_gpio_setDirection:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 53	-----------------------    bank_id = (int)number>>5;
;** 54	-----------------------    pin_id = 1u<<(number&0x1f);
;** 55	-----------------------    gpio_dir = (unsigned *)(bank_id*40u)+0x1c67010u;
;** 57	-----------------------    if ( direction&1 ) goto g3;
;* A1    assigned to number
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("number")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]
;* A2    assigned to direction
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("direction")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("direction")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg1]
;* V9    assigned to bank_id
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("bank_id")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("bank_id")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg12]
;* A1    assigned to pin_id
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("pin_id")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("pin_id")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg0]
;* V9    assigned to gpio_dir
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("gpio_dir")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("gpio_dir")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg12]
	.dwpsn	file "../sources/dm368_gpio.c",line 53,column 20,is_stmt,isa 2
        MOV       V9, A1, LSR #5        ; [DPU_PIPE] |53| 
	.dwpsn	file "../sources/dm368_gpio.c",line 54,column 20,is_stmt,isa 2
        MOV       A3, #1                ; [DPU_PIPE] |54| 
        AND       A1, A1, #31           ; [DPU_PIPE] |54| 
        MOV       A1, A3, LSL A1        ; [DPU_PIPE] |54| 
	.dwpsn	file "../sources/dm368_gpio.c",line 55,column 22,is_stmt,isa 2
        LDR       A4, $C$CON2           ; [DPU_PIPE] |55| 
        MOV       A3, V9, LSL #5        ; [DPU_PIPE] |55| 
        ADD       V9, A3, V9, LSL #3    ; [DPU_PIPE] |55| 
        ADD       V9, A4, V9            ; [DPU_PIPE] |55| 
	.dwpsn	file "../sources/dm368_gpio.c",line 57,column 5,is_stmt,isa 2
        MOVS      A2, A2, LSL #31       ; [DPU_PIPE] |57| 
        BNE       ||$C$L1||             ; [DPU_PIPE] |57| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |57| 
;* --------------------------------------------------------------------------*
;** 58	-----------------------    *gpio_dir &= ~pin_id;
;** 58	-----------------------    goto g4;
	.dwpsn	file "../sources/dm368_gpio.c",line 58,column 9,is_stmt,isa 2
        LDR       A2, [V9, #0]          ; [DPU_PIPE] |58| 
        BIC       A1, A2, A1            ; [DPU_PIPE] |58| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |58| 
        B         ||$C$L2||             ; [DPU_PIPE] |58| 
        ; BRANCH OCCURS {||$C$L2||}      ; [] |58| 
;* --------------------------------------------------------------------------*
||$C$L1||:    
;**	-----------------------g3:
;** 60	-----------------------    *gpio_dir |= pin_id;
	.dwpsn	file "../sources/dm368_gpio.c",line 60,column 9,is_stmt,isa 2
        LDR       A2, [V9, #0]          ; [DPU_PIPE] |60| 
        ORR       A1, A1, A2            ; [DPU_PIPE] |60| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |60| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
;**	-----------------------g4:
;** 62	-----------------------    return 0;
	.dwpsn	file "../sources/dm368_gpio.c",line 62,column 5,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |62| 
	.dwpsn	file "../sources/dm368_gpio.c",line 63,column 1,is_stmt,isa 2
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return
        BX        LR                    ; [DPU_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x3f)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text"
	.clink
	.armfunc dm368_gpio_setOutput
	.state32
	.global	dm368_gpio_setOutput

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_gpio_setOutput")
	.dwattr $C$DW$16, DW_AT_low_pc(dm368_gpio_setOutput)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("dm368_gpio_setOutput")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$16, DW_AT_TI_begin_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x49)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$16, DW_AT_decl_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x49)
	.dwattr $C$DW$16, DW_AT_decl_column(0x07)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/dm368_gpio.c",line 74,column 1,is_stmt,address dm368_gpio_setOutput,isa 2

	.dwfde $C$DW$CIE, dm368_gpio_setOutput
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("number")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg0]
$C$DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("output")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: dm368_gpio_setOutput                                       *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SR                                   *
;*   Regs Used         : A1,A2,A3,A4,V9,LR,SR                                *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
dm368_gpio_setOutput:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 75	-----------------------    bank_id = (int)number>>5;
;** 76	-----------------------    pin_id = 1u<<(number&0x1f);
;** 77	-----------------------    gpio_out = (unsigned *)(bank_id*40u)+0x1c67014u;
;** 79	-----------------------    if ( output&1 ) goto g3;
;* A1    assigned to number
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("number")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg0]
;* A2    assigned to output
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("output")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("output")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg1]
;* V9    assigned to bank_id
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("bank_id")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("bank_id")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg12]
;* A1    assigned to pin_id
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("pin_id")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("pin_id")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]
;* V9    assigned to gpio_out
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("gpio_out")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("gpio_out")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg12]
	.dwpsn	file "../sources/dm368_gpio.c",line 75,column 20,is_stmt,isa 2
        MOV       V9, A1, LSR #5        ; [DPU_PIPE] |75| 
	.dwpsn	file "../sources/dm368_gpio.c",line 76,column 20,is_stmt,isa 2
        MOV       A3, #1                ; [DPU_PIPE] |76| 
        AND       A1, A1, #31           ; [DPU_PIPE] |76| 
        MOV       A1, A3, LSL A1        ; [DPU_PIPE] |76| 
	.dwpsn	file "../sources/dm368_gpio.c",line 77,column 22,is_stmt,isa 2
        LDR       A4, $C$CON3           ; [DPU_PIPE] |77| 
        MOV       A3, V9, LSL #5        ; [DPU_PIPE] |77| 
        ADD       V9, A3, V9, LSL #3    ; [DPU_PIPE] |77| 
        ADD       V9, A4, V9            ; [DPU_PIPE] |77| 
	.dwpsn	file "../sources/dm368_gpio.c",line 79,column 5,is_stmt,isa 2
        MOVS      A2, A2, LSL #31       ; [DPU_PIPE] |79| 
        BNE       ||$C$L3||             ; [DPU_PIPE] |79| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |79| 
;* --------------------------------------------------------------------------*
;** 80	-----------------------    *gpio_out &= ~pin_id;
;** 80	-----------------------    goto g4;
	.dwpsn	file "../sources/dm368_gpio.c",line 80,column 9,is_stmt,isa 2
        LDR       A2, [V9, #0]          ; [DPU_PIPE] |80| 
        BIC       A1, A2, A1            ; [DPU_PIPE] |80| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |80| 
        B         ||$C$L4||             ; [DPU_PIPE] |80| 
        ; BRANCH OCCURS {||$C$L4||}      ; [] |80| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
;**	-----------------------g3:
;** 82	-----------------------    *gpio_out |= pin_id;
	.dwpsn	file "../sources/dm368_gpio.c",line 82,column 9,is_stmt,isa 2
        LDR       A2, [V9, #0]          ; [DPU_PIPE] |82| 
        ORR       A1, A1, A2            ; [DPU_PIPE] |82| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |82| 
;* --------------------------------------------------------------------------*
||$C$L4||:    
;**	-----------------------g4:
;** 84	-----------------------    return 0;
	.dwpsn	file "../sources/dm368_gpio.c",line 84,column 5,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |84| 
	.dwpsn	file "../sources/dm368_gpio.c",line 85,column 1,is_stmt,isa 2
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return
        BX        LR                    ; [DPU_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x55)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"
	.clink
	.armfunc dm368_gpio_getInput
	.state32
	.global	dm368_gpio_getInput

$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_gpio_getInput")
	.dwattr $C$DW$25, DW_AT_low_pc(dm368_gpio_getInput)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("dm368_gpio_getInput")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$25, DW_AT_TI_begin_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0x61)
	.dwattr $C$DW$25, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$25, DW_AT_decl_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x61)
	.dwattr $C$DW$25, DW_AT_decl_column(0x07)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/dm368_gpio.c",line 98,column 1,is_stmt,address dm368_gpio_getInput,isa 2

	.dwfde $C$DW$CIE, dm368_gpio_getInput
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("number")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: dm368_gpio_getInput                                        *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,V9                                         *
;*   Regs Used         : A1,A2,A3,V9,LR                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
dm368_gpio_getInput:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 100	-----------------------    bank_id = (int)number>>5;
;** 101	-----------------------    pin_id = number&0x1fu;
;** 102	-----------------------    gpio_in = (unsigned *)(bank_id*40u)+0x1c67020u;
;** 104	-----------------------    input = *gpio_in>>pin_id&1u;
;** 107	-----------------------    return (short)input;
;* A1    assigned to number
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("number")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg0]
;* A1    assigned to input
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("input")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg0]
;* V9    assigned to bank_id
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("bank_id")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("bank_id")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg12]
;* A2    assigned to pin_id
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("pin_id")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("pin_id")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg1]
;* V9    assigned to gpio_in
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("gpio_in")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("gpio_in")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]
	.dwpsn	file "../sources/dm368_gpio.c",line 100,column 20,is_stmt,isa 2
        MOV       V9, A1, LSR #5        ; [DPU_PIPE] |100| 
	.dwpsn	file "../sources/dm368_gpio.c",line 101,column 20,is_stmt,isa 2
        AND       A2, A1, #31           ; [DPU_PIPE] |101| 
	.dwpsn	file "../sources/dm368_gpio.c",line 102,column 21,is_stmt,isa 2
        LDR       A3, $C$CON4           ; [DPU_PIPE] |102| 
        MOV       A1, V9, LSL #5        ; [DPU_PIPE] |102| 
        ADD       V9, A1, V9, LSL #3    ; [DPU_PIPE] |102| 
        ADD       V9, A3, V9            ; [DPU_PIPE] |102| 
	.dwpsn	file "../sources/dm368_gpio.c",line 104,column 5,is_stmt,isa 2
        LDR       V9, [V9, #0]          ; [DPU_PIPE] |104| 
        MOV       V9, V9, LSR A2        ; [DPU_PIPE] |104| 
        AND       A1, V9, #1            ; [DPU_PIPE] |104| 
	.dwpsn	file "../sources/dm368_gpio.c",line 107,column 5,is_stmt,isa 2
	.dwpsn	file "../sources/dm368_gpio.c",line 108,column 1,is_stmt,isa 2
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return
        BX        LR                    ; [DPU_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x6c)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text"
	.clink
	.armfunc dm368_led_off
	.state32
	.global	dm368_led_off

$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_led_off")
	.dwattr $C$DW$33, DW_AT_low_pc(dm368_led_off)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("dm368_led_off")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$33, DW_AT_TI_begin_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0x78)
	.dwattr $C$DW$33, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$33, DW_AT_decl_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0x78)
	.dwattr $C$DW$33, DW_AT_decl_column(0x07)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_gpio.c",line 121,column 1,is_stmt,address dm368_led_off,isa 2

	.dwfde $C$DW$CIE, dm368_led_off
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("number")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: dm368_led_off                                              *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
dm368_led_off:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 124	-----------------------    dm368_gpio_setOutput((int)(number += 61), 1);
;** 126	-----------------------    return 0;
        STMFD     SP!, {A4, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
;* A1    assigned to number
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("number")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg0]
	.dwpsn	file "../sources/dm368_gpio.c",line 124,column 2,is_stmt,isa 2
        ADD       V9, A1, #61           ; [DPU_PIPE] |124| 
        MOV       A2, #1                ; [DPU_PIPE] |124| 
        MOV       A1, V9, LSL #16       ; [DPU_PIPE] 
        MOV       A1, A1, LSR #16       ; [DPU_PIPE] 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("dm368_gpio_setOutput")
	.dwattr $C$DW$36, DW_AT_TI_call
        BL        dm368_gpio_setOutput  ; [DPU_PIPE] |124| 
        ; CALL OCCURS {dm368_gpio_setOutput }  ; [] |124| 
	.dwpsn	file "../sources/dm368_gpio.c",line 126,column 2,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |126| 
	.dwpsn	file "../sources/dm368_gpio.c",line 127,column 1,is_stmt,isa 2
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return
        LDMFD     SP!, {A4, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$33, DW_AT_TI_end_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x7f)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text"
	.clink
	.armfunc dm368_led_on
	.state32
	.global	dm368_led_on

$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_led_on")
	.dwattr $C$DW$38, DW_AT_low_pc(dm368_led_on)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("dm368_led_on")
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$38, DW_AT_TI_begin_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$38, DW_AT_TI_begin_line(0x8c)
	.dwattr $C$DW$38, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$38, DW_AT_decl_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$38, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$38, DW_AT_decl_column(0x07)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_gpio.c",line 141,column 1,is_stmt,address dm368_led_on,isa 2

	.dwfde $C$DW$CIE, dm368_led_on
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("number")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: dm368_led_on                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
dm368_led_on:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 144	-----------------------    dm368_gpio_setOutput((int)(number += 61), 0);
;** 146	-----------------------    return 0;
        STMFD     SP!, {A4, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
;* A1    assigned to number
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("number")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg0]
	.dwpsn	file "../sources/dm368_gpio.c",line 144,column 2,is_stmt,isa 2
        ADD       V9, A1, #61           ; [DPU_PIPE] |144| 
        MOV       A2, #0                ; [DPU_PIPE] |144| 
        MOV       A1, V9, LSL #16       ; [DPU_PIPE] 
        MOV       A1, A1, LSR #16       ; [DPU_PIPE] 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("dm368_gpio_setOutput")
	.dwattr $C$DW$41, DW_AT_TI_call
        BL        dm368_gpio_setOutput  ; [DPU_PIPE] |144| 
        ; CALL OCCURS {dm368_gpio_setOutput }  ; [] |144| 
	.dwpsn	file "../sources/dm368_gpio.c",line 146,column 2,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |146| 
	.dwpsn	file "../sources/dm368_gpio.c",line 147,column 1,is_stmt,isa 2
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return
        LDMFD     SP!, {A4, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$38, DW_AT_TI_end_file("../sources/dm368_gpio.c")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x93)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$38

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	29782020,32
	.align	4
||$C$CON2||:	.bits	29782032,32
	.align	4
||$C$CON3||:	.bits	29782036,32
	.align	4
||$C$CON4||:	.bits	29782048,32

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

