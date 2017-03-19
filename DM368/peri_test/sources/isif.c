
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
	ISIF_MODESET = 0x00002000;			// YCbCr8bit input , VD/HD input & positive sync.
	ISIF_CCDCFG  = 0x00000400;			// Enable external trigger.
	ISIF_SYNCEN  = 0x00000002;			// Enable control writing to SDRAM

	/******* write to SDRAM , common configuration *******/
	ISIF_SPH	 = 0x05;				// start pixel, horizontal.
	ISIF_LNH	 = 0x0136;				// numbers of pixels in a line
	ISIF_SLV0	 = 0x02;				// start line filed 0
	ISIF_SLV1	 = 0X03;				// start line field 1
	ISIF_LNV	 = 0x0DC;				// numbers of vertical lines.
	ISIF_CADU    = 0x00;				// DDR offset 0x0000.
	ISIF_CADL	 = 0x00;
	ISIF_CULH	 = 0xFFFF;
	ISIF_CULV	 = 0xFF;
	ISIF_HSIZE	 = 0x0540;
	ISIF_SDOFST  = 0x00;

	ISIF_SYNCEN	|= 0x01;				//enable ISIF.

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
