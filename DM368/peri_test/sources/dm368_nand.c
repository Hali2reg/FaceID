
/*******************************************************************************
********************************************************************************
* FILE         : dm368_nand.c
* Description  : 
*			  
* Copyright (c) 2016 by Harley. All Rights Reserved.
* 
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2016/12/21	      Initial Version
   
********************************************************************************
*******************************************************************************/



#include"dm368.h"
#include"dm368_nand.h"

#include "stdio.h"

 
/*------------------------------------------------------------------------------
* Function   Name	: nand_init
* Despritions		: check NAND Flash Infos
* Parameters		: 
* Returned  Value	: 
------------------------------------------------------------------------------*/
Int16 nand_init()
{
    volatile Uint16 mfgid, devid,nandinfo1,nandinfo2,nandinfo3;
	
	//Parameters initialization
	AEMIF_AWCCR = 0xFF;			//max extended wait cycles
	/*CE0 configuration , first 8Gb(8-bit width)*/
	AEMIF_A1CR 	= 0x40400204;	//Setup=0, Strobe=4, Hold=0, TA=1
	AEMIF_NANDFCR |= 1;

	AEMIF_A2CR	= 0x00a00504;  //Setup=0, Strobe=A, Hold=0, TA=1
    AEMIF_NANDFCR &= ~2;
	
	
	NANDFLASH_CLE = CMD_RESET;
	dm368_waitusec(100000);

    // Start erase operation
    NANDFLASH_CLE = CMD_READID;
    NANDFLASH_ALE = 0x00;

	// Wait for command completion
	dm368_wait(4);
	while((AEMIF_NANDFSR & 0x01) == 0);

	// Get IDs
    mfgid = NANDFLASH_DATA;
    devid = NANDFLASH_DATA;
	nandinfo1 = NANDFLASH_DATA;
	nandinfo2 = NANDFLASH_DATA;
	nandinfo3 = NANDFLASH_DATA;

	if (devid != 0xdc)
	    return 1;
  
	return 0;
}

 
/*------------------------------------------------------------------------------
* Function   Name	: 	nand_eraseBlock
* Despritions		: 	erase Blocks
* Parameters		: 	blocknum	->	0 ~ NANDFLASH_BLOCKS
* Returned  Value	: 	0 		->	OK
						1		->	Check Status ERROR
------------------------------------------------------------------------------*/
Int16 nand_eraseBlock(Uint32 blocknum)
{
    Uint32 status;

    // Start erase operation
    NANDFLASH_CLE = CMD_ERASE;
    NANDFLASH_ALE = (blocknum & 0x0003) << 6;
	NANDFLASH_ALE = (blocknum & 0x03fc) >> 2;
	NANDFLASH_ALE = (blocknum & 0x0c00) >> 10;
	NANDFLASH_CLE = CMD_ERASE_CONFIRM;

	// Wait for erase completion
	dm368_wait(1);
	while((AEMIF_NANDFSR & 0x01) == 0);

	// Check erase status
	NANDFLASH_CLE = CMD_STATUS;
	status = NANDFLASH_DATA;

	NANDFLASH_CLE = CMD_RESET;
	if (status & 0x01)
        return 1;  // Error
	else
    	return 0;  // OK
}

 
/*------------------------------------------------------------------------------
* Function   Name	: 	nand_readPage
* Despritions		: 	Only for the Die 0 area, which means Only for 0-4Gb area
					  	of first 8Gb or the rest 8Gb.
* Parameters		: 	pagenum -> 	0 ~ NANDFLASH_PAGES
						buf		->	the static array ,dst[]. in dm368_nand.h
						len		->	0 ~ NANDFLASH_PAGESIZE
* Returned  Value	: 	0 		->	OK
						1		->	Check Status ERROR
------------------------------------------------------------------------------*/
Int16 nand_readPage(Uint32 pagenum, Uint8 *buf, Uint16 len)
{
    Uint8 *dptr;
	Uint16 i;

    NANDFLASH_CLE = CMD_READ;
    NANDFLASH_ALE = 0x00;
	NANDFLASH_ALE = 0x00;
    NANDFLASH_ALE = pagenum & 0xff;
	NANDFLASH_ALE = (pagenum & 0x00ff00) >> 8;
	NANDFLASH_ALE = (pagenum & 0x030000) >> 16;
	//NANDFLASH_ALE = 0x04;			// for 4Gb-8Gb test.
	NANDFLASH_CLE = CMD_READ_CONFIRM;

	// Wait for read completion
	dm368_waitusec(4);
	while((AEMIF_NANDFSR & 0x01) == 0);

	// Read data
	dptr = buf;
	for (i = 0; i < len; i++)
	    *dptr++ = NANDFLASH_DATA;

	return 0;
}

 
/*------------------------------------------------------------------------------
* Function   Name	: 	nand_writePage
* Despritions		: 	Only for the Die 0 area, which means Only for 0-4Gb area
					  	of first 8Gb or the rest 8Gb.
* Parameters		: 	pagenum -> 	0 ~ NANDFLASH_PAGES
						buf		->	the static array ,dst[]. in dm368_nand.h
						len		->	0 ~ NANDFLASH_PAGESIZE
* Returned  Value	: 	0 		->	OK
						1		->	Check Status ERROR
------------------------------------------------------------------------------*/
Int16 nand_writePage(Uint32 pagenum, Uint8 *buf, Uint16 len)
{
    Uint8 *dptr;
    Uint16 i;
    Uint32 status;

	// Start program operation
    NANDFLASH_CLE = CMD_PROGRAM;
    NANDFLASH_ALE = 0x00;
	NANDFLASH_ALE = 0x00;
    NANDFLASH_ALE = pagenum & 0xff;
	NANDFLASH_ALE = (pagenum & 0x00ff00) >> 8;
	NANDFLASH_ALE = (pagenum & 0x030000) >> 16;
	//NANDFLASH_ALE = 0x04;		//for 4Gb-8Gb test.

	dptr = buf;
	for (i = 0; i < len; i++)
	    NANDFLASH_DATA = *dptr++;

	NANDFLASH_CLE = CMD_PROGRAM_CONFIRM;

	// Wait for program completion
    dm368_waitusec(1);
	while((AEMIF_NANDFSR & 0x01) == 0);

	// Check program status
	NANDFLASH_CLE = CMD_STATUS;
	status = NANDFLASH_DATA;

	NANDFLASH_CLE = CMD_RESET;
	if (status & 0x01)
        return 1;  // Error
	else
    	return 0;  // OK
}

 
/*------------------------------------------------------------------------------
* Function   Name	: nandflash_test
* Despritions		: write and read operation to check NAND Flash.
* Parameters		: 
* Returned  Value	: 
------------------------------------------------------------------------------*/
Int16 nandflash_test( )
{
    volatile Int16 status,errors,error_page;
    Uint16 i;
	volatile Uint32 page,pages;
	error_page = 0;
	pages = 64*2048;
	errors = 0;
	//for(i = 0; i < 2048; i++)
	//	errors += nand_eraseBlock(i);
	
	/* Clear buffer */
	for (i = 0; i < NANDFLASH_PAGESIZE; i++)
	    src[i] = i;
	nand_eraseBlock(0);
	
	status = 0;
	for (page =1 ; page < 64; page++)
	{
		status = nand_writePage(page, src, NANDFLASH_PAGESIZE);

		if (status)
			error_page = page;
	}

	status = 0;
	for (page = 0; page < 128; page++)
		status	= nand_readPage(page, dst, NANDFLASH_PAGESIZE);
	
	return 0;
}

/*------------------------------------------------------------------------------
* Function   Name	: nand_ubl_read
* Despritions		: read operation to check NAND Flash UBL.
* Parameters		:
* Returned  Value	:
------------------------------------------------------------------------------*/
Uint16 nand_ubl_read()
{
	Uint32 page = 0;
	Uint32 i = 0;
	volatile Uint16 status =0;
	FILE *fp;
	Int8 s[100]  ="E:\\Projects\\CCS5.5\\system_test\\system_test_led\\ubl.txt";
	//printf("select the file to write:\r\n");
	//scanf("%s",s);
	printf("ubl copy starting:\r\n");
	fp = fopen(s,"r+");
	if(fp == NULL)
		return 1;

	for (i = 0; i < NANDFLASH_PAGESIZE; i++)
		dst[i] = 0;
	status = nand_readPage(64, dst, NANDFLASH_PAGESIZE);
	for(page = 65 ;page < 72; page++)
	{
		status = nand_readPage(page, dst, NANDFLASH_PAGESIZE);
		fseek(fp,0,SEEK_END);
		fwrite(dst,sizeof(dst),1,fp);
	}
	fclose(fp);
	return 0;


}
/*------------------------------------------------------------------------------
* Function   Name	: nand_uboot_read
* Despritions		: read operation to check NAND Flash UBL.
* Parameters		:
* Returned  Value	:
------------------------------------------------------------------------------*/
Uint16 nand_uboot_read()
{
	Uint32 page = 0;
	Uint32 i = 0;
	volatile Uint16 status =0;
	FILE *fp;
	Int8 s[100] ="E:\\Projects\\CCS5.5\\system_test\\system_test_led\\uboot.txt";
	printf("select the file to write:\r\n");
	printf("uboot copy starting:\r\n");
//	scanf("%s",s);
	fp = fopen(s,"r+");
	if(fp == NULL)
		return 1;

	for (i = 0; i < NANDFLASH_PAGESIZE; i++)
		dst[i] = 0;
	status = nand_readPage(1600, dst, NANDFLASH_PAGESIZE);

	for(page = 1601 ;page < 1755; page++)
	{
		status = nand_readPage(page, dst, NANDFLASH_PAGESIZE);
		fseek(fp,0,SEEK_END);
		fwrite(dst,sizeof(dst),1,fp);
	}
	fclose(fp);

	return 0;


}
