;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.1.1 *
;* Date/Time created: Mon Feb 13 10:49:58 2017                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=on --code_state=32 --diag_wrap=off --embedded_constants=on --endian=little --float_support=vfplib --hll_source=on --object_format=elf --silicon_version=5e --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=off 
	.state32

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../sources/dm368_nand.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.1.1 Copyright (c) 1996-2013 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("E:\Projects\CCS5.5\system_test\system_test_led\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_wait")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("dm368_wait")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("E:/Projects/CCS5.5/system_test/system_test_led/heads/dm368.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x42e)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("dm368_waitusec")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("E:/Projects/CCS5.5/system_test/system_test_led/heads/dm368.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x42f)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$3

src:	.usect	".bss:src",2112,1
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("src")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("src")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr src]
	.dwattr $C$DW$5, DW_AT_decl_file("E:/Projects/CCS5.5/system_test/system_test_led/heads/dm368_nand.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$5, DW_AT_decl_column(0x0e)
dst:	.usect	".bss:dst",2112,1
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("dst")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("dst")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr dst]
	.dwattr $C$DW$6, DW_AT_decl_file("E:/Projects/CCS5.5/system_test/system_test_led/heads/dm368_nand.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$6, DW_AT_decl_column(0x0e)
;	D:\WorkSpace\CCS5.5\ccsv5\tools\compiler\arm_5.1.1\bin\armopt.exe --call_assumptions=0 --gen_opt_info=0 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\020083 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\020085 --opt_info_filename=sources\\dm368_nand.nfo 
	.sect	".text"
	.clink
	.armfunc nand_init
	.state32
	.global	nand_init

$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("nand_init")
	.dwattr $C$DW$7, DW_AT_low_pc(nand_init)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("nand_init")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../sources/dm368_nand.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x1e)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$7, DW_AT_decl_file("../sources/dm368_nand.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$7, DW_AT_decl_column(0x07)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_nand.c",line 31,column 1,is_stmt,address nand_init,isa 2

	.dwfde $C$DW$CIE, nand_init

;*****************************************************************************
;* FUNCTION NAME: nand_init                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Regs Used         : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                   *
;*****************************************************************************
nand_init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 35	-----------------------    *(volatile unsigned *)0x1d10004u = 255u;
;** 37	-----------------------    *(volatile unsigned *)0x1d10010u = 0x40400204u;
;** 38	-----------------------    *(volatile unsigned *)0x1d10060u |= 1u;
;** 40	-----------------------    *(volatile unsigned *)0x1d10014u = 0x40a00504u;
;** 41	-----------------------    *(volatile unsigned *)0x1d10060u &= 0xfffffffdu;
;** 44	-----------------------    *(volatile unsigned char *)0x2000010u = 0xffu;
;** 45	-----------------------    dm368_waitusec(100000u);
;** 48	-----------------------    *(volatile unsigned char *)0x2000010u = 0x90u;
;** 49	-----------------------    *(volatile unsigned char *)0x200000bu = 0u;
;** 52	-----------------------    dm368_wait(4u);
        STMFD     SP!, {V1, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
;* A2    assigned to devid
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("devid")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("devid")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg1]
	.dwpsn	file "../sources/dm368_nand.c",line 35,column 2,is_stmt,isa 2
        LDR       A1, $C$CON1           ; [DPU_PIPE] |35| 
        MOV       V9, #255              ; [DPU_PIPE] |35| 
        STR       V9, [A1, #0]          ; [DPU_PIPE] |35| 
	.dwpsn	file "../sources/dm368_nand.c",line 37,column 2,is_stmt,isa 2
        LDR       A2, $C$CON2           ; [DPU_PIPE] |37| 
        LDR       A1, $C$CON3           ; [DPU_PIPE] |37| 
        STR       A1, [A2, #0]          ; [DPU_PIPE] |37| 
	.dwpsn	file "../sources/dm368_nand.c",line 38,column 2,is_stmt,isa 2
        LDR       A1, $C$CON4           ; [DPU_PIPE] |38| 
        LDR       A2, [A1, #0]          ; [DPU_PIPE] |38| 
        ORR       A2, A2, #1            ; [DPU_PIPE] |38| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |38| 
	.dwpsn	file "../sources/dm368_nand.c",line 40,column 2,is_stmt,isa 2
        LDR       A3, $C$CON5           ; [DPU_PIPE] |40| 
        LDR       A2, $C$CON6           ; [DPU_PIPE] |40| 
        STR       A2, [A3, #0]          ; [DPU_PIPE] |40| 
	.dwpsn	file "../sources/dm368_nand.c",line 41,column 5,is_stmt,isa 2
        LDR       A2, [A1, #0]          ; [DPU_PIPE] |41| 
        BIC       A2, A2, #2            ; [DPU_PIPE] |41| 
        STR       A2, [A1, #0]          ; [DPU_PIPE] |41| 
	.dwpsn	file "../sources/dm368_nand.c",line 44,column 2,is_stmt,isa 2
        LDR       V1, $C$CON7           ; [DPU_PIPE] |44| 
        STRB      V9, [V1, #0]          ; [DPU_PIPE] |44| 
	.dwpsn	file "../sources/dm368_nand.c",line 45,column 2,is_stmt,isa 2
        LDR       A1, $C$CON8           ; [DPU_PIPE] |45| 
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$9, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |45| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |45| 
	.dwpsn	file "../sources/dm368_nand.c",line 48,column 5,is_stmt,isa 2
        MOV       V9, #144              ; [DPU_PIPE] |48| 
        STRB      V9, [V1, #0]          ; [DPU_PIPE] |48| 
	.dwpsn	file "../sources/dm368_nand.c",line 49,column 5,is_stmt,isa 2
        LDR       V9, $C$CON9           ; [DPU_PIPE] |49| 
        MOV       V1, #0                ; [DPU_PIPE] |49| 
        STRB      V1, [V9, #0]          ; [DPU_PIPE] |49| 
	.dwpsn	file "../sources/dm368_nand.c",line 52,column 2,is_stmt,isa 2
        MOV       A1, #4                ; [DPU_PIPE] |52| 
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_name("dm368_wait")
	.dwattr $C$DW$10, DW_AT_TI_call
        BL        dm368_wait            ; [DPU_PIPE] |52| 
        ; CALL OCCURS {dm368_wait }      ; [] |52| 
        LDR       A1, $C$CON10          ; [DPU_PIPE] |53| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 53
;*   Loop closing brace source line  : 53
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
;**	-----------------------g2:
;** 53	-----------------------    if ( !(*(volatile unsigned *)0x1d10064u&1u) ) goto g2;
	.dwpsn	file "../sources/dm368_nand.c",line 53,column 8,is_stmt,isa 2
        LDR       V9, [A1, #0]          ; [DPU_PIPE] |53| 
        MOVS      V9, V9, LSL #31       ; [DPU_PIPE] |53| 
        BEQ       ||$C$L1||             ; [DPU_PIPE] |53| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |53| 
;* --------------------------------------------------------------------------*
;** 56	-----------------------    *(volatile unsigned char *)0x2000000u;
;** 57	-----------------------    devid = *(volatile unsigned char *)0x2000000u;
;** 58	-----------------------    *(volatile unsigned char *)0x2000000u;
;** 59	-----------------------    *(volatile unsigned char *)0x2000000u;
;** 60	-----------------------    *(volatile unsigned char *)0x2000000u;
;** 63	-----------------------    return devid != 220;
	.dwpsn	file "../sources/dm368_nand.c",line 56,column 5,is_stmt,isa 2
        MOV       V9, #33554432         ; [DPU_PIPE] |56| 
        LDRB      A1, [V9, #0]          ; [DPU_PIPE] |56| 
	.dwpsn	file "../sources/dm368_nand.c",line 57,column 5,is_stmt,isa 2
        LDRB      A2, [V9, #0]          ; [DPU_PIPE] |57| 
	.dwpsn	file "../sources/dm368_nand.c",line 58,column 2,is_stmt,isa 2
        LDRB      A1, [V9, #0]          ; [DPU_PIPE] |58| 
	.dwpsn	file "../sources/dm368_nand.c",line 59,column 2,is_stmt,isa 2
        LDRB      A1, [V9, #0]          ; [DPU_PIPE] |59| 
	.dwpsn	file "../sources/dm368_nand.c",line 60,column 2,is_stmt,isa 2
        LDRB      V9, [V9, #0]          ; [DPU_PIPE] |60| 
	.dwpsn	file "../sources/dm368_nand.c",line 63,column 6,is_stmt,isa 2
        CMP       A2, #220              ; [DPU_PIPE] |63| 
        MOV       A1, V1                ; [DPU_PIPE] 
        BEQ       ||$C$L2||             ; [DPU_PIPE] |63| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |63| 
;* --------------------------------------------------------------------------*
        MOV       A1, #1                ; [DPU_PIPE] |63| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../sources/dm368_nand.c",line 66,column 1,is_stmt,isa 2
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return
        LDMFD     SP!, {V1, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../sources/dm368_nand.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x42)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text"
	.clink
	.armfunc nand_eraseBlock
	.state32
	.global	nand_eraseBlock

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("nand_eraseBlock")
	.dwattr $C$DW$12, DW_AT_low_pc(nand_eraseBlock)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("nand_eraseBlock")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$12, DW_AT_TI_begin_file("../sources/dm368_nand.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0x4c)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$12, DW_AT_decl_file("../sources/dm368_nand.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$12, DW_AT_decl_column(0x07)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../sources/dm368_nand.c",line 77,column 1,is_stmt,address nand_eraseBlock,isa 2

	.dwfde $C$DW$CIE, nand_eraseBlock
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blocknum")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("blocknum")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: nand_eraseBlock                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Regs Used         : A1,A2,A3,A4,V1,V9,SP,LR,SR                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                   *
;*****************************************************************************
nand_eraseBlock:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 81	-----------------------    *(volatile unsigned char *)0x2000010u = 96u;
;** 82	-----------------------    *(volatile unsigned char *)0x200000bu = blocknum<<6;
;** 83	-----------------------    *(volatile unsigned char *)0x200000bu = blocknum>>2;
;** 84	-----------------------    *(volatile unsigned char *)0x200000bu = blocknum>>10&3u;
;** 85	-----------------------    *(volatile unsigned char *)0x2000010u = 0xd0u;
;** 88	-----------------------    dm368_wait(1u);
        STMFD     SP!, {V1, LR}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
;* A1    assigned to blocknum
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("blocknum")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("blocknum")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]
;* V9    assigned to status
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg12]
	.dwpsn	file "../sources/dm368_nand.c",line 81,column 5,is_stmt,isa 2
        LDR       V1, $C$CON7           ; [DPU_PIPE] |81| 
        MOV       V9, #96               ; [DPU_PIPE] |81| 
        STRB      V9, [V1, #0]          ; [DPU_PIPE] |81| 
	.dwpsn	file "../sources/dm368_nand.c",line 82,column 5,is_stmt,isa 2
        LDR       V9, $C$CON9           ; [DPU_PIPE] |82| 
        MOV       A2, A1, LSL #6        ; [DPU_PIPE] |82| 
        STRB      A2, [V9, #0]          ; [DPU_PIPE] |82| 
	.dwpsn	file "../sources/dm368_nand.c",line 83,column 2,is_stmt,isa 2
        MOV       A2, A1, LSR #2        ; [DPU_PIPE] |83| 
        STRB      A2, [V9, #0]          ; [DPU_PIPE] |83| 
	.dwpsn	file "../sources/dm368_nand.c",line 84,column 2,is_stmt,isa 2
        MOV       A1, A1, LSR #10       ; [DPU_PIPE] |84| 
        AND       A1, A1, #3            ; [DPU_PIPE] |84| 
        STRB      A1, [V9, #0]          ; [DPU_PIPE] |84| 
	.dwpsn	file "../sources/dm368_nand.c",line 85,column 2,is_stmt,isa 2
        MOV       V9, #208              ; [DPU_PIPE] |85| 
        STRB      V9, [V1, #0]          ; [DPU_PIPE] |85| 
	.dwpsn	file "../sources/dm368_nand.c",line 88,column 2,is_stmt,isa 2
        MOV       A1, #1                ; [DPU_PIPE] |88| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("dm368_wait")
	.dwattr $C$DW$16, DW_AT_TI_call
        BL        dm368_wait            ; [DPU_PIPE] |88| 
        ; CALL OCCURS {dm368_wait }      ; [] |88| 
        LDR       A1, $C$CON10          ; [DPU_PIPE] |89| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L3||
;*
;*   Loop source line                : 89
;*   Loop closing brace source line  : 89
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L3||:    
;**	-----------------------g2:
;** 89	-----------------------    if ( !(*(volatile unsigned *)0x1d10064u&1u) ) goto g2;
	.dwpsn	file "../sources/dm368_nand.c",line 89,column 8,is_stmt,isa 2
        LDR       V9, [A1, #0]          ; [DPU_PIPE] |89| 
        MOVS      V9, V9, LSL #31       ; [DPU_PIPE] |89| 
        BEQ       ||$C$L3||             ; [DPU_PIPE] |89| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |89| 
;* --------------------------------------------------------------------------*
;** 92	-----------------------    *(volatile unsigned char *)0x2000010u = 112u;
;** 93	-----------------------    status = *(volatile unsigned char *)0x2000000u;
;** 95	-----------------------    *(volatile unsigned char *)0x2000010u = 0xffu;
;** 97	-----------------------    return status&1u;
	.dwpsn	file "../sources/dm368_nand.c",line 92,column 2,is_stmt,isa 2
        MOV       V9, #112              ; [DPU_PIPE] |92| 
        STRB      V9, [V1, #0]          ; [DPU_PIPE] |92| 
	.dwpsn	file "../sources/dm368_nand.c",line 93,column 2,is_stmt,isa 2
        MOV       V9, #33554432         ; [DPU_PIPE] |93| 
        LDRB      V9, [V9, #0]          ; [DPU_PIPE] |93| 
	.dwpsn	file "../sources/dm368_nand.c",line 95,column 2,is_stmt,isa 2
        MOV       A1, #255              ; [DPU_PIPE] |95| 
        STRB      A1, [V1, #0]          ; [DPU_PIPE] |95| 
	.dwpsn	file "../sources/dm368_nand.c",line 97,column 9,is_stmt,isa 2
        AND       A1, V9, #1            ; [DPU_PIPE] |97| 
	.dwpsn	file "../sources/dm368_nand.c",line 100,column 1,is_stmt,isa 2
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return
        LDMFD     SP!, {V1, PC}         ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("../sources/dm368_nand.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x64)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.clink
	.armfunc nand_readPage
	.state32
	.global	nand_readPage

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("nand_readPage")
	.dwattr $C$DW$18, DW_AT_low_pc(nand_readPage)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("nand_readPage")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$18, DW_AT_TI_begin_file("../sources/dm368_nand.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x71)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$18, DW_AT_decl_file("../sources/dm368_nand.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x71)
	.dwattr $C$DW$18, DW_AT_decl_column(0x07)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../sources/dm368_nand.c",line 114,column 1,is_stmt,address nand_readPage,isa 2

	.dwfde $C$DW$CIE, nand_readPage
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pagenum")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("pagenum")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg0]
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg1]
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: nand_readPage                                              *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V9,SP,LR,SR                    *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V9,SP,LR,SR                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                 *
;*****************************************************************************
nand_readPage:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 118	-----------------------    *(volatile unsigned char *)0x2000010u = 0u;
;** 119	-----------------------    *(volatile unsigned char *)0x200000bu = 0u;
;** 120	-----------------------    *(volatile unsigned char *)0x200000bu = 0u;
;** 121	-----------------------    *(volatile unsigned char *)0x200000bu = pagenum;
;** 122	-----------------------    *(volatile unsigned char *)0x200000bu = pagenum>>8;
;** 123	-----------------------    *(volatile unsigned char *)0x200000bu = pagenum>>16&3u;
;** 125	-----------------------    *(volatile unsigned char *)0x2000010u = 48u;
;** 128	-----------------------    dm368_waitusec(4u);
        STMFD     SP!, {V1, V2, V3, LR} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 6, -8
	.dwcfi	save_reg_to_mem, 5, -12
	.dwcfi	save_reg_to_mem, 4, -16
;* A1    assigned to pagenum
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("pagenum")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("pagenum")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]
;* V2    assigned to buf
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg5]
;* V3    assigned to len
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg6]
;* V2    assigned to dptr
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("dptr")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("dptr")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg5]
;* V9    assigned to i
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg12]
        MOV       V3, A3                ; [DPU_PIPE] |114| 
        MOV       V2, A2                ; [DPU_PIPE] |114| 
	.dwpsn	file "../sources/dm368_nand.c",line 118,column 5,is_stmt,isa 2
        LDR       A2, $C$CON7           ; [DPU_PIPE] |118| 
        MOV       V1, #0                ; [DPU_PIPE] |118| 
        STRB      V1, [A2, #0]          ; [DPU_PIPE] |118| 
	.dwpsn	file "../sources/dm368_nand.c",line 119,column 5,is_stmt,isa 2
        LDR       V9, $C$CON9           ; [DPU_PIPE] |119| 
        STRB      V1, [V9, #0]          ; [DPU_PIPE] |119| 
	.dwpsn	file "../sources/dm368_nand.c",line 120,column 2,is_stmt,isa 2
        STRB      V1, [V9, #0]          ; [DPU_PIPE] |120| 
	.dwpsn	file "../sources/dm368_nand.c",line 121,column 5,is_stmt,isa 2
        STRB      A1, [V9, #0]          ; [DPU_PIPE] |121| 
	.dwpsn	file "../sources/dm368_nand.c",line 122,column 2,is_stmt,isa 2
        MOV       A3, A1, LSR #8        ; [DPU_PIPE] |122| 
        STRB      A3, [V9, #0]          ; [DPU_PIPE] |122| 
	.dwpsn	file "../sources/dm368_nand.c",line 123,column 2,is_stmt,isa 2
        MOV       A1, A1, LSR #16       ; [DPU_PIPE] |123| 
        AND       A1, A1, #3            ; [DPU_PIPE] |123| 
        STRB      A1, [V9, #0]          ; [DPU_PIPE] |123| 
	.dwpsn	file "../sources/dm368_nand.c",line 125,column 2,is_stmt,isa 2
        MOV       V9, #48               ; [DPU_PIPE] |125| 
        STRB      V9, [A2, #0]          ; [DPU_PIPE] |125| 
	.dwpsn	file "../sources/dm368_nand.c",line 128,column 2,is_stmt,isa 2
        MOV       A1, #4                ; [DPU_PIPE] |128| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$27, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |128| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |128| 
        LDR       A1, $C$CON10          ; [DPU_PIPE] |129| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L4||
;*
;*   Loop source line                : 129
;*   Loop closing brace source line  : 129
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L4||:    
;**	-----------------------g2:
;** 129	-----------------------    if ( !(*(volatile unsigned *)0x1d10064u&1u) ) goto g2;
	.dwpsn	file "../sources/dm368_nand.c",line 129,column 8,is_stmt,isa 2
        LDR       V9, [A1, #0]          ; [DPU_PIPE] |129| 
        MOVS      V9, V9, LSL #31       ; [DPU_PIPE] |129| 
        BEQ       ||$C$L4||             ; [DPU_PIPE] |129| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |129| 
;* --------------------------------------------------------------------------*
;** 132	-----------------------    dptr = buf;
;** 133	-----------------------    i = 0u;
;** 133	-----------------------    goto g5;
	.dwpsn	file "../sources/dm368_nand.c",line 132,column 2,is_stmt,isa 2
	.dwpsn	file "../sources/dm368_nand.c",line 133,column 7,is_stmt,isa 2
        MOV       V9, V1                ; [DPU_PIPE] 
        MOV       A2, #33554432         ; [DPU_PIPE] |134| 
        B         ||$C$L6||             ; [DPU_PIPE] 
        ; BRANCH OCCURS {||$C$L6||}      ; [] 
;* --------------------------------------------------------------------------*
||$C$L5||:    
;**	-----------------------g4:
;** 134	-----------------------    *dptr++ = *(volatile unsigned char *)0x2000000u;
;** 133	-----------------------    ++i;
	.dwpsn	file "../sources/dm368_nand.c",line 134,column 6,is_stmt,isa 2
        LDRB      A1, [A2, #0]          ; [DPU_PIPE] |134| 
        STRB      A1, [V2], #1          ; [DPU_PIPE] |134| 
	.dwpsn	file "../sources/dm368_nand.c",line 133,column 23,is_stmt,isa 2
        ADD       V9, V9, #1            ; [DPU_PIPE] |133| 
        MOV       V9, V9, LSL #16       ; [DPU_PIPE] 
        MOV       V9, V9, LSR #16       ; [DPU_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L6||
;* --------------------------------------------------------------------------*
||$C$L6||:    
;**	-----------------------g5:
;** 133	-----------------------    if ( i < len ) goto g4;
	.dwpsn	file "../sources/dm368_nand.c",line 133,column 14,is_stmt,isa 2
        CMP       V3, V9                ; [DPU_PIPE] |133| 
        BGT       ||$C$L5||             ; [DPU_PIPE] |133| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |133| 
;* --------------------------------------------------------------------------*
;** 136	-----------------------    return 0;
	.dwpsn	file "../sources/dm368_nand.c",line 136,column 2,is_stmt,isa 2
        MOV       A1, V1                ; [DPU_PIPE] 
	.dwpsn	file "../sources/dm368_nand.c",line 137,column 1,is_stmt,isa 2
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return
        LDMFD     SP!, {V1, V2, V3, PC} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$18, DW_AT_TI_end_file("../sources/dm368_nand.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x89)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text"
	.clink
	.armfunc nand_writePage
	.state32
	.global	nand_writePage

$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("nand_writePage")
	.dwattr $C$DW$29, DW_AT_low_pc(nand_writePage)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("nand_writePage")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$29, DW_AT_TI_begin_file("../sources/dm368_nand.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x96)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$29, DW_AT_decl_file("../sources/dm368_nand.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x96)
	.dwattr $C$DW$29, DW_AT_decl_column(0x07)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../sources/dm368_nand.c",line 151,column 1,is_stmt,address nand_writePage,isa 2

	.dwfde $C$DW$CIE, nand_writePage
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pagenum")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("pagenum")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg0]
$C$DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg1]
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: nand_writePage                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V9,SP,LR,SR                       *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V9,SP,LR,SR                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 12 Save = 12 byte                 *
;*****************************************************************************
nand_writePage:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 157	-----------------------    *(volatile unsigned char *)0x2000010u = 0x80u;
;** 158	-----------------------    *(volatile unsigned char *)0x200000bu = 0u;
;** 159	-----------------------    *(volatile unsigned char *)0x200000bu = 0u;
;** 160	-----------------------    *(volatile unsigned char *)0x200000bu = pagenum;
;** 161	-----------------------    *(volatile unsigned char *)0x200000bu = pagenum>>8;
;** 162	-----------------------    *(volatile unsigned char *)0x200000bu = pagenum>>16&3u;
;** 165	-----------------------    dptr = buf;
;** 166	-----------------------    i = 0u;
;** 166	-----------------------    goto g3;
        STMFD     SP!, {A4, V1, V2, LR} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 5, -8
	.dwcfi	save_reg_to_mem, 4, -12
	.dwcfi	save_reg_to_mem, 3, -16
;* A1    assigned to pagenum
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("pagenum")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("pagenum")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg0]
;* A3    assigned to len
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg2]
;* A2    assigned to dptr
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("dptr")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("dptr")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg1]
;* V9    assigned to i
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg12]
;* V9    assigned to status
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]
	.dwpsn	file "../sources/dm368_nand.c",line 157,column 5,is_stmt,isa 2
        LDR       V2, $C$CON7           ; [DPU_PIPE] |157| 
        MOV       V9, #128              ; [DPU_PIPE] |157| 
        STRB      V9, [V2, #0]          ; [DPU_PIPE] |157| 
	.dwpsn	file "../sources/dm368_nand.c",line 158,column 5,is_stmt,isa 2
        LDR       A4, $C$CON9           ; [DPU_PIPE] |158| 
        MOV       V9, #0                ; [DPU_PIPE] |158| 
        STRB      V9, [A4, #0]          ; [DPU_PIPE] |158| 
	.dwpsn	file "../sources/dm368_nand.c",line 159,column 2,is_stmt,isa 2
        STRB      V9, [A4, #0]          ; [DPU_PIPE] |159| 
	.dwpsn	file "../sources/dm368_nand.c",line 160,column 5,is_stmt,isa 2
        STRB      A1, [A4, #0]          ; [DPU_PIPE] |160| 
	.dwpsn	file "../sources/dm368_nand.c",line 161,column 2,is_stmt,isa 2
        MOV       LR, A1, LSR #8        ; [DPU_PIPE] |161| 
        STRB      LR, [A4, #0]          ; [DPU_PIPE] |161| 
	.dwpsn	file "../sources/dm368_nand.c",line 162,column 2,is_stmt,isa 2
        MOV       A1, A1, LSR #16       ; [DPU_PIPE] |162| 
        AND       A1, A1, #3            ; [DPU_PIPE] |162| 
        STRB      A1, [A4, #0]          ; [DPU_PIPE] |162| 
	.dwpsn	file "../sources/dm368_nand.c",line 165,column 2,is_stmt,isa 2
	.dwpsn	file "../sources/dm368_nand.c",line 166,column 7,is_stmt,isa 2
        MOV       V1, #33554432         ; [DPU_PIPE] |167| 
        B         ||$C$L8||             ; [DPU_PIPE] 
        ; BRANCH OCCURS {||$C$L8||}      ; [] 
;* --------------------------------------------------------------------------*
||$C$L7||:    
;**	-----------------------g2:
;** 167	-----------------------    *(volatile unsigned char *)0x2000000u = *dptr++;
;** 166	-----------------------    ++i;
	.dwpsn	file "../sources/dm368_nand.c",line 167,column 6,is_stmt,isa 2
        LDRB      A1, [A2], #1          ; [DPU_PIPE] |167| 
        STRB      A1, [V1, #0]          ; [DPU_PIPE] |167| 
	.dwpsn	file "../sources/dm368_nand.c",line 166,column 23,is_stmt,isa 2
        ADD       V9, V9, #1            ; [DPU_PIPE] |166| 
        MOV       V9, V9, LSL #16       ; [DPU_PIPE] 
        MOV       V9, V9, LSR #16       ; [DPU_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L8||
;* --------------------------------------------------------------------------*
||$C$L8||:    
;**	-----------------------g3:
;** 166	-----------------------    if ( i < len ) goto g2;
	.dwpsn	file "../sources/dm368_nand.c",line 166,column 14,is_stmt,isa 2
        CMP       A3, V9                ; [DPU_PIPE] |166| 
        BGT       ||$C$L7||             ; [DPU_PIPE] |166| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |166| 
;* --------------------------------------------------------------------------*
;** 168	-----------------------    *(volatile unsigned char *)0x2000010u = 16u;
;** 171	-----------------------    dm368_waitusec(1u);
	.dwpsn	file "../sources/dm368_nand.c",line 168,column 2,is_stmt,isa 2
        MOV       V9, #16               ; [DPU_PIPE] |168| 
        STRB      V9, [V2, #0]          ; [DPU_PIPE] |168| 
	.dwpsn	file "../sources/dm368_nand.c",line 171,column 5,is_stmt,isa 2
        MOV       A1, #1                ; [DPU_PIPE] |171| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("dm368_waitusec")
	.dwattr $C$DW$38, DW_AT_TI_call
        BL        dm368_waitusec        ; [DPU_PIPE] |171| 
        ; CALL OCCURS {dm368_waitusec }  ; [] |171| 
        LDR       A1, $C$CON10          ; [DPU_PIPE] |172| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L9||
;*
;*   Loop source line                : 172
;*   Loop closing brace source line  : 172
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L9||:    
;**	-----------------------g5:
;** 172	-----------------------    if ( !(*(volatile unsigned *)0x1d10064u&1u) ) goto g5;
	.dwpsn	file "../sources/dm368_nand.c",line 172,column 8,is_stmt,isa 2
        LDR       V9, [A1, #0]          ; [DPU_PIPE] |172| 
        MOVS      V9, V9, LSL #31       ; [DPU_PIPE] |172| 
        BEQ       ||$C$L9||             ; [DPU_PIPE] |172| 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |172| 
;* --------------------------------------------------------------------------*
;** 175	-----------------------    *(volatile unsigned char *)0x2000010u = 112u;
;** 176	-----------------------    status = *(volatile unsigned char *)0x2000000u;
;** 178	-----------------------    *(volatile unsigned char *)0x2000010u = 0xffu;
;** 180	-----------------------    return status&1u;
	.dwpsn	file "../sources/dm368_nand.c",line 175,column 2,is_stmt,isa 2
        MOV       V9, #112              ; [DPU_PIPE] |175| 
        STRB      V9, [V2, #0]          ; [DPU_PIPE] |175| 
	.dwpsn	file "../sources/dm368_nand.c",line 176,column 2,is_stmt,isa 2
        LDRB      V9, [V1, #0]          ; [DPU_PIPE] |176| 
	.dwpsn	file "../sources/dm368_nand.c",line 178,column 2,is_stmt,isa 2
        MOV       A1, #255              ; [DPU_PIPE] |178| 
        STRB      A1, [V2, #0]          ; [DPU_PIPE] |178| 
	.dwpsn	file "../sources/dm368_nand.c",line 180,column 9,is_stmt,isa 2
        AND       A1, V9, #1            ; [DPU_PIPE] |180| 
	.dwpsn	file "../sources/dm368_nand.c",line 183,column 1,is_stmt,isa 2
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return
        LDMFD     SP!, {A4, V1, V2, PC} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("../sources/dm368_nand.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0xb7)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text"
	.clink
	.armfunc nandflash_test
	.state32
	.global	nandflash_test

$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("nandflash_test")
	.dwattr $C$DW$40, DW_AT_low_pc(nandflash_test)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("nandflash_test")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$40, DW_AT_TI_begin_file("../sources/dm368_nand.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0xc0)
	.dwattr $C$DW$40, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$40, DW_AT_decl_file("../sources/dm368_nand.c")
	.dwattr $C$DW$40, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$40, DW_AT_decl_column(0x07)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../sources/dm368_nand.c",line 193,column 1,is_stmt,address nandflash_test,isa 2

	.dwfde $C$DW$CIE, nandflash_test

;*****************************************************************************
;* FUNCTION NAME: nandflash_test                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V9,SP,LR,SR                       *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V9,SP,LR,SR                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 12 Save = 12 byte                 *
;*****************************************************************************
nandflash_test:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;** 200	-----------------------    if ( (i = 0u) >= 2048 ) goto g3;
        STMFD     SP!, {A4, V1, V2, LR} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 5, -8
	.dwcfi	save_reg_to_mem, 4, -12
	.dwcfi	save_reg_to_mem, 3, -16
;* V2    assigned to i
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg5]
;* V2    assigned to page
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("page")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("page")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg5]
	.dwpsn	file "../sources/dm368_nand.c",line 200,column 13,is_stmt,isa 2
        MOV       V2, #0                ; [DPU_PIPE] |200| 
        CMP       V2, #2048             ; [DPU_PIPE] |200| 
        BGE       ||$C$L11||            ; [DPU_PIPE] |200| 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |200| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L10||
;*
;*   Loop source line                : 200
;*   Loop closing brace source line  : 201
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L10||:    
;**	-----------------------g2:
;** 201	-----------------------    nand_eraseBlock((unsigned)i);
;** 200	-----------------------    if ( (++i) < 2048 ) goto g2;
	.dwpsn	file "../sources/dm368_nand.c",line 201,column 3,is_stmt,isa 2
        MOV       A1, V2                ; [DPU_PIPE] |201| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("nand_eraseBlock")
	.dwattr $C$DW$43, DW_AT_TI_call
        BL        nand_eraseBlock       ; [DPU_PIPE] |201| 
        ; CALL OCCURS {nand_eraseBlock }  ; [] |201| 
	.dwpsn	file "../sources/dm368_nand.c",line 200,column 23,is_stmt,isa 2
        ADD       V9, V2, #1            ; [DPU_PIPE] |200| 
        MOV       V2, V9, LSL #16       ; [DPU_PIPE] 
        MOV       V2, V2, LSR #16       ; [DPU_PIPE] 
        CMP       V2, #2048             ; [DPU_PIPE] |200| 
        BLT       ||$C$L10||            ; [DPU_PIPE] |200| 
        ; BRANCHCC OCCURS {||$C$L10||}   ; [] |200| 
;* --------------------------------------------------------------------------*
||$C$L11||:    
;**	-----------------------g3:
;** 204	-----------------------    if ( (i = 0u) >= 2048 ) goto g5;
	.dwpsn	file "../sources/dm368_nand.c",line 204,column 14,is_stmt,isa 2
        MOV       V2, #0                ; [DPU_PIPE] |204| 
        LDR       V1, $C$CON11          ; [DPU_PIPE] |210| 
        CMP       V2, #2048             ; [DPU_PIPE] |204| 
        BGE       ||$C$L13||            ; [DPU_PIPE] |204| 
        ; BRANCHCC OCCURS {||$C$L13||}   ; [] |204| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L12||
;*
;*   Loop source line                : 204
;*   Loop closing brace source line  : 205
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L12||:    
;**	-----------------------g4:
;** 205	-----------------------    src[i] = i;
;** 204	-----------------------    if ( (++i) < 2048 ) goto g4;
	.dwpsn	file "../sources/dm368_nand.c",line 205,column 6,is_stmt,isa 2
        STRB      V2, [V1, +V2]         ; [DPU_PIPE] |205| 
	.dwpsn	file "../sources/dm368_nand.c",line 204,column 38,is_stmt,isa 2
        ADD       V9, V2, #1            ; [DPU_PIPE] |204| 
        MOV       V2, V9, LSL #16       ; [DPU_PIPE] 
        MOV       V2, V2, LSR #16       ; [DPU_PIPE] 
        CMP       V2, #2048             ; [DPU_PIPE] |204| 
        BLT       ||$C$L12||            ; [DPU_PIPE] |204| 
        ; BRANCHCC OCCURS {||$C$L12||}   ; [] |204| 
;* --------------------------------------------------------------------------*
||$C$L13||:    
;**	-----------------------g5:
;** 208	-----------------------    if ( (page = 0u) >= 128u ) goto g7;
	.dwpsn	file "../sources/dm368_nand.c",line 208,column 17,is_stmt,isa 2
        MOV       V2, #0                ; [DPU_PIPE] |208| 
        CMP       V2, #128              ; [DPU_PIPE] |208| 
        BCS       ||$C$L15||            ; [DPU_PIPE] |208| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |208| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L14||
;*
;*   Loop source line                : 208
;*   Loop closing brace source line  : 213
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L14||:    
;**	-----------------------g6:
;** 210	-----------------------    nand_writePage(page, &src, 2048);
;** 208	-----------------------    if ( (++page) < 128u ) goto g6;
	.dwpsn	file "../sources/dm368_nand.c",line 210,column 3,is_stmt,isa 2
        MOV       A2, V1                ; [DPU_PIPE] |210| 
        MOV       A1, V2                ; [DPU_PIPE] |210| 
        MOV       A3, #2048             ; [DPU_PIPE] |210| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("nand_writePage")
	.dwattr $C$DW$44, DW_AT_TI_call
        BL        nand_writePage        ; [DPU_PIPE] |210| 
        ; CALL OCCURS {nand_writePage }  ; [] |210| 
	.dwpsn	file "../sources/dm368_nand.c",line 208,column 29,is_stmt,isa 2
        ADD       V2, V2, #1            ; [DPU_PIPE] |208| 
        CMP       V2, #128              ; [DPU_PIPE] |208| 
        BCC       ||$C$L14||            ; [DPU_PIPE] |208| 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |208| 
;* --------------------------------------------------------------------------*
||$C$L15||:    
;**	-----------------------g7:
;** 216	-----------------------    if ( (page = 0u) >= 128u ) goto g9;
	.dwpsn	file "../sources/dm368_nand.c",line 216,column 17,is_stmt,isa 2
        MOV       V2, #0                ; [DPU_PIPE] |216| 
        CMP       V2, #128              ; [DPU_PIPE] |216| 
        BCS       ||$C$L17||            ; [DPU_PIPE] |216| 
        ; BRANCHCC OCCURS {||$C$L17||}   ; [] |216| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L16||
;*
;*   Loop source line                : 216
;*   Loop closing brace source line  : 217
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L16||:    
;**	-----------------------g8:
;** 217	-----------------------    nand_readPage(page, &dst, 2048);
;** 216	-----------------------    if ( (++page) < 128u ) goto g8;
	.dwpsn	file "../sources/dm368_nand.c",line 217,column 3,is_stmt,isa 2
        LDR       A2, $C$CON12          ; [DPU_PIPE] |217| 
        MOV       A1, V2                ; [DPU_PIPE] |217| 
        MOV       A3, #2048             ; [DPU_PIPE] |217| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("nand_readPage")
	.dwattr $C$DW$45, DW_AT_TI_call
        BL        nand_readPage         ; [DPU_PIPE] |217| 
        ; CALL OCCURS {nand_readPage }   ; [] |217| 
	.dwpsn	file "../sources/dm368_nand.c",line 216,column 29,is_stmt,isa 2
        ADD       V2, V2, #1            ; [DPU_PIPE] |216| 
        CMP       V2, #128              ; [DPU_PIPE] |216| 
        BCC       ||$C$L16||            ; [DPU_PIPE] |216| 
        ; BRANCHCC OCCURS {||$C$L16||}   ; [] |216| 
;* --------------------------------------------------------------------------*
||$C$L17||:    
;**	-----------------------g9:
;** 219	-----------------------    return 0;
	.dwpsn	file "../sources/dm368_nand.c",line 219,column 2,is_stmt,isa 2
        MOV       A1, #0                ; [DPU_PIPE] |219| 
	.dwpsn	file "../sources/dm368_nand.c",line 220,column 1,is_stmt,isa 2
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_return
        LDMFD     SP!, {A4, V1, V2, PC} ; [DPU_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$40, DW_AT_TI_end_file("../sources/dm368_nand.c")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0xdc)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	30474244,32
	.align	4
||$C$CON2||:	.bits	30474256,32
	.align	4
||$C$CON3||:	.bits	1077936644,32
	.align	4
||$C$CON4||:	.bits	30474336,32
	.align	4
||$C$CON5||:	.bits	30474260,32
	.align	4
||$C$CON6||:	.bits	1084228868,32
	.align	4
||$C$CON7||:	.bits	33554448,32
	.align	4
||$C$CON8||:	.bits	100000,32
	.align	4
||$C$CON9||:	.bits	33554443,32
	.align	4
||$C$CON10||:	.bits	30474340,32
	.align	4
||$C$CON11||:	.bits	src,32
	.align	4
||$C$CON12||:	.bits	dst,32
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

$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x840)
$C$DW$47	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$47, DW_AT_upper_bound(0x83f)
	.dwendtag $C$DW$T$22

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

