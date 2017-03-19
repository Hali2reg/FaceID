
/*******************************************************************************
********************************************************************************
* FILE         : isif.c
* Description  :
*
* Copyright (c) 2017 by Harley. All Rights Reserved.
*
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2017/3/7	      Initial Version

********************************************************************************
*******************************************************************************/

#include "dm368.h"

/*------------------------------------------------------------------------------
* Function   Name	: isif_init()
* Description		: configure image interface registers .
* Parameters		: none
* Returned  Value	: none
------------------------------------------------------------------------------*/
void isif_init()
{
	//*(Uint32*)0x01C71200 = 0x0001;

	ISIF_SYNCEN  = 0x00000000;			// disable VPFE during setup
	ISIF_MODESET = 0x00002020;			// YCbCr8bit input , VD/HD input & positive sync.
	ISIF_CCDCFG  = 0x00000052;			// Enable external trigger.


	/******* write to SDRAM , common configuration *******/
	ISIF_SPH	 = 0x0010;				// start pixel, horizontal.
	ISIF_LNH	 = 0x0120-1;				// numbers of pixels in a line
	ISIF_SLV0	 = 0x0003;				// start line filed 0
	ISIF_SLV1	 = 0X0003;				// start line field 1
	ISIF_LNV	 = 0x00DC-1;				// numbers of vertical lines.
	ISIF_CADU    = 0x0400;				// DDR offset 0x0000.
	ISIF_CADL	 = 0x0000;
	ISIF_CULH	 = 0xFFFF;
	ISIF_CULV	 = 0x00FF;
	ISIF_HSIZE	 = 0x0120;
	ISIF_SDOFST  = 0x0000;
	ISIF_REC656IF = 0x0000;
	ISIF_SYNCEN  = 0x0003;			//enable ISIF.

}

/*------------------------------------------------------------------------------
* Function   Name	: face_detection_init()
* Description		: configure registers about face detection function.
* Parameters		: none
* Returned  Value	: none
------------------------------------------------------------------------------*/
void face_detection_init()
{
	ISP5_INTSEL1	 = 0x13;
	FDIF_INTEN		 = 0x01;	//Enable Face Detection Interrupt .

}
