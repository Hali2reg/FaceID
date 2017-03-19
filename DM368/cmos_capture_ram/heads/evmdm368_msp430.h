/*
 *  Copyright 2007 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  MSP430 header file
 *
 */

#ifndef MSP430_
#define MSP430_

#include "evmdm368_i2c.h"

/* ------------------------------------------------------------------------ *
 *  I2C Address                                                             *
 * ------------------------------------------------------------------------ */
#define MSP430_I2CADDR          0x25


/* ------------------------------------------------------------------------ *
 *  Prototypes                                                              *
 * ------------------------------------------------------------------------ */
/* Open/Close MSP430 */
Int16 EVMDM368_MSP430_init( );
Int16 EVMDM368_MSP430_getReg(Int16 reg, Uint16 *regval);
Int16 EVMDM368_MSP430_setReg(Int16 reg, Uint16 regval);

#endif
