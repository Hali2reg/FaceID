
/*******************************************************************************
********************************************************************************
* FILE         : dm368_psc.h
* Description  : 
*			  
* Copyright (c) 2016 by Harley. All Rights Reserved.
* 
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2016/12/19	      Initial Version
   
********************************************************************************
*******************************************************************************/

/*
 *  PSC header file
 *
 */

#ifndef PSC_
#define PSC_

#include "dm368.h"

/* ------------------------------------------------------------------------ *
 *  PSC states                                                              *
 * ------------------------------------------------------------------------ */
#define PSC_SWRSTDISABLE    0
#define PSC_SYNCRESET       1
#define PSC_DISABLE         2
#define PSC_ENABLE          3

/* ------------------------------------------------------------------------ *
 *  Prototypes                                                              *
 * ------------------------------------------------------------------------ */
Int16 dm368_psc_init();
Int16 dm368_psc_enableAll();
Int16 dm368_psc_changeState( Uint8 id, Uint8 state );

#define EVMDM368_enableAllPowerModules dm368_psc_enableAll

#endif
