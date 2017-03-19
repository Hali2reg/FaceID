
/*******************************************************************************
********************************************************************************
* FILE         : dm368_ddr.h
* Description  : 
*			  
* Copyright (c) 2016 by Harley. All Rights Reserved.
* 
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2016/12/28	      Initial Version
   
********************************************************************************
*******************************************************************************/


#ifndef _DM368_DDR_H_
#define _DM368_DDR_H_


#define DDR_DATA_BASE		0x80000000
#define DDR_TEST_LENGTH		0x00100000			// 1Mb 


Uint16 ddr_init();
Uint32 ddr_word_rwTest( Uint32 start, Uint32 len, Uint32 val );
Uint32 ddr_dword_rwTest( Uint32 start, Uint32 len );
Uint16 ddr_test();






#endif /*_DM368_DDR_H_*/

