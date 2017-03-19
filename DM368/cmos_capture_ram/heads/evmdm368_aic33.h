/*
 *  Copyright 2007 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  AIC33 header file
 *
 */

#ifndef AIC33_
#define AIC33_

#include "evmdm368_i2c.h"


#define MCBSP_INTERFACE         0x1000

/* ------------------------------------------------------------------------ *
 *  AIC33 Definitions                                                       *
 * ------------------------------------------------------------------------ */

#define AIC33_I2C_ADDR          0x1B    // I2C address

#define AIC33_NUMREGS           102     // Register
#define AIC33_PAGESELECT        0
#define AIC33_RESET             1

#define READONLY                0xAA00
#define RESERVED                0xFFFF

/* ------------------------------------------------------------------------ *
 *  AIC33 Data Structures                                                   *
 * ------------------------------------------------------------------------ */
typedef Int16 AIC33_CodecHandle;        // Codec Handle

typedef struct {                        // Register structure
    Uint16 regs[AIC33_NUMREGS];
} AIC33_Config;

/* ------------------------------------------------------------------------ *
 *  Prototypes                                                              *
 * ------------------------------------------------------------------------ */
/* Open/Close codec */
AIC33_CodecHandle
      EVMDM368_AIC33_openCodec ( Uint32 id, AIC33_Config *Config );
Int16 EVMDM368_AIC33_closeCodec( AIC33_CodecHandle aic33handle );

/* Get/Set registers */
Int16 EVMDM368_AIC33_rget     ( AIC33_CodecHandle aic33handle, Uint16 regnum, Uint16* regval );
Int16 EVMDM368_AIC33_rset     ( AIC33_CodecHandle aic33handle, Uint16 regnum, Uint16 regval );
Int16 EVMDM368_AIC33_rset_mask( AIC33_CodecHandle aic33handle, Uint16 regnum, Uint16 regval, Uint8 mask );
Int16 EVMDM368_AIC33_config   ( AIC33_CodecHandle aic33handle, AIC33_Config *Config );

/* Read/Write 16-bit or 32-bit data */
Int16 EVMDM368_AIC33_read16   ( AIC33_CodecHandle aic33handle, Int16 *val );
Int16 EVMDM368_AIC33_read32   ( AIC33_CodecHandle aic33handle, Int32 *val );
Int16 EVMDM368_AIC33_write16  ( AIC33_CodecHandle aic33handle, Int16 val );
Int16 EVMDM368_AIC33_write32  ( AIC33_CodecHandle aic33handle, Int32 val );

/* Special functions */
void EVMDM368_AIC33_mute      ( AIC33_CodecHandle aic33handle, Uint16 mode );

#endif
