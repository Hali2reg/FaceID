
/*******************************************************************************
********************************************************************************
* FILE         : dm368_nand.h
* Description  : 
*			  
* Copyright (c) 2016 by Harley. All Rights Reserved.
* 
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2016/12/23	      Initial Version
   
********************************************************************************
*******************************************************************************/

#ifndef _DM368_NAND_H_
#define _DM368_NAND_H_


#define NANDFLASH_BASE                  0x02000000  // CE# control first 8Gb
//#define NANDFLASH_BASE                  0x04000000  // CE2# control rest 8Gb
#define NANDFLASH_BLOCKS                4096
#define NANDFLASH_PAGESPERBLOCK         64
#define NANDFLASH_PAGES                 (NANDFLASH_BLOCKS * NANDFLASH_PAGESPERBLOCK)
#define NANDFLASH_PAGESIZE              2048
#define NANDFLASH_SPARESIZE             64

// 	Store Control Signals
#define NANDFLASH_DATA  *( volatile Uint8* )( NANDFLASH_BASE + 0x00 )
#define NANDFLASH_CLE   *( volatile Uint8* )( NANDFLASH_BASE + 0x10 )
#define NANDFLASH_ALE   *( volatile Uint8* )( NANDFLASH_BASE + 0x08 )

//	Commands For NAND Flash Operation 
#define CMD_READ                    0x00
#define CMD_READID                  0x90
#define CMD_READ_CONFIRM            0x30
#define CMD_PROGRAM                 0x80
#define CMD_PROGRAM_CONFIRM         0x10
#define CMD_ERASE                   0x60
#define CMD_ERASE_CONFIRM           0xd0
#define CMD_STATUS                  0x70
#define CMD_RESET                   0xff


static Uint8 src[NANDFLASH_PAGESIZE + NANDFLASH_SPARESIZE];
//static Uint8 dst[NANDFLASH_PAGESIZE + NANDFLASH_SPARESIZE];
static Uint8 dst[NANDFLASH_PAGESIZE];


Int16 nand_init();
Int16 nand_eraseBlock(Uint32 blocknum);
Int16 nand_readPage(Uint32 pagenum, Uint8 *buf, Uint16 len);
Int16 nand_writePage(Uint32 pagenum, Uint8 *buf, Uint16 len);
Int16 nandflash_test( );
Uint16 nand_ubl_read( );
Uint16 nand_uboot_read();
Uint16 erase_all_blocks();
Uint16 nand_read();

#endif /*_DM368_NAND_H_*/




