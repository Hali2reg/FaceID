;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.1.1 *
;* Date/Time created: Mon Feb 13 10:49:57 2017                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=on --code_state=32 --diag_wrap=off --embedded_constants=on --endian=little --float_support=vfplib --hll_source=on --object_format=elf --silicon_version=5e --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=off 
	.state32

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/dm368_i2c.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.1.1 Copyright (c) 1996-2013 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("E:\Projects\CCS5.5\system_test\system_test_led\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_wait")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("dm368_wait")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("E:\Projects\CCS5.5\system_test\system_test_led\heads\dm368.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x42e)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("dm368_waitusec")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("E:\Projects\CCS5.5\system_test\system_test_led\heads\dm368.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x42f)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$3

	.global	i2c_timeout
	.data
	.align	4
	.elfsym	i2c_timeout,SYM_SIZE(4)
i2c_timeout:
	.bits	65536,32			; i2c_timeout @ 0

$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("i2c_timeout")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("i2c_timeout")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr i2c_timeout]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$5, DW_AT_decl_column(0x07)
;	D:\WorkSpace\CCS5.5\ccsv5\tools\compiler\arm_5.1.1\bin\armopt.exe --call_assumptions=0 --gen_opt_info=0 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\027562 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\027564 --opt_info_filename=sources\\dm368_i2c.nfo 
	.sect	".text"
	.clink
	.armfunc dm368_i2c_init
	.state32
	.global	dm368_i2c_init

$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_i2c_init")
	.dwattr $C$DW$6, DW_AT_low_pc(dm368_i2c_init)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("dm368_i2c_init")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$6, DW_AT_TI_begin_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$6, DW_AT_TI_begin_line(0x18)
	.dwattr $C$DW$6, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$6, DW_AT_decl_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x18)
	.dwattr $C$DW$6, DW_AT_decl_column(0x07)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/dm368_i2c.c",line 25,column 1,is_stmt,address dm368_i2c_init,isa 2

	.dwfde $C$DW$CIE, dm368_i2c_init

;*****************************************************************************
;* FUNCTION NAME: dm368_i2c_init                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,V9                                         *
;*   Regs Used         : A1,A2,A3,V9,LR                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
dm368_i2c_init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 26	-----------------------    *(volatile unsigned *)0x1c21024u = 0u;
;** 27	-----------------------    *(volatile unsigned *)0x1c21030u = 11u;
;** 28	-----------------------    *(volatile unsigned *)0x1c2100cu = 5u;
;** 29	-----------------------    *(volatile unsigned *)0x1c21010u = 5u;
;** 30	-----------------------    *(volatile unsigned *)0x1c21024u |= 0x20u;
;** 32	-----------------------    return 0;
	.dwpsn	file "../sources/dm368_i2c.c",line 26,column 5,is_stmt,isa 2
        LDR       A2, $C$CON1           ; [DPU_PIPE] |26| 
        MOV       A1, #0                ; [DPU_PIPE] |26| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |26| 
	.dwpsn	file "../sources/dm368_i2c.c",line 27,column 5,is_stmt,isa 2
        LDR       A3, $C$CON2           ; [DPU_PIPE] |27| 
        MOV       V9, #11               ; [DPU_PIPE] |27| 
        STR       V9, [A3, #0]          ; [DPU_PIPE] |27| 
	.dwpsn	file "../sources/dm368_i2c.c",line 28,column 5,is_stmt,isa 2
        LDR       A3, $C$CON3           ; [DPU_PIPE] |28| 
        MOV       V9, #5                ; [DPU_PIPE] |28| 
        STR       V9, [A3, #0]          ; [DPU_PIPE] |28| 
	.dwpsn	file "../sources/dm368_i2c.c",line 29,column 5,is_stmt,isa 2
        LDR       A3, $C$CON4           ; [DPU_PIPE] |29| 
        STR       V9, [A3, #0]          ; [DPU_PIPE] |29| 
	.dwpsn	file "../sources/dm368_i2c.c",line 30,column 5,is_stmt,isa 2
        LDR       V9, [A2, #0]          ; [DPU_PIPE] |30| 
        ORR       V9, V9, #32           ; [DPU_PIPE] |30| 
        STR       V9, [A2, #0]          ; [DPU_PIPE] |30| 
	.dwpsn	file "../sources/dm368_i2c.c",line 32,column 5,is_stmt,isa 2
	.dwpsn	file "../sources/dm368_i2c.c",line 33,column 1,is_stmt,isa 2
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return
        BX        LR                    ; [DPU_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x21)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text"
	.clink
	.armfunc dm368_i2c_close
	.state32
	.global	dm368_i2c_close

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_i2c_close")
	.dwattr $C$DW$8, DW_AT_low_pc(dm368_i2c_close)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("dm368_i2c_close")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$8, DW_AT_TI_begin_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x28)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$8, DW_AT_decl_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x28)
	.dwattr $C$DW$8, DW_AT_decl_column(0x07)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/dm368_i2c.c",line 41,column 1,is_stmt,address dm368_i2c_close,isa 2

	.dwfde $C$DW$CIE, dm368_i2c_close

;*****************************************************************************
;* FUNCTION NAME: dm368_i2c_close                                            *
;*                                                                           *
;*   Regs Modified     : A1,V9                                               *
;*   Regs Used         : A1,V9,LR                                            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
dm368_i2c_close:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 42	-----------------------    *(volatile unsigned *)0x1c21024u = 0u;
;** 43	-----------------------    return 0;
	.dwpsn	file "../sources/dm368_i2c.c",line 42,column 9,is_stmt,isa 2
        LDR       V9, $C$CON1           ; [DPU_PIPE] |42| 
        MOV       A1, #0                ; [DPU_PIPE] |42| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |42| 
	.dwpsn	file "../sources/dm368_i2c.c",line 43,column 9,is_stmt,isa 2
	.dwpsn	file "../sources/dm368_i2c.c",line 44,column 1,is_stmt,isa 2
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return
        BX        LR                    ; [DPU_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$8, DW_AT_TI_end_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x2c)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"
	.clink
	.armfunc dm368_i2c_reset
	.state32
	.global	dm368_i2c_reset

$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_i2c_reset")
	.dwattr $C$DW$10, DW_AT_low_pc(dm368_i2c_reset)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("dm368_i2c_reset")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$10, DW_AT_TI_begin_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x33)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$10, DW_AT_decl_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x33)
	.dwattr $C$DW$10, DW_AT_decl_column(0x07)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_i2c.c",line 52,column 1,is_stmt,address dm368_i2c_reset,isa 2

	.dwfde $C$DW$CIE, dm368_i2c_reset

;*****************************************************************************
;* FUNCTION NAME: dm368_i2c_reset                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
dm368_i2c_reset:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 53	-----------------------    dm368_i2c_close();
;** 54	-----------------------    dm368_i2c_init();
;** 55	-----------------------    return 0;
        STMFD     SP!, {A4, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../sources/dm368_i2c.c",line 53,column 5,is_stmt,isa 2
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_name("dm368_i2c_close")
	.dwattr $C$DW$11, DW_AT_TI_call
        BL        dm368_i2c_close       ; [DPU_PIPE] |53| 
        ; CALL OCCURS {dm368_i2c_close }  ; [] |53| 
	.dwpsn	file "../sources/dm368_i2c.c",line 54,column 5,is_stmt,isa 2
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("dm368_i2c_init")
	.dwattr $C$DW$12, DW_AT_TI_call
        BL        dm368_i2c_init        ; [DPU_PIPE] |54| 
        ; CALL OCCURS {dm368_i2c_init }  ; [] |54| 
	.dwpsn	file "../sources/dm368_i2c.c",line 55,column 5,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |55| 
	.dwpsn	file "../sources/dm368_i2c.c",line 56,column 1,is_stmt,isa 2
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return
        LDMFD     SP!, {A4, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x38)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"
	.clink
	.armfunc dm368_i2c_write
	.state32
	.global	dm368_i2c_write

$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_i2c_write")
	.dwattr $C$DW$14, DW_AT_low_pc(dm368_i2c_write)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("dm368_i2c_write")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$14, DW_AT_TI_begin_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x45)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$14, DW_AT_decl_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x45)
	.dwattr $C$DW$14, DW_AT_decl_column(0x07)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../sources/dm368_i2c.c",line 70,column 1,is_stmt,address dm368_i2c_write,isa 2

	.dwfde $C$DW$CIE, dm368_i2c_write
$C$DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2c_addr")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("i2c_addr")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg0]
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg1]
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: dm368_i2c_write                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V9,SP,LR,SR                    *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V9,SP,LR,SR                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                 *
;*****************************************************************************
dm368_i2c_write:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 74	-----------------------    *(volatile unsigned *)0x1c21014u = len;
;** 75	-----------------------    *(volatile unsigned *)0x1c2101cu = i2c_addr;
;** 76	-----------------------    *(volatile unsigned *)0x1c21024u = 26144u;
;** 82	-----------------------    dm368_wait(10u);
;** 84	-----------------------    if ( (i = 0) >= len ) goto g7;
        STMFD     SP!, {V1, V2, V3, LR} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 6, -8
	.dwcfi	save_reg_to_mem, 5, -12
	.dwcfi	save_reg_to_mem, 4, -16
;* A1    assigned to i2c_addr
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("i2c_addr")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("i2c_addr")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]
;* V3    assigned to data
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg6]
;* V2    assigned to len
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg5]
;* A3    assigned to timeout
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg2]
;* A1    assigned to i
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]
        MOV       V2, A3                ; [DPU_PIPE] |70| 
        MOV       V3, A2                ; [DPU_PIPE] |70| 
	.dwpsn	file "../sources/dm368_i2c.c",line 74,column 5,is_stmt,isa 2
        LDR       V9, $C$CON5           ; [DPU_PIPE] |74| 
        STR       V2, [V9, #0]          ; [DPU_PIPE] |74| 
	.dwpsn	file "../sources/dm368_i2c.c",line 75,column 5,is_stmt,isa 2
        LDR       V9, $C$CON6           ; [DPU_PIPE] |75| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |75| 
	.dwpsn	file "../sources/dm368_i2c.c",line 76,column 5,is_stmt,isa 2
        LDR       V1, $C$CON1           ; [DPU_PIPE] |76| 
        LDR       V9, $C$CON7           ; [DPU_PIPE] |76| 
        STR       V9, [V1, #0]          ; [DPU_PIPE] |76| 
	.dwpsn	file "../sources/dm368_i2c.c",line 82,column 5,is_stmt,isa 2
        MOV       A1, #10               ; [DPU_PIPE] |82| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("dm368_wait")
	.dwattr $C$DW$23, DW_AT_TI_call
        BL        dm368_wait            ; [DPU_PIPE] |82| 
        ; CALL OCCURS {dm368_wait }      ; [] |82| 
	.dwpsn	file "../sources/dm368_i2c.c",line 84,column 19,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |84| 
        LDR       V9, $C$CON10          ; [DPU_PIPE] |101| 
        CMP       V2, A1                ; [DPU_PIPE] |84| 
        BLE       ||$C$L4||             ; [DPU_PIPE] |84| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |84| 
;* --------------------------------------------------------------------------*
        LDR       LR, $C$CON8           ; [DPU_PIPE] |86| 
        LDR       A4, $C$CON9           ; [DPU_PIPE] |88| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 84
;*   Loop closing brace source line  : 97
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
;**	-----------------------g2:
;** 86	-----------------------    *(volatile unsigned *)0x1c21020u = data[i];
;** 88	-----------------------    timeout = i2c_timeout;
	.dwpsn	file "../sources/dm368_i2c.c",line 86,column 9,is_stmt,isa 2
        LDRB      A2, [A1, +V3]         ; [DPU_PIPE] |86| 
        STR       A2, [LR, #0]          ; [DPU_PIPE] |86| 
	.dwpsn	file "../sources/dm368_i2c.c",line 88,column 9,is_stmt,isa 2
        LDR       A3, [A4, #0]          ; [DPU_PIPE] |88| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L2||
;*
;*   Loop source line                : 89
;*   Loop closing brace source line  : 96
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L2||:    
;**	-----------------------g3:
;** 91	-----------------------    if ( timeout-- >= 0 ) goto g5;
	.dwpsn	file "../sources/dm368_i2c.c",line 91,column 13,is_stmt,isa 2
        MOVS      A2, A3                ; [DPU_PIPE] |91| 
        SUB       A3, A2, #1            ; [DPU_PIPE] |91| 
        BPL       ||$C$L3||             ; [DPU_PIPE] |91| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |91| 
;* --------------------------------------------------------------------------*
;** 93	-----------------------    dm368_i2c_reset();
;** 94	-----------------------    return (-1);
	.dwpsn	file "../sources/dm368_i2c.c",line 93,column 17,is_stmt,isa 2
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("dm368_i2c_reset")
	.dwattr $C$DW$24, DW_AT_TI_call
        BL        dm368_i2c_reset       ; [DPU_PIPE] |93| 
        ; CALL OCCURS {dm368_i2c_reset }  ; [] |93| 
	.dwpsn	file "../sources/dm368_i2c.c",line 94,column 17,is_stmt,isa 2
        MVN       A1, #0                ; [DPU_PIPE] |94| 
        B         ||$C$L6||             ; [DPU_PIPE] |94| 
        ; BRANCH OCCURS {||$C$L6||}      ; [] |94| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
;**	-----------------------g5:
;** 96	-----------------------    if ( !(*(volatile unsigned *)0x1c21008u&0x10u) ) goto g3;
	.dwpsn	file "../sources/dm368_i2c.c",line 96,column 19,is_stmt,isa 2
        LDR       A2, [V9, #0]          ; [DPU_PIPE] |96| 
        TST       A2, #16               ; [DPU_PIPE] |96| 
        BEQ       ||$C$L2||             ; [DPU_PIPE] |96| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |96| 
;* --------------------------------------------------------------------------*
;** 84	-----------------------    if ( (++i) < len ) goto g2;
	.dwpsn	file "../sources/dm368_i2c.c",line 84,column 19,is_stmt,isa 2
        ADD       A1, A1, #1            ; [DPU_PIPE] |84| 
        CMP       V2, A1                ; [DPU_PIPE] |84| 
        BGT       ||$C$L1||             ; [DPU_PIPE] |84| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |84| 
;* --------------------------------------------------------------------------*
||$C$L4||:    
;**	-----------------------g7:
;** 99	-----------------------    *(volatile unsigned *)0x1c21024u |= 0x800u;
	.dwpsn	file "../sources/dm368_i2c.c",line 99,column 5,is_stmt,isa 2
        LDR       A1, [V1, #0]          ; [DPU_PIPE] |99| 
        ORR       A1, A1, #2048         ; [DPU_PIPE] |99| 
        STR       A1, [V1, #0]          ; [DPU_PIPE] |99| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L5||
;*
;*   Loop source line                : 101
;*   Loop closing brace source line  : 101
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L5||:    
;**	-----------------------g8:
;** 101	-----------------------    if ( *(volatile unsigned *)0x1c21008u&0x1000 ) goto g8;
	.dwpsn	file "../sources/dm368_i2c.c",line 101,column 2,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |101| 
        TST       A1, #4096             ; [DPU_PIPE] |101| 
        BNE       ||$C$L5||             ; [DPU_PIPE] |101| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |101| 
;* --------------------------------------------------------------------------*
;** 102	-----------------------    dm368_waitusec(30u);
;** 104	-----------------------    return 0;
	.dwpsn	file "../sources/dm368_i2c.c",line 102,column 2,is_stmt,isa 2
        MOV       A1, #30               ; [DPU_PIPE] |102| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$25, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |102| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |102| 
	.dwpsn	file "../sources/dm368_i2c.c",line 104,column 5,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |104| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
	.dwpsn	file "../sources/dm368_i2c.c",line 105,column 1,is_stmt,isa 2
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return
        LDMFD     SP!, {V1, V2, V3, PC} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x69)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"
	.clink
	.armfunc dm368_i2c_read
	.state32
	.global	dm368_i2c_read

$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_i2c_read")
	.dwattr $C$DW$27, DW_AT_low_pc(dm368_i2c_read)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("dm368_i2c_read")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$27, DW_AT_TI_begin_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x79)
	.dwattr $C$DW$27, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$27, DW_AT_decl_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x79)
	.dwattr $C$DW$27, DW_AT_decl_column(0x07)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../sources/dm368_i2c.c",line 122,column 1,is_stmt,address dm368_i2c_read,isa 2

	.dwfde $C$DW$CIE, dm368_i2c_read
$C$DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2c_addr")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("i2c_addr")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg0]
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg1]
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: dm368_i2c_read                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V9,SP,LR,SR                    *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V9,SP,LR,SR                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                 *
;*****************************************************************************
dm368_i2c_read:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 125	-----------------------    *(volatile unsigned *)0x1c21014u = len;
;** 126	-----------------------    *(volatile unsigned *)0x1c2101cu = i2c_addr;
;** 127	-----------------------    *(volatile unsigned *)0x1c21024u = 25632u;
;** 132	-----------------------    dm368_wait(10u);
;** 134	-----------------------    if ( (i = 0) >= len ) goto g7;
        STMFD     SP!, {V1, V2, V3, LR} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 6, -8
	.dwcfi	save_reg_to_mem, 5, -12
	.dwcfi	save_reg_to_mem, 4, -16
;* A1    assigned to i2c_addr
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("i2c_addr")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("i2c_addr")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg0]
;* V3    assigned to data
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg6]
;* V2    assigned to len
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg5]
;* A3    assigned to timeout
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg2]
;* A1    assigned to i
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg0]
        MOV       V2, A3                ; [DPU_PIPE] |122| 
        MOV       V3, A2                ; [DPU_PIPE] |122| 
	.dwpsn	file "../sources/dm368_i2c.c",line 125,column 5,is_stmt,isa 2
        LDR       V9, $C$CON5           ; [DPU_PIPE] |125| 
        STR       V2, [V9, #0]          ; [DPU_PIPE] |125| 
	.dwpsn	file "../sources/dm368_i2c.c",line 126,column 5,is_stmt,isa 2
        LDR       V9, $C$CON6           ; [DPU_PIPE] |126| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |126| 
	.dwpsn	file "../sources/dm368_i2c.c",line 127,column 5,is_stmt,isa 2
        LDR       V1, $C$CON1           ; [DPU_PIPE] |127| 
        LDR       V9, $C$CON11          ; [DPU_PIPE] |127| 
        STR       V9, [V1, #0]          ; [DPU_PIPE] |127| 
	.dwpsn	file "../sources/dm368_i2c.c",line 132,column 5,is_stmt,isa 2
        MOV       A1, #10               ; [DPU_PIPE] |132| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("dm368_wait")
	.dwattr $C$DW$36, DW_AT_TI_call
        BL        dm368_wait            ; [DPU_PIPE] |132| 
        ; CALL OCCURS {dm368_wait }      ; [] |132| 
	.dwpsn	file "../sources/dm368_i2c.c",line 134,column 19,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |134| 
        LDR       V9, $C$CON10          ; [DPU_PIPE] |153| 
        CMP       V2, A1                ; [DPU_PIPE] |134| 
        BLE       ||$C$L10||            ; [DPU_PIPE] |134| 
        ; BRANCHCC OCCURS {||$C$L10||}   ; [] |134| 
;* --------------------------------------------------------------------------*
        LDR       LR, $C$CON9           ; [DPU_PIPE] |136| 
        LDR       A4, $C$CON12          ; [DPU_PIPE] |148| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L7||
;*
;*   Loop source line                : 134
;*   Loop closing brace source line  : 149
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L7||:    
;**	-----------------------g2:
;** 136	-----------------------    timeout = i2c_timeout;
	.dwpsn	file "../sources/dm368_i2c.c",line 136,column 9,is_stmt,isa 2
        LDR       A3, [LR, #0]          ; [DPU_PIPE] |136| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L8||
;*
;*   Loop source line                : 139
;*   Loop closing brace source line  : 146
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L8||:    
;**	-----------------------g3:
;** 141	-----------------------    if ( timeout-- >= 0 ) goto g5;
	.dwpsn	file "../sources/dm368_i2c.c",line 141,column 13,is_stmt,isa 2
        MOVS      A2, A3                ; [DPU_PIPE] |141| 
        SUB       A3, A2, #1            ; [DPU_PIPE] |141| 
        BPL       ||$C$L9||             ; [DPU_PIPE] |141| 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |141| 
;* --------------------------------------------------------------------------*
;** 143	-----------------------    dm368_i2c_reset();
;** 144	-----------------------    return (-1);
	.dwpsn	file "../sources/dm368_i2c.c",line 143,column 17,is_stmt,isa 2
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("dm368_i2c_reset")
	.dwattr $C$DW$37, DW_AT_TI_call
        BL        dm368_i2c_reset       ; [DPU_PIPE] |143| 
        ; CALL OCCURS {dm368_i2c_reset }  ; [] |143| 
	.dwpsn	file "../sources/dm368_i2c.c",line 144,column 17,is_stmt,isa 2
        MVN       A1, #0                ; [DPU_PIPE] |144| 
        B         ||$C$L12||            ; [DPU_PIPE] |144| 
        ; BRANCH OCCURS {||$C$L12||}     ; [] |144| 
;* --------------------------------------------------------------------------*
||$C$L9||:    
;**	-----------------------g5:
;** 146	-----------------------    if ( !(*(volatile unsigned *)0x1c21008u&0x8u) ) goto g3;
	.dwpsn	file "../sources/dm368_i2c.c",line 146,column 19,is_stmt,isa 2
        LDR       A2, [V9, #0]          ; [DPU_PIPE] |146| 
        TST       A2, #8                ; [DPU_PIPE] |146| 
        BEQ       ||$C$L8||             ; [DPU_PIPE] |146| 
        ; BRANCHCC OCCURS {||$C$L8||}    ; [] |146| 
;* --------------------------------------------------------------------------*
;** 148	-----------------------    data[i] = *(volatile unsigned *)0x1c21018u;
;** 134	-----------------------    if ( (++i) < len ) goto g2;
	.dwpsn	file "../sources/dm368_i2c.c",line 148,column 9,is_stmt,isa 2
        LDR       A2, [A4, #0]          ; [DPU_PIPE] |148| 
        STRB      A2, [A1, +V3]         ; [DPU_PIPE] |148| 
	.dwpsn	file "../sources/dm368_i2c.c",line 134,column 19,is_stmt,isa 2
        ADD       A1, A1, #1            ; [DPU_PIPE] |134| 
        CMP       V2, A1                ; [DPU_PIPE] |134| 
        BGT       ||$C$L7||             ; [DPU_PIPE] |134| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |134| 
;* --------------------------------------------------------------------------*
||$C$L10||:    
;**	-----------------------g7:
;** 151	-----------------------    *(volatile unsigned *)0x1c21024u |= 0x800u;
	.dwpsn	file "../sources/dm368_i2c.c",line 151,column 5,is_stmt,isa 2
        LDR       A1, [V1, #0]          ; [DPU_PIPE] |151| 
        ORR       A1, A1, #2048         ; [DPU_PIPE] |151| 
        STR       A1, [V1, #0]          ; [DPU_PIPE] |151| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L11||
;*
;*   Loop source line                : 153
;*   Loop closing brace source line  : 153
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L11||:    
;**	-----------------------g8:
;** 153	-----------------------    if ( *(volatile unsigned *)0x1c21008u&0x1000 ) goto g8;
	.dwpsn	file "../sources/dm368_i2c.c",line 153,column 2,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |153| 
        TST       A1, #4096             ; [DPU_PIPE] |153| 
        BNE       ||$C$L11||            ; [DPU_PIPE] |153| 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |153| 
;* --------------------------------------------------------------------------*
;** 154	-----------------------    dm368_waitusec(30u);
;** 156	-----------------------    return 0;
	.dwpsn	file "../sources/dm368_i2c.c",line 154,column 2,is_stmt,isa 2
        MOV       A1, #30               ; [DPU_PIPE] |154| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$38, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |154| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |154| 
	.dwpsn	file "../sources/dm368_i2c.c",line 156,column 5,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |156| 
;* --------------------------------------------------------------------------*
||$C$L12||:    
	.dwpsn	file "../sources/dm368_i2c.c",line 157,column 1,is_stmt,isa 2
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return
        LDMFD     SP!, {V1, V2, V3, PC} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x9d)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text"
	.clink
	.armfunc dm368_i2c_read_variable
	.state32
	.global	dm368_i2c_read_variable

$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_i2c_read_variable")
	.dwattr $C$DW$40, DW_AT_low_pc(dm368_i2c_read_variable)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("dm368_i2c_read_variable")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$40, DW_AT_TI_begin_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0xaa)
	.dwattr $C$DW$40, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$40, DW_AT_decl_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$40, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$40, DW_AT_decl_column(0x07)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../sources/dm368_i2c.c",line 171,column 1,is_stmt,address dm368_i2c_read_variable,isa 2

	.dwfde $C$DW$CIE, dm368_i2c_read_variable
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2c_addr")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("i2c_addr")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg0]
$C$DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg1]
$C$DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: dm368_i2c_read_variable                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V9,SP,LR,SR                 *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V9,SP,LR,SR                 *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                 *
;*****************************************************************************
dm368_i2c_read_variable:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 175	-----------------------    *(volatile unsigned *)0x1c21014u = len;
;** 176	-----------------------    *(volatile unsigned *)0x1c2101cu = i2c_addr;
;** 177	-----------------------    *(volatile unsigned *)0x1c21024u = 25632u;
;** 182	-----------------------    dm368_wait(10u);
;** 184	-----------------------    if ( (i = 0) >= len ) goto g9;
        STMFD     SP!, {A4, V1, V2, V3, V4, LR} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 6, -12
	.dwcfi	save_reg_to_mem, 5, -16
	.dwcfi	save_reg_to_mem, 4, -20
	.dwcfi	save_reg_to_mem, 3, -24
;* A1    assigned to i2c_addr
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("i2c_addr")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("i2c_addr")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg0]
;* V4    assigned to data
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg7]
;* V3    assigned to len
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg6]
;* A2    assigned to timeout
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg1]
;* V9    assigned to i
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg12]
        MOV       V3, A3                ; [DPU_PIPE] |171| 
        MOV       V4, A2                ; [DPU_PIPE] |171| 
	.dwpsn	file "../sources/dm368_i2c.c",line 175,column 5,is_stmt,isa 2
        LDR       V2, $C$CON5           ; [DPU_PIPE] |175| 
        STR       V3, [V2, #0]          ; [DPU_PIPE] |175| 
	.dwpsn	file "../sources/dm368_i2c.c",line 176,column 5,is_stmt,isa 2
        LDR       V9, $C$CON6           ; [DPU_PIPE] |176| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |176| 
	.dwpsn	file "../sources/dm368_i2c.c",line 177,column 5,is_stmt,isa 2
        LDR       V1, $C$CON1           ; [DPU_PIPE] |177| 
        LDR       V9, $C$CON11          ; [DPU_PIPE] |177| 
        STR       V9, [V1, #0]          ; [DPU_PIPE] |177| 
	.dwpsn	file "../sources/dm368_i2c.c",line 182,column 5,is_stmt,isa 2
        MOV       A1, #10               ; [DPU_PIPE] |182| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("dm368_wait")
	.dwattr $C$DW$49, DW_AT_TI_call
        BL        dm368_wait            ; [DPU_PIPE] |182| 
        ; CALL OCCURS {dm368_wait }      ; [] |182| 
	.dwpsn	file "../sources/dm368_i2c.c",line 184,column 19,is_stmt,isa 2
        MOV       V9, #0                ; [DPU_PIPE] |184| 
        CMP       V3, V9                ; [DPU_PIPE] |184| 
        BLE       ||$C$L17||            ; [DPU_PIPE] |184| 
        ; BRANCHCC OCCURS {||$C$L17||}   ; [] |184| 
;* --------------------------------------------------------------------------*
        LDR       LR, $C$CON9           ; [DPU_PIPE] |192| 
        LDR       A3, $C$CON10          ; [DPU_PIPE] |200| 
        LDR       A4, $C$CON12          ; [DPU_PIPE] |202| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L13||
;*
;*   Loop source line                : 184
;*   Loop closing brace source line  : 203
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L13||:    
;**	-----------------------g2:
;** 186	-----------------------    if ( i != 1 ) goto g4;
	.dwpsn	file "../sources/dm368_i2c.c",line 186,column 9,is_stmt,isa 2
        CMP       V9, #1                ; [DPU_PIPE] |186| 
        BNE       ||$C$L14||            ; [DPU_PIPE] |186| 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |186| 
;* --------------------------------------------------------------------------*
;** 188	-----------------------    len = *data;
;** 189	-----------------------    *(volatile unsigned *)0x1c21014u = len;
	.dwpsn	file "../sources/dm368_i2c.c",line 188,column 13,is_stmt,isa 2
        LDRB      V3, [V4, #0]          ; [DPU_PIPE] |188| 
	.dwpsn	file "../sources/dm368_i2c.c",line 189,column 13,is_stmt,isa 2
        STR       V3, [V2, #0]          ; [DPU_PIPE] |189| 
;* --------------------------------------------------------------------------*
||$C$L14||:    
;**	-----------------------g4:
;** 192	-----------------------    timeout = i2c_timeout;
	.dwpsn	file "../sources/dm368_i2c.c",line 192,column 9,is_stmt,isa 2
        LDR       A2, [LR, #0]          ; [DPU_PIPE] |192| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L15||
;*
;*   Loop source line                : 193
;*   Loop closing brace source line  : 200
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L15||:    
;**	-----------------------g5:
;** 195	-----------------------    if ( timeout-- >= 0 ) goto g7;
	.dwpsn	file "../sources/dm368_i2c.c",line 195,column 13,is_stmt,isa 2
        MOVS      A1, A2                ; [DPU_PIPE] |195| 
        SUB       A2, A1, #1            ; [DPU_PIPE] |195| 
        BPL       ||$C$L16||            ; [DPU_PIPE] |195| 
        ; BRANCHCC OCCURS {||$C$L16||}   ; [] |195| 
;* --------------------------------------------------------------------------*
;** 197	-----------------------    dm368_i2c_reset();
;** 198	-----------------------    return (-1);
	.dwpsn	file "../sources/dm368_i2c.c",line 197,column 17,is_stmt,isa 2
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("dm368_i2c_reset")
	.dwattr $C$DW$50, DW_AT_TI_call
        BL        dm368_i2c_reset       ; [DPU_PIPE] |197| 
        ; CALL OCCURS {dm368_i2c_reset }  ; [] |197| 
	.dwpsn	file "../sources/dm368_i2c.c",line 198,column 17,is_stmt,isa 2
        MVN       A1, #0                ; [DPU_PIPE] |198| 
        B         ||$C$L18||            ; [DPU_PIPE] |198| 
        ; BRANCH OCCURS {||$C$L18||}     ; [] |198| 
;* --------------------------------------------------------------------------*
||$C$L16||:    
;**	-----------------------g7:
;** 200	-----------------------    if ( !(*(volatile unsigned *)0x1c21008u&0x8u) ) goto g5;
	.dwpsn	file "../sources/dm368_i2c.c",line 200,column 19,is_stmt,isa 2
        LDR       A1, [A3, #0]          ; [DPU_PIPE] |200| 
        TST       A1, #8                ; [DPU_PIPE] |200| 
        BEQ       ||$C$L15||            ; [DPU_PIPE] |200| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |200| 
;* --------------------------------------------------------------------------*
;** 202	-----------------------    data[i] = *(volatile unsigned *)0x1c21018u;
;** 184	-----------------------    if ( (++i) < len ) goto g2;
	.dwpsn	file "../sources/dm368_i2c.c",line 202,column 9,is_stmt,isa 2
        LDR       A1, [A4, #0]          ; [DPU_PIPE] |202| 
        STRB      A1, [V9, +V4]         ; [DPU_PIPE] |202| 
	.dwpsn	file "../sources/dm368_i2c.c",line 184,column 19,is_stmt,isa 2
        ADD       V9, V9, #1            ; [DPU_PIPE] |184| 
        CMP       V3, V9                ; [DPU_PIPE] |184| 
        BGT       ||$C$L13||            ; [DPU_PIPE] |184| 
        ; BRANCHCC OCCURS {||$C$L13||}   ; [] |184| 
;* --------------------------------------------------------------------------*
||$C$L17||:    
;**	-----------------------g9:
;** 205	-----------------------    *(volatile unsigned *)0x1c21024u |= 0x800u;
;** 207	-----------------------    return 0;
	.dwpsn	file "../sources/dm368_i2c.c",line 205,column 5,is_stmt,isa 2
        LDR       V9, [V1, #0]          ; [DPU_PIPE] |205| 
        ORR       V9, V9, #2048         ; [DPU_PIPE] |205| 
        STR       V9, [V1, #0]          ; [DPU_PIPE] |205| 
	.dwpsn	file "../sources/dm368_i2c.c",line 207,column 5,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |207| 
;* --------------------------------------------------------------------------*
||$C$L18||:    
	.dwpsn	file "../sources/dm368_i2c.c",line 208,column 1,is_stmt,isa 2
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return
        LDMFD     SP!, {A4, V1, V2, V3, V4, PC} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$40, DW_AT_TI_end_file("../sources/dm368_i2c.c")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0xd0)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	29495332,32
	.align	4
||$C$CON2||:	.bits	29495344,32
	.align	4
||$C$CON3||:	.bits	29495308,32
	.align	4
||$C$CON4||:	.bits	29495312,32
	.align	4
||$C$CON5||:	.bits	29495316,32
	.align	4
||$C$CON6||:	.bits	29495324,32
	.align	4
||$C$CON7||:	.bits	26144,32
	.align	4
||$C$CON8||:	.bits	29495328,32
	.align	4
||$C$CON9||:	.bits	i2c_timeout,32
	.align	4
||$C$CON10||:	.bits	29495304,32
	.align	4
||$C$CON11||:	.bits	25632,32
	.align	4
||$C$CON12||:	.bits	29495320,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	dm368_wait
	.global	dm368_waitusec

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
$C$DW$T$21	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$21, DW_AT_address_class(0x20)
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

