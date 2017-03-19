/*
 *  Copyright 2008 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  I2C EEPROM Header file [32 Kbytes - 24WC256]
 *
 */

#ifndef EEPROM_
#define EEPROM_

#ifdef __cplusplus
extern "C" {
#endif

#include "dm368_i2c.h"

/* ------------------------------------------------------------------------ *
 *  I2C Address                                                             *
 * ------------------------------------------------------------------------ */
#define EEPROM_I2C_ADDR             0x50

/* ------------------------------------------------------------------------ *
 *  EEPROM Memory Settings                                                  *
 * ------------------------------------------------------------------------ */
#define EEPROM_PAGE_SIZE            64
#define EEPROM_PAGE_SIZE_POW2       6
#define EEPROM_MAX_BURST_LEN        EEPROM_PAGE_SIZE

/* ------------------------------------------------------------------------ *
 *  Prototypes                                                              *
 * ------------------------------------------------------------------------ */
Int16 dm368_eeprom_init();
Int16 dm368_eeprom_read(Uint32 src, Uint32 dst, Uint32 length);
Int16 dm368_eeprom_write(Uint32 src, Uint32 dst, Uint32 length);

#ifdef __cplusplus
}
#endif

#endif
