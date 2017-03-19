/*
 *  Copyright 2007 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  MDIO Header file
 *
 */

#ifndef MDIO_
#define MDIO_

#ifdef __cplusplus
extern "C" {
#endif

#include "dm368.h"

/* ------------------------------------------------------------------------ *
 *  MDIO Controller                                                         *
 * ------------------------------------------------------------------------ */
#define MDIO_BASE               0x01D0B000
#define MDIO_CONTROL            *( volatile Uint32* )( MDIO_BASE + 0x04 )
#define MDIO_ALIVE              *( volatile Uint32* )( MDIO_BASE + 0x08 )
#define MDIO_LINK               *( volatile Uint32* )( MDIO_BASE + 0x0c )
#define MDIO_LINKINTRAW         *( volatile Uint32* )( MDIO_BASE + 0x10 )
#define MDIO_LINKINTMASKED      *( volatile Uint32* )( MDIO_BASE + 0x14 )
#define MDIO_USERINTRAW         *( volatile Uint32* )( MDIO_BASE + 0x20 )
#define MDIO_USERINTMASKED      *( volatile Uint32* )( MDIO_BASE + 0x24 )
#define MDIO_USERINTMASKSET     *( volatile Uint32* )( MDIO_BASE + 0x28 )
#define MDIO_USERINTMASKCLEAR   *( volatile Uint32* )( MDIO_BASE + 0x2c )
#define MDIO_USERACCESS0        *( volatile Uint32* )( MDIO_BASE + 0x80 )
#define MDIO_USERPHYSEL0        *( volatile Uint32* )( MDIO_BASE + 0x84 )
#define MDIO_USERACCESS1        *( volatile Uint32* )( MDIO_BASE + 0x88 )
#define MDIO_USERPHYSEL1        *( volatile Uint32* )( MDIO_BASE + 0x8c )

#ifdef __cplusplus
}
#endif

#endif
