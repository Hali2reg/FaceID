
/*******************************************************************************
********************************************************************************
* FILE         : dm368_ddr.c
* Description  : 
*			  
* Copyright (c) 2016 by Harley. All Rights Reserved.
* 
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2016/12/28	      Initial Version
   
********************************************************************************
*******************************************************************************/

#include "dm368.h"
#include "dm368_psc.h"
#include "dm368_ddr.h"
 
/*------------------------------------------------------------------------------
* Function   Name	: ddr_init
* Despritions		: 
* Parameters		: 
* Returned  Value	: 
------------------------------------------------------------------------------*/
Uint16 ddr_init()
{

	// VTP Caliberation
	//PWR_DWN bit is made '0', to power the VTP module 

    VTPIO_CTL = VTPIO_CTL & 0xFFFF9F3F;
  
    // Set bit CLRZ (bit 13)
    VTPIO_CTL = VTPIO_CTL | 0x00002000;
  
    // Check VTP READY Status
    while( !(VTPIO_CTL & 0x8000));      
  
    // Set bit LOCK(bit7) and PWRSAVE (bit8)
    VTPIO_CTL = VTPIO_CTL | 0x00000080;     
    
    // Powerdown VTP as it is locked (bit 6)
    // Set bit VTP_IOPWRDWN bit 14 for DDR input buffers)
    VTPIO_CTL = VTPIO_CTL | 0x00004040; 

    // DDR2 configuration for 243MHz clock
    DDR_DDRPHYCR = 0x000000C6;    // External DQS gatin enabled
                                 // ReadLatency: 0x5 (Taken as 5+1 =6 DDR_CLKP cycles)
   	DDR_SDBCR     = 0x0853C832;		
    DDR_SDRCR      = 0x00000768;    // Program SDRAM Refresh Control Register
    DDR_VBPR     = 0x000000FE;	 // VBUSM Burst Priority Register, pr_old_count = 0xFE
    DDR_SDTIMR     = 0       // Program SDRAM Timing Control Register1
    |( 43 << 25 )         // T_RFC = (trfc/DDR_CLK) - 1 = (127.5 / 2.941) - 1
    |( 5  << 22 )         // T_RP  = (trp/DDR_CLK) - 1  = (15 / 2.941) - 1
	|( 5  << 19 )         // T_RCD = (trcd/DDR_CLK) - 1 = (15 / 2.941) - 1
	|( 5  << 16 )         // T_WR  = (twr/DDR_CLK) - 1  = (15 / 2.941) - 1
	|( 13 << 11 )         // T_RAS = (tras/DDR_CLK) - 1 = (40 / 2.941) - 1
	|( 18 <<  6 )         // T_RC  = (trc/DDR_CLK) - 1  = (55 / 2.941) - 1
	|( 3  <<  3 )         // T_RRD = (trrd/DDR_CLK) - 1 = (10 / 2.941) - 1
    |( 2  <<  0 );        // T_WTR = (twtr/DDR_CLK) - 1 = (10 / 2.941) - 1

    DDR_SDTIMR2     = 0       // Program SDRAM Timing Control Register2
    |( 8  << 27 )         // T_RASMAX = (trasmax/refresh_rate) - 1 = (70K / 7812.6) - 1
    |( 2  << 25 )         // T_XP  = tCKE - 1 = 3 - 2
    |( 46 << 16 )         // T_XSNR= ((trfc + 10)/DDR_CLK) - 1 = (137.5 / 2.941) - 1
    |( 199<<  8 )         // T_XSRD = txsrd - 1 = 200 - 1
    |(  2 <<  5 )         // T_RTP = (trtp/DDR_CLK) - 1 = (7.5 / 2.941) - 1
    |(  2 <<  0 );        // T_CKE = tcke - 1     = 3 - 1

    DDR_SDBCR     = 0x08534832;    // Program SDRAM Bank Config Register

    dm368_psc_changeState( 13 , 1 );
    dm368_psc_changeState( 13 , 3 );

    return 0;
}

 
/*------------------------------------------------------------------------------
* Function   Name	: ddr_rw32_test
* Despritions		: write a word(4 bytes) in DDR.
* Parameters		: start		->	start address
					  len		->	length to be written
					  val		->	value to be written
* Returned  Value	: errorcount->	errors counts.when the value read is not 
					  equal to the value written in the DDR.
------------------------------------------------------------------------------*/
Uint32 ddr_word_rwTest( Uint32 start, Uint32 len, Uint32 val )
{
    Uint32 i;
    Uint32 end = start + len;
    Uint32 errorcount = 0;
	Uint32 *pdata;

    /* Write Pattern */
	pdata = (Uint32 *)start;
    for ( i = start; i < end; i += 4 )
    {
        *pdata++ = val;
    }

    /* Read Pattern */
	pdata = (Uint32 *)start;
    for ( i = start; i < end; i += 4 )
    {
        if ( *pdata++ != val )
        {
            errorcount++;
            break;
        }
    }

    return errorcount;
}

 
/*------------------------------------------------------------------------------
* Function   Name	: ddr_dword_rwTest
* Despritions		: write a doubleword(8 bytes) in DDR. 
					  fOR TEST!!!!
* Parameters		: start		->	start address
					  len		->	length to be written
* Returned  Value	: 
------------------------------------------------------------------------------*/
Uint32 ddr_dword_rwTest( Uint32 start, Uint32 len )
{
    Uint32 i;
    Uint32 end = start + len;
    Uint32 errorcount = 0;
	Uint32 *pdata;


    /* Write Pattern */
	pdata = (Uint32 *)start;
    for ( i = start; i < end; i += 16 )
    {
	    *pdata++ = i;
		*pdata++ = i + 4;
		*pdata++ = i + 8;
		*pdata++ = i + 12;
    }

    /* Read Pattern */
	pdata  = (Uint32 *)start;
    for ( i = start; i < end; i += 4 )
    {
        if ( *pdata++ != i )
        {
            errorcount++;
            break;
        }
    }

    return errorcount;
}

 
/*------------------------------------------------------------------------------
* Function   Name	: ddr_test
* Despritions		: do some write and read operation in DDR.
* Parameters		: 
* Returned  Value	: 
------------------------------------------------------------------------------*/
Uint16 ddr_test()
{
	Uint16 errors=0;
	
	if(ddr_word_rwTest(DDR_DATA_BASE , DDR_TEST_LENGTH , 0xFFFFFFFF))
		errors += 1;
	if(ddr_word_rwTest(DDR_DATA_BASE , DDR_TEST_LENGTH , 0xAAAAAAAA))
		errors += 2;
	if(ddr_word_rwTest(DDR_DATA_BASE , DDR_TEST_LENGTH , 0x55555555))
		errors += 4;
	if(ddr_word_rwTest(DDR_DATA_BASE , DDR_TEST_LENGTH , 0x00000000))
		errors += 8;	

	if(errors)
	{
		return 1;
	}

	return 0;
}
