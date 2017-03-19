;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.1.1 *
;* Date/Time created: Mon Feb 13 10:49:56 2017                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=on --code_state=32 --diag_wrap=off --embedded_constants=on --endian=little --float_support=vfplib --hll_source=on --object_format=elf --silicon_version=5e --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=off 
	.state32

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/dm368.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.1.1 Copyright (c) 1996-2013 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("E:\Projects\CCS5.5\system_test\system_test_led\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_gpio_init")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("dm368_gpio_init")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("E:/Projects/CCS5.5/system_test/system_test_led/heads/dm368_gpio.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x75)
	.dwattr $C$DW$1, DW_AT_decl_column(0x07)
;	D:\WorkSpace\CCS5.5\ccsv5\tools\compiler\arm_5.1.1\bin\armopt.exe --call_assumptions=0 --gen_opt_info=0 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\057402 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\057404 --opt_info_filename=sources\\dm368.nfo 
	.sect	".text"
	.clink
	.armfunc dm368_wait
	.state32
	.global	dm368_wait

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_wait")
	.dwattr $C$DW$2, DW_AT_low_pc(dm368_wait)
	.dwattr $C$DW$2, DW_AT_high_pc(0x00)
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("dm368_wait")
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_TI_begin_file("../sources/dm368.c")
	.dwattr $C$DW$2, DW_AT_TI_begin_line(0x1e)
	.dwattr $C$DW$2, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$2, DW_AT_decl_file("../sources/dm368.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$2, DW_AT_decl_column(0x06)
	.dwattr $C$DW$2, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/dm368.c",line 31,column 1,is_stmt,address dm368_wait,isa 2

	.dwfde $C$DW$CIE, dm368_wait
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_name("delay")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("delay")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: dm368_wait                                                 *
;*                                                                           *
;*   Regs Modified     : V9,SR                                               *
;*   Regs Used         : A1,V9,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
dm368_wait:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 33	-----------------------    if ( (i = 0u) >= delay ) goto g3;
;* A1    assigned to delay
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("delay")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("delay")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg0]
;* V9    assigned to i
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg12]
	.dwpsn	file "../sources/dm368.c",line 33,column 19,is_stmt,isa 2
        MOV       V9, #0                ; [DPU_PIPE] |33| 
        CMP       A1, V9                ; [DPU_PIPE] |33| 
        BLS       ||$C$L2||             ; [DPU_PIPE] |33| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |33| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 33
;*   Loop closing brace source line  : 33
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
;**	-----------------------g2:
;** 33	-----------------------    if ( (++i) < delay ) goto g2;
;**	-----------------------g3:
;**  	-----------------------    return;
        ADD       V9, V9, #1            ; [DPU_PIPE] |33| 
        CMP       A1, V9                ; [DPU_PIPE] |33| 
        BHI       ||$C$L1||             ; [DPU_PIPE] |33| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |33| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../sources/dm368.c",line 34,column 1,is_stmt,isa 2
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return
        BX        LR                    ; [DPU_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$2, DW_AT_TI_end_file("../sources/dm368.c")
	.dwattr $C$DW$2, DW_AT_TI_end_line(0x22)
	.dwattr $C$DW$2, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$2

	.sect	".text"
	.clink
	.armfunc dm368_waitusec
	.state32
	.global	dm368_waitusec

$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$7, DW_AT_low_pc(dm368_waitusec)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("dm368_waitusec")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../sources/dm368.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x2b)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$7, DW_AT_decl_file("../sources/dm368.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$7, DW_AT_decl_column(0x06)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/dm368.c",line 44,column 1,is_stmt,address dm368_waitusec,isa 2

	.dwfde $C$DW$CIE, dm368_waitusec
$C$DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usec")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("usec")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: dm368_waitusec                                             *
;*                                                                           *
;*   Regs Modified     :                                                     *
;*   Regs Used         : LR                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
dm368_waitusec:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;**  	-----------------------    return;
	.dwpsn	file "../sources/dm368.c",line 46,column 1,is_stmt,isa 2
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return
        BX        LR                    ; [DPU_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../sources/dm368.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x2e)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text"
	.clink
	.armfunc pin_mux_cfg
	.state32
	.global	pin_mux_cfg

$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("pin_mux_cfg")
	.dwattr $C$DW$10, DW_AT_low_pc(pin_mux_cfg)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("pin_mux_cfg")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_TI_begin_file("../sources/dm368.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x37)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$10, DW_AT_decl_file("../sources/dm368.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x37)
	.dwattr $C$DW$10, DW_AT_decl_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/dm368.c",line 56,column 1,is_stmt,address pin_mux_cfg,isa 2

	.dwfde $C$DW$CIE, pin_mux_cfg

;*****************************************************************************
;* FUNCTION NAME: pin_mux_cfg                                                *
;*                                                                           *
;*   Regs Modified     : A1,V9                                               *
;*   Regs Used         : A1,V9,LR                                            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
pin_mux_cfg:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 57	-----------------------    *(volatile unsigned *)0x1c40000u = 16580608u;
;** 58	-----------------------    *(volatile unsigned *)0x1c40004u = 1332565u;
;** 59	-----------------------    *(volatile unsigned *)0x1c40008u = 6207u;
;** 60	-----------------------    *(volatile unsigned *)0x1c4000cu = 0x375affffu;
;** 61	-----------------------    *(volatile unsigned *)0x1c40010u = 3161343u;
;**  	-----------------------    return;
	.dwpsn	file "../sources/dm368.c",line 57,column 3,is_stmt,isa 2
        MOV       V9, #16580608         ; [DPU_PIPE] |57| 
        MOV       A1, #29622272         ; [DPU_PIPE] |57| 
        STR       V9, [A1, #0]          ; [DPU_PIPE] |57| 
	.dwpsn	file "../sources/dm368.c",line 58,column 3,is_stmt,isa 2
        LDR       V9, $C$CON2           ; [DPU_PIPE] |58| 
        LDR       A1, $C$CON1           ; [DPU_PIPE] |58| 
        STR       V9, [A1, #0]          ; [DPU_PIPE] |58| 
	.dwpsn	file "../sources/dm368.c",line 59,column 3,is_stmt,isa 2
        LDR       V9, $C$CON4           ; [DPU_PIPE] |59| 
        LDR       A1, $C$CON3           ; [DPU_PIPE] |59| 
        STR       V9, [A1, #0]          ; [DPU_PIPE] |59| 
	.dwpsn	file "../sources/dm368.c",line 60,column 3,is_stmt,isa 2
        LDR       V9, $C$CON6           ; [DPU_PIPE] |60| 
        LDR       A1, $C$CON5           ; [DPU_PIPE] |60| 
        STR       V9, [A1, #0]          ; [DPU_PIPE] |60| 
	.dwpsn	file "../sources/dm368.c",line 61,column 3,is_stmt,isa 2
        LDR       V9, $C$CON8           ; [DPU_PIPE] |61| 
        LDR       A1, $C$CON7           ; [DPU_PIPE] |61| 
        STR       V9, [A1, #0]          ; [DPU_PIPE] |61| 
	.dwpsn	file "../sources/dm368.c",line 62,column 1,is_stmt,isa 2
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return
        BX        LR                    ; [DPU_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../sources/dm368.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x3e)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"
	.clink
	.armfunc pll1_cfg
	.state32
	.global	pll1_cfg

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("pll1_cfg")
	.dwattr $C$DW$12, DW_AT_low_pc(pll1_cfg)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("pll1_cfg")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_TI_begin_file("../sources/dm368.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0x4a)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$12, DW_AT_decl_file("../sources/dm368.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$12, DW_AT_decl_column(0x06)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368.c",line 75,column 1,is_stmt,address pll1_cfg,isa 2

	.dwfde $C$DW$CIE, pll1_cfg

;*****************************************************************************
;* FUNCTION NAME: pll1_cfg                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Regs Used         : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                   *
;*****************************************************************************
pll1_cfg:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 76	-----------------------    *(volatile unsigned *)0x1c40900u &= 0xfffffffdu;
;** 77	-----------------------    *(volatile unsigned *)0x1c40900u &= 0xffffffefu;
;** 78	-----------------------    *(volatile unsigned *)0x1c40900u &= 0xfffffffeu;
;** 79	-----------------------    *(volatile unsigned *)0x1c40904u = 0u;
;** 82	-----------------------    *(volatile unsigned *)0x1c40900u |= 0x8u;
;** 84	-----------------------    *(volatile unsigned *)0x1c40900u &= 0xfffffff7u;
;** 88	-----------------------    *(volatile unsigned *)0x1c40910u = 72u;
;** 89	-----------------------    *(volatile unsigned *)0x1c40914u = 32771u;
;** 90	-----------------------    *(volatile unsigned *)0x1c40928u = 32768u;
;** 94	-----------------------    *(volatile unsigned *)0x1c40908u = 4653056u;
;** 95	-----------------------    *(volatile unsigned *)0x1c40908u = 4587520u;
;** 96	-----------------------    *(volatile unsigned *)0x1c40908u = 4194304u;
;** 97	-----------------------    *(volatile unsigned *)0x1c40908u = 4259840u;
;** 99	-----------------------    *(volatile unsigned *)0x1c40918u = 32792u;
;** 100	-----------------------    *(volatile unsigned *)0x1c4091cu = 32769u;
;** 101	-----------------------    *(volatile unsigned *)0x1c40920u = 32770u;
;** 102	-----------------------    *(volatile unsigned *)0x1c40960u = 32773u;
;** 103	-----------------------    *(volatile unsigned *)0x1c40964u = 32770u;
;** 104	-----------------------    *(volatile unsigned *)0x1c40968u = 32799u;
;** 105	-----------------------    *(volatile unsigned *)0x1c4096cu = 32769u;
;** 106	-----------------------    *(volatile unsigned *)0x1c40970u = 32776u;
;** 107	-----------------------    *(volatile unsigned *)0x1c40974u = 32771u;
;** 108	-----------------------    *(volatile unsigned *)0x1c40924u = 32768u;
;** 110	-----------------------    *(volatile unsigned *)0x1c40948u = 2u;
;** 113	-----------------------    *(volatile unsigned *)0x1c40938u |= 1u;
        STMFD     SP!, {V1, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
	.dwpsn	file "../sources/dm368.c",line 76,column 2,is_stmt,isa 2
        LDR       V9, $C$CON9           ; [DPU_PIPE] |76| 
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |76| 
        BIC       A1, A1, #2            ; [DPU_PIPE] |76| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |76| 
	.dwpsn	file "../sources/dm368.c",line 77,column 2,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |77| 
        BIC       A1, A1, #16           ; [DPU_PIPE] |77| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |77| 
	.dwpsn	file "../sources/dm368.c",line 78,column 2,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |78| 
        BIC       A1, A1, #1            ; [DPU_PIPE] |78| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |78| 
	.dwpsn	file "../sources/dm368.c",line 79,column 2,is_stmt,isa 2
        LDR       A2, $C$CON10          ; [DPU_PIPE] |79| 
        MOV       A1, #0                ; [DPU_PIPE] |79| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |79| 
	.dwpsn	file "../sources/dm368.c",line 82,column 2,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |82| 
        ORR       A1, A1, #8            ; [DPU_PIPE] |82| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |82| 
	.dwpsn	file "../sources/dm368.c",line 84,column 2,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |84| 
        BIC       A1, A1, #8            ; [DPU_PIPE] |84| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |84| 
	.dwpsn	file "../sources/dm368.c",line 88,column 2,is_stmt,isa 2
        LDR       A2, $C$CON11          ; [DPU_PIPE] |88| 
        MOV       A1, #72               ; [DPU_PIPE] |88| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |88| 
	.dwpsn	file "../sources/dm368.c",line 89,column 2,is_stmt,isa 2
        LDR       A4, $C$CON13          ; [DPU_PIPE] |89| 
        LDR       A1, $C$CON12          ; [DPU_PIPE] |89| 
        STR       A4, [A1, #0]          ; [DPU_PIPE] |89| 
	.dwpsn	file "../sources/dm368.c",line 90,column 2,is_stmt,isa 2
        LDR       A1, $C$CON14          ; [DPU_PIPE] |90| 
        MOV       A3, #32768            ; [DPU_PIPE] |90| 
        STR       A3, [A1, #0]          ; [DPU_PIPE] |90| 
	.dwpsn	file "../sources/dm368.c",line 94,column 2,is_stmt,isa 2
        LDR       A1, $C$CON15          ; [DPU_PIPE] |94| 
        MOV       A2, #4653056          ; [DPU_PIPE] |94| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |94| 
	.dwpsn	file "../sources/dm368.c",line 95,column 2,is_stmt,isa 2
        MOV       A2, #4587520          ; [DPU_PIPE] |95| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |95| 
	.dwpsn	file "../sources/dm368.c",line 96,column 2,is_stmt,isa 2
        MOV       A2, #4194304          ; [DPU_PIPE] |96| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |96| 
	.dwpsn	file "../sources/dm368.c",line 97,column 2,is_stmt,isa 2
        MOV       A2, #4259840          ; [DPU_PIPE] |97| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |97| 
	.dwpsn	file "../sources/dm368.c",line 99,column 2,is_stmt,isa 2
        LDR       A2, $C$CON16          ; [DPU_PIPE] |99| 
        LDR       A1, $C$CON17          ; [DPU_PIPE] |99| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |99| 
	.dwpsn	file "../sources/dm368.c",line 100,column 2,is_stmt,isa 2
        LDR       A2, $C$CON19          ; [DPU_PIPE] |100| 
        LDR       A1, $C$CON18          ; [DPU_PIPE] |100| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |100| 
	.dwpsn	file "../sources/dm368.c",line 101,column 2,is_stmt,isa 2
        LDR       LR, $C$CON20          ; [DPU_PIPE] |101| 
        LDR       A1, $C$CON21          ; [DPU_PIPE] |101| 
        STR       A1, [LR, #0]          ; [DPU_PIPE] |101| 
	.dwpsn	file "../sources/dm368.c",line 102,column 2,is_stmt,isa 2
        LDR       V1, $C$CON22          ; [DPU_PIPE] |102| 
        LDR       LR, $C$CON23          ; [DPU_PIPE] |102| 
        STR       LR, [V1, #0]          ; [DPU_PIPE] |102| 
	.dwpsn	file "../sources/dm368.c",line 103,column 2,is_stmt,isa 2
        LDR       LR, $C$CON24          ; [DPU_PIPE] |103| 
        STR       A1, [LR, #0]          ; [DPU_PIPE] |103| 
	.dwpsn	file "../sources/dm368.c",line 104,column 2,is_stmt,isa 2
        LDR       LR, $C$CON25          ; [DPU_PIPE] |104| 
        LDR       A1, $C$CON26          ; [DPU_PIPE] |104| 
        STR       A1, [LR, #0]          ; [DPU_PIPE] |104| 
	.dwpsn	file "../sources/dm368.c",line 105,column 2,is_stmt,isa 2
        LDR       A1, $C$CON27          ; [DPU_PIPE] |105| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |105| 
	.dwpsn	file "../sources/dm368.c",line 106,column 2,is_stmt,isa 2
        LDR       A1, $C$CON29          ; [DPU_PIPE] |106| 
        LDR       A2, $C$CON28          ; [DPU_PIPE] |106| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |106| 
	.dwpsn	file "../sources/dm368.c",line 107,column 2,is_stmt,isa 2
        LDR       A1, $C$CON30          ; [DPU_PIPE] |107| 
        STR       A4, [A1, #0]          ; [DPU_PIPE] |107| 
	.dwpsn	file "../sources/dm368.c",line 108,column 2,is_stmt,isa 2
        LDR       A1, $C$CON31          ; [DPU_PIPE] |108| 
        STR       A3, [A1, #0]          ; [DPU_PIPE] |108| 
	.dwpsn	file "../sources/dm368.c",line 110,column 2,is_stmt,isa 2
        LDR       A2, $C$CON32          ; [DPU_PIPE] |110| 
        MOV       A1, #2                ; [DPU_PIPE] |110| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |110| 
	.dwpsn	file "../sources/dm368.c",line 113,column 2,is_stmt,isa 2
        LDR       A3, $C$CON33          ; [DPU_PIPE] |113| 
        LDR       A1, [A3, #0]          ; [DPU_PIPE] |113| 
        ORR       A2, A1, #1            ; [DPU_PIPE] |113| 
        LDR       A1, $C$CON34          ; [DPU_PIPE] |116| 
        STR       A2, [A3, #0]          ; [DPU_PIPE] |113| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L3||
;*
;*   Loop source line                : 116
;*   Loop closing brace source line  : 116
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L3||:    
;**	-----------------------g2:
;** 116	-----------------------    if ( (*(volatile unsigned *)0x1c40084u&0xe000000u) != 0xe000000u ) goto g2;
	.dwpsn	file "../sources/dm368.c",line 116,column 8,is_stmt,isa 2
        LDR       A2, [A1, #0]          ; [DPU_PIPE] |116| 
        AND       A2, A2, #234881024    ; [DPU_PIPE] |116| 
        CMN       A2, #-234881024       ; [DPU_PIPE] |116| 
        BNE       ||$C$L3||             ; [DPU_PIPE] |116| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |116| 
;* --------------------------------------------------------------------------*
;** 119	-----------------------    *(volatile unsigned *)0x1c40900u |= 1u;
;**  	-----------------------    return;
	.dwpsn	file "../sources/dm368.c",line 119,column 2,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |119| 
        ORR       A1, A1, #1            ; [DPU_PIPE] |119| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |119| 
	.dwpsn	file "../sources/dm368.c",line 121,column 1,is_stmt,isa 2
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return
        LDMFD     SP!, {V1, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("../sources/dm368.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x79)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.clink
	.armfunc pll2_cfg
	.state32
	.global	pll2_cfg

$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("pll2_cfg")
	.dwattr $C$DW$14, DW_AT_low_pc(pll2_cfg)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("pll2_cfg")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_TI_begin_file("../sources/dm368.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x84)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$14, DW_AT_decl_file("../sources/dm368.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x84)
	.dwattr $C$DW$14, DW_AT_decl_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../sources/dm368.c",line 133,column 1,is_stmt,address pll2_cfg,isa 2

	.dwfde $C$DW$CIE, pll2_cfg

;*****************************************************************************
;* FUNCTION NAME: pll2_cfg                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,V9,SR                                      *
;*   Regs Used         : A1,A2,A3,V9,LR,SR                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
pll2_cfg:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 134	-----------------------    *(volatile unsigned *)0x1c40d00u &= 0xfffffffdu;
;** 135	-----------------------    *(volatile unsigned *)0x1c40d00u &= 0xffffffefu;
;** 136	-----------------------    *(volatile unsigned *)0x1c40d00u &= 0xfffffffeu;
;** 139	-----------------------    *(volatile unsigned *)0x1c40900u |= 0x8u;
;** 141	-----------------------    *(volatile unsigned *)0x1c40900u &= 0xfffffff7u;
;** 145	-----------------------    *(volatile unsigned *)0x1c40d10u = 9u;
;** 146	-----------------------    *(volatile unsigned *)0x1c40d14u = 32768u;
;** 147	-----------------------    *(volatile unsigned *)0x1c40d28u = 32768u;
;** 151	-----------------------    *(volatile unsigned *)0x1c40d08u = 4653056u;
;** 152	-----------------------    *(volatile unsigned *)0x1c40d08u = 4587520u;
;** 153	-----------------------    *(volatile unsigned *)0x1c40d08u = 4194304u;
;** 154	-----------------------    *(volatile unsigned *)0x1c40d08u = 4259840u;
;** 156	-----------------------    *(volatile unsigned *)0x1c40d18u = 32780u;
;** 157	-----------------------    *(volatile unsigned *)0x1c40d1cu = 32768u;
;** 158	-----------------------    *(volatile unsigned *)0x1c40d20u = 32768u;
;** 159	-----------------------    *(volatile unsigned *)0x1c40d60u = 32775u;
;** 160	-----------------------    *(volatile unsigned *)0x1c40d64u = 32773u;
;** 162	-----------------------    *(volatile unsigned *)0x1c40d38u |= 1u;
	.dwpsn	file "../sources/dm368.c",line 134,column 2,is_stmt,isa 2
        LDR       V9, $C$CON35          ; [DPU_PIPE] |134| 
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |134| 
        BIC       A1, A1, #2            ; [DPU_PIPE] |134| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |134| 
	.dwpsn	file "../sources/dm368.c",line 135,column 2,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |135| 
        BIC       A1, A1, #16           ; [DPU_PIPE] |135| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |135| 
	.dwpsn	file "../sources/dm368.c",line 136,column 2,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |136| 
        BIC       A1, A1, #1            ; [DPU_PIPE] |136| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |136| 
	.dwpsn	file "../sources/dm368.c",line 139,column 2,is_stmt,isa 2
        LDR       A1, $C$CON9           ; [DPU_PIPE] |139| 
        LDR       A2, [A1, #0]          ; [DPU_PIPE] |139| 
        ORR       A2, A2, #8            ; [DPU_PIPE] |139| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |139| 
	.dwpsn	file "../sources/dm368.c",line 141,column 2,is_stmt,isa 2
        LDR       A2, [A1, #0]          ; [DPU_PIPE] |141| 
        BIC       A2, A2, #8            ; [DPU_PIPE] |141| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |141| 
	.dwpsn	file "../sources/dm368.c",line 145,column 2,is_stmt,isa 2
        LDR       A2, $C$CON36          ; [DPU_PIPE] |145| 
        MOV       A1, #9                ; [DPU_PIPE] |145| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |145| 
	.dwpsn	file "../sources/dm368.c",line 146,column 2,is_stmt,isa 2
        LDR       A1, $C$CON37          ; [DPU_PIPE] |146| 
        MOV       A2, #32768            ; [DPU_PIPE] |146| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |146| 
	.dwpsn	file "../sources/dm368.c",line 147,column 2,is_stmt,isa 2
        LDR       A1, $C$CON38          ; [DPU_PIPE] |147| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |147| 
	.dwpsn	file "../sources/dm368.c",line 151,column 2,is_stmt,isa 2
        LDR       A1, $C$CON39          ; [DPU_PIPE] |151| 
        MOV       A3, #4653056          ; [DPU_PIPE] |151| 
        STR       A3, [A1, #0]          ; [DPU_PIPE] |151| 
	.dwpsn	file "../sources/dm368.c",line 152,column 2,is_stmt,isa 2
        MOV       A3, #4587520          ; [DPU_PIPE] |152| 
        STR       A3, [A1, #0]          ; [DPU_PIPE] |152| 
	.dwpsn	file "../sources/dm368.c",line 153,column 2,is_stmt,isa 2
        MOV       A3, #4194304          ; [DPU_PIPE] |153| 
        STR       A3, [A1, #0]          ; [DPU_PIPE] |153| 
	.dwpsn	file "../sources/dm368.c",line 154,column 2,is_stmt,isa 2
        MOV       A3, #4259840          ; [DPU_PIPE] |154| 
        STR       A3, [A1, #0]          ; [DPU_PIPE] |154| 
	.dwpsn	file "../sources/dm368.c",line 156,column 2,is_stmt,isa 2
        LDR       A3, $C$CON40          ; [DPU_PIPE] |156| 
        LDR       A1, $C$CON41          ; [DPU_PIPE] |156| 
        STR       A1, [A3, #0]          ; [DPU_PIPE] |156| 
	.dwpsn	file "../sources/dm368.c",line 157,column 2,is_stmt,isa 2
        LDR       A1, $C$CON42          ; [DPU_PIPE] |157| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |157| 
	.dwpsn	file "../sources/dm368.c",line 158,column 2,is_stmt,isa 2
        LDR       A1, $C$CON43          ; [DPU_PIPE] |158| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |158| 
	.dwpsn	file "../sources/dm368.c",line 159,column 2,is_stmt,isa 2
        LDR       A1, $C$CON45          ; [DPU_PIPE] |159| 
        LDR       A2, $C$CON44          ; [DPU_PIPE] |159| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |159| 
	.dwpsn	file "../sources/dm368.c",line 160,column 2,is_stmt,isa 2
        LDR       A1, $C$CON23          ; [DPU_PIPE] |160| 
        LDR       A2, $C$CON46          ; [DPU_PIPE] |160| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |160| 
	.dwpsn	file "../sources/dm368.c",line 162,column 2,is_stmt,isa 2
        LDR       A3, $C$CON47          ; [DPU_PIPE] |162| 
        LDR       A1, [A3, #0]          ; [DPU_PIPE] |162| 
        ORR       A2, A1, #1            ; [DPU_PIPE] |162| 
        LDR       A1, $C$CON48          ; [DPU_PIPE] |163| 
        STR       A2, [A3, #0]          ; [DPU_PIPE] |162| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L4||
;*
;*   Loop source line                : 163
;*   Loop closing brace source line  : 163
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L4||:    
;**	-----------------------g2:
;** 163	-----------------------    if ( *(volatile unsigned *)0x1c40d3cu&1u ) goto g2;
	.dwpsn	file "../sources/dm368.c",line 163,column 8,is_stmt,isa 2
        LDR       A2, [A1, #0]          ; [DPU_PIPE] |163| 
        MOVS      A2, A2, LSL #31       ; [DPU_PIPE] |163| 
        BNE       ||$C$L4||             ; [DPU_PIPE] |163| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |163| 
;* --------------------------------------------------------------------------*
;** 169	-----------------------    *(volatile unsigned *)0x1c40d00u |= 1u;
;**  	-----------------------    return;
	.dwpsn	file "../sources/dm368.c",line 169,column 2,is_stmt,isa 2
        LDR       A1, [V9, #0]          ; [DPU_PIPE] |169| 
        ORR       A1, A1, #1            ; [DPU_PIPE] |169| 
        STR       A1, [V9, #0]          ; [DPU_PIPE] |169| 
	.dwpsn	file "../sources/dm368.c",line 171,column 1,is_stmt,isa 2
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return
        BX        LR                    ; [DPU_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("../sources/dm368.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0xab)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"
	.clink
	.armfunc dm368_init
	.state32
	.global	dm368_init

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_init")
	.dwattr $C$DW$16, DW_AT_low_pc(dm368_init)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("dm368_init")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$16, DW_AT_TI_begin_file("../sources/dm368.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0xb5)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$16, DW_AT_decl_file("../sources/dm368.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$16, DW_AT_decl_column(0x07)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368.c",line 182,column 1,is_stmt,address dm368_init,isa 2

	.dwfde $C$DW$CIE, dm368_init

;*****************************************************************************
;* FUNCTION NAME: dm368_init                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
dm368_init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 187	-----------------------    pin_mux_cfg();
;** 194	-----------------------    dm368_gpio_init();
;** 208	-----------------------    return 0;
        STMFD     SP!, {A4, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../sources/dm368.c",line 187,column 2,is_stmt,isa 2
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("pin_mux_cfg")
	.dwattr $C$DW$17, DW_AT_TI_call
        BL        pin_mux_cfg           ; [DPU_PIPE] |187| 
        ; CALL OCCURS {pin_mux_cfg }     ; [] |187| 
	.dwpsn	file "../sources/dm368.c",line 194,column 2,is_stmt,isa 2
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("dm368_gpio_init")
	.dwattr $C$DW$18, DW_AT_TI_call
        BL        dm368_gpio_init       ; [DPU_PIPE] |194| 
        ; CALL OCCURS {dm368_gpio_init }  ; [] |194| 
	.dwpsn	file "../sources/dm368.c",line 208,column 5,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |208| 
	.dwpsn	file "../sources/dm368.c",line 209,column 1,is_stmt,isa 2
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return
        LDMFD     SP!, {A4, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../sources/dm368.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0xd1)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	29622276,32
	.align	4
||$C$CON2||:	.bits	1332565,32
	.align	4
||$C$CON3||:	.bits	29622280,32
	.align	4
||$C$CON4||:	.bits	6207,32
	.align	4
||$C$CON5||:	.bits	29622284,32
	.align	4
||$C$CON6||:	.bits	928710655,32
	.align	4
||$C$CON7||:	.bits	29622288,32
	.align	4
||$C$CON8||:	.bits	3161343,32
	.align	4
||$C$CON9||:	.bits	29624576,32
	.align	4
||$C$CON10||:	.bits	29624580,32
	.align	4
||$C$CON11||:	.bits	29624592,32
	.align	4
||$C$CON12||:	.bits	29624596,32
	.align	4
||$C$CON13||:	.bits	32771,32
	.align	4
||$C$CON14||:	.bits	29624616,32
	.align	4
||$C$CON15||:	.bits	29624584,32
	.align	4
||$C$CON16||:	.bits	29624600,32
	.align	4
||$C$CON17||:	.bits	32792,32
	.align	4
||$C$CON18||:	.bits	29624604,32
	.align	4
||$C$CON19||:	.bits	32769,32
	.align	4
||$C$CON20||:	.bits	29624608,32
	.align	4
||$C$CON21||:	.bits	32770,32
	.align	4
||$C$CON22||:	.bits	29624672,32
	.align	4
||$C$CON23||:	.bits	32773,32
	.align	4
||$C$CON24||:	.bits	29624676,32
	.align	4
||$C$CON25||:	.bits	29624680,32
	.align	4
||$C$CON26||:	.bits	32799,32
	.align	4
||$C$CON27||:	.bits	29624684,32
	.align	4
||$C$CON28||:	.bits	29624688,32
	.align	4
||$C$CON29||:	.bits	32776,32
	.align	4
||$C$CON30||:	.bits	29624692,32
	.align	4
||$C$CON31||:	.bits	29624612,32
	.align	4
||$C$CON32||:	.bits	29624648,32
	.align	4
||$C$CON33||:	.bits	29624632,32
	.align	4
||$C$CON34||:	.bits	29622404,32
	.align	4
||$C$CON35||:	.bits	29625600,32
	.align	4
||$C$CON36||:	.bits	29625616,32
	.align	4
||$C$CON37||:	.bits	29625620,32
	.align	4
||$C$CON38||:	.bits	29625640,32
	.align	4
||$C$CON39||:	.bits	29625608,32
	.align	4
||$C$CON40||:	.bits	29625624,32
	.align	4
||$C$CON41||:	.bits	32780,32
	.align	4
||$C$CON42||:	.bits	29625628,32
	.align	4
||$C$CON43||:	.bits	29625632,32
	.align	4
||$C$CON44||:	.bits	29625696,32
	.align	4
||$C$CON45||:	.bits	32775,32
	.align	4
||$C$CON46||:	.bits	29625700,32
	.align	4
||$C$CON47||:	.bits	29625656,32
	.align	4
||$C$CON48||:	.bits	29625660,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	dm368_gpio_init

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

