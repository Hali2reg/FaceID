/*
 *  Copyright 2007 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  I2C header file
 *
 */

#ifndef I2C_
#define I2C_

#include "dm368.h"


/* ------------------------------------------------------------------------ *
 *  Prototypes                                                              *
 * ------------------------------------------------------------------------ */
Int16 dm368_i2c_init ( );
Int16 dm368_i2c_close( );
Int16 dm368_i2c_write( Uint16 i2c_addr, Uint8* data, Uint16 len );
Int16 dm368_i2c_read ( Uint16 i2c_addr, Uint8* data, Uint16 len );

#endif
