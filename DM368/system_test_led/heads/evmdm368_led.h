/*
 *  Copyright 2007 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  LED header file
 *
 */

#ifndef LED_
#define LED_

#include "evmdm368_msp430.h"

/* ------------------------------------------------------------------------ *
 *  Prototypes                                                              *
 * ------------------------------------------------------------------------ */
Int16 EVMDM368_LED_init  ( );
Int16 EVMDM368_LED_on    ( Uint16 num );
Int16 EVMDM368_LED_off   ( Uint16 num );
Int16 EVMDM368_LED_toggle( Uint16 num );
Int16 EVMDM368_LED_getall( Uint16 *pattern );
Int16 EVMDM368_LED_setall( Uint16 pattern );

#endif
