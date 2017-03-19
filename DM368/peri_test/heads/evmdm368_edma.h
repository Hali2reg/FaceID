/*
 *  Copyright 2008 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  EDMA header file
 *
 */

#ifndef EDMA_
#define EDMA_

#include "evmdm368.h"

#define EDMA_BASE              0x01C00000
#define EDMA_PARAM         		*( EVMDM368_EDMA_param* )( EDMA_BASE + 0x4000 )		// Base of PaRAM
#define EDMA_ESR        		*( volatile Uint32* )( EDMA_BASE + 0x1010 )		// Event set register
#define EDMA_EMCR			*( volatile Uint32* )( EDMA_BASE + 0x0308 )		// Event miss clear register
#define EDMA_DRAE0			*( volatile Uint32* )( EDMA_BASE + 0x0340 )
#define EDMA_DRAEH0			*( volatile Uint32* )( EDMA_BASE + 0x0344 )
#define EDMA_DMAQNUM0			*( volatile Uint32* )( EDMA_BASE + 0x0240 )
#define EDMA_IPR			*( volatile Uint32* )( EDMA_BASE + 0x1068 )		// Interrupt pending register
#define EDMA_QCHMAP0			*( volatile Uint32* )( EDMA_BASE + 0x0200 )
#define EDMA_QEESR			*( volatile Uint32* )( EDMA_BASE + 0x108C )
#define EDMA_QEECR			*( volatile Uint32* )( EDMA_BASE + 0x1088 )
#define EDMA_EESR			*( volatile Uint32* )( EDMA_BASE + 0x1030 )


typedef 	struct EVMDM368_EDMA_param{				//Structure for PaRAM
		Uint32 opt;
		Uint32 src;
		Uint16 bcnt;
		Uint16 acnt;
		Uint32 dst;
		Uint16 sbidx;
		Uint16 dbidx;
		Uint16 brld;
		Uint16 link;
		Uint16 scidx;
		Uint16 dcidx;
		Uint16 res;
		Uint16 ccnt;
	} EVMDM368_EDMA_param;

#endif
