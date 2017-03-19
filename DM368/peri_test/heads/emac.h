/*
 *  Copyright 2007 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  EMAC Header file
 *
 */

#ifndef EMAC_
#define EMAC_

#ifdef __cplusplus
extern "C" {
#endif

#include "stdio.h"
#include "dm368.h"
#include "mdio.h"

/* ------------------------------------------------------------------------ *
 *  EMAC Modes                                                              *
 * ------------------------------------------------------------------------ */
#define MII_MODE                1000
#define RMII_MODE               2000

/* ------------------------------------------------------------------------ *
 *  EMAC Descriptor                                                         *
 * ------------------------------------------------------------------------ */
typedef struct _EMAC_Desc {
    struct _EMAC_Desc *pNext;   // Pointer to next descriptor
    Uint8* pBuffer;             // Pointer to data buffer
    Uint32 BufOffLen;           // Buffer Offset(MSW) and Length(LSW)
    Uint32 PktFlgLen;           // Packet Flags(MSW) and Length(LSW)
} EMAC_Desc;

/* ------------------------------------------------------------------------ *
 *  EMAC Controller                                                         *
 * ------------------------------------------------------------------------ */
#define EMAC_BASE               0x01D07000
#define EMAC_TXIDVER            *( volatile Uint32* )( EMAC_BASE + 0x000 )
#define EMAC_TXCONTROL          *( volatile Uint32* )( EMAC_BASE + 0x004 )
#define EMAC_TXTEARDOWN         *( volatile Uint32* )( EMAC_BASE + 0x008 )
#define EMAC_RXIDVER            *( volatile Uint32* )( EMAC_BASE + 0x010 )
#define EMAC_RXCONTROL          *( volatile Uint32* )( EMAC_BASE + 0x014 )
#define EMAC_RXTEARDOWN         *( volatile Uint32* )( EMAC_BASE + 0x018 )
#define EMAC_TXINTSTATRAW       *( volatile Uint32* )( EMAC_BASE + 0x080 )
#define EMAC_TXINTSTATMASKED    *( volatile Uint32* )( EMAC_BASE + 0x084 )
#define EMAC_TXINTMASKSET       *( volatile Uint32* )( EMAC_BASE + 0x088 )
#define EMAC_TXINTMASKCLEAR     *( volatile Uint32* )( EMAC_BASE + 0x08c )
#define EMAC_MACINVECTOR        *( volatile Uint32* )( EMAC_BASE + 0x090 )
#define EMAC_RXINTSTATRAW       *( volatile Uint32* )( EMAC_BASE + 0x0A0 )
#define EMAC_RXINTSTATMASKED    *( volatile Uint32* )( EMAC_BASE + 0x0A4 )
#define EMAC_RXINTMASKSET       *( volatile Uint32* )( EMAC_BASE + 0x0A8 )
#define EMAC_RXINTMASKCLEAR     *( volatile Uint32* )( EMAC_BASE + 0x0Ac )
#define EMAC_MACINTSTATRAW      *( volatile Uint32* )( EMAC_BASE + 0x0B0 )
#define EMAC_MACINTSTATMASKED   *( volatile Uint32* )( EMAC_BASE + 0x0B4 )
#define EMAC_MACINTMASKSET      *( volatile Uint32* )( EMAC_BASE + 0x0B8 )
#define EMAC_MACINTMASKCLEAR    *( volatile Uint32* )( EMAC_BASE + 0x0Bc )
#define EMAC_RXMBPENABLE        *( volatile Uint32* )( EMAC_BASE + 0x100 )
#define EMAC_RXUNICASTSET       *( volatile Uint32* )( EMAC_BASE + 0x104 )
#define EMAC_RXUNICASTCLEAR     *( volatile Uint32* )( EMAC_BASE + 0x108 )
#define EMAC_RXMAXLEN           *( volatile Uint32* )( EMAC_BASE + 0x10c )
#define EMAC_RXBUFFEROFFSET     *( volatile Uint32* )( EMAC_BASE + 0x110 )
#define EMAC_RXFILTERLOWTHRESH  *( volatile Uint32* )( EMAC_BASE + 0x114 )
#define EMAC_RX0FLOWTHRESH      *( volatile Uint32* )( EMAC_BASE + 0x120 )
#define EMAC_RX1FLOWTHRESH      *( volatile Uint32* )( EMAC_BASE + 0x124 )
#define EMAC_RX2FLOWTHRESH      *( volatile Uint32* )( EMAC_BASE + 0x128 )
#define EMAC_RX3FLOWTHRESH      *( volatile Uint32* )( EMAC_BASE + 0x12c )
#define EMAC_RX4FLOWTHRESH      *( volatile Uint32* )( EMAC_BASE + 0x130 )
#define EMAC_RX5FLOWTHRESH      *( volatile Uint32* )( EMAC_BASE + 0x134 )
#define EMAC_RX6FLOWTHRESH      *( volatile Uint32* )( EMAC_BASE + 0x138 )
#define EMAC_RX7FLOWTHRESH      *( volatile Uint32* )( EMAC_BASE + 0x13c )
#define EMAC_RX0FREEBUFFER      *( volatile Uint32* )( EMAC_BASE + 0x140 )
#define EMAC_RX1FREEBUFFER      *( volatile Uint32* )( EMAC_BASE + 0x144 )
#define EMAC_RX2FREEBUFFER      *( volatile Uint32* )( EMAC_BASE + 0x148 )
#define EMAC_RX3FREEBUFFER      *( volatile Uint32* )( EMAC_BASE + 0x14c )
#define EMAC_RX4FREEBUFFER      *( volatile Uint32* )( EMAC_BASE + 0x150 )
#define EMAC_RX5FREEBUFFER      *( volatile Uint32* )( EMAC_BASE + 0x154 )
#define EMAC_RX6FREEBUFFER      *( volatile Uint32* )( EMAC_BASE + 0x158 )
#define EMAC_RX7FREEBUFFER      *( volatile Uint32* )( EMAC_BASE + 0x15c )
#define EMAC_MACCONTROL         *( volatile Uint32* )( EMAC_BASE + 0x160 )
#define EMAC_MACSTATUS          *( volatile Uint32* )( EMAC_BASE + 0x164 )
#define EMAC_EMCONTROL          *( volatile Uint32* )( EMAC_BASE + 0x168 )
#define EMAC_FIFOCONTROL        *( volatile Uint32* )( EMAC_BASE + 0x16c )
#define EMAC_MACCONFIG          *( volatile Uint32* )( EMAC_BASE + 0x170 )
#define EMAC_SOFTRESET          *( volatile Uint32* )( EMAC_BASE + 0x174 )
#define EMAC_MACSRCADDRLO       *( volatile Uint32* )( EMAC_BASE + 0x1d0 )
#define EMAC_MACSRCADDRHI       *( volatile Uint32* )( EMAC_BASE + 0x1d4 )
#define EMAC_MACHASH1           *( volatile Uint32* )( EMAC_BASE + 0x1d8 )
#define EMAC_MACHASH2           *( volatile Uint32* )( EMAC_BASE + 0x1dc )
#define EMAC_BOFFTEST           *( volatile Uint32* )( EMAC_BASE + 0x1e0 )
#define EMAC_TPACETEST          *( volatile Uint32* )( EMAC_BASE + 0x1e4 )
#define EMAC_RXPAUSE            *( volatile Uint32* )( EMAC_BASE + 0x1e8 )
#define EMAC_TXPAUSE            *( volatile Uint32* )( EMAC_BASE + 0x1ec )
#define EMAC_MACADDRLO          *( volatile Uint32* )( EMAC_BASE + 0x500 )
#define EMAC_MACADDRHI          *( volatile Uint32* )( EMAC_BASE + 0x504 )
#define EMAC_MACINDEX           *( volatile Uint32* )( EMAC_BASE + 0x508 )
#define EMAC_TX0HDP             *( volatile Uint32* )( EMAC_BASE + 0x600 )
#define EMAC_TX1HDP             *( volatile Uint32* )( EMAC_BASE + 0x604 )
#define EMAC_TX2HDP             *( volatile Uint32* )( EMAC_BASE + 0x608 )
#define EMAC_TX3HDP             *( volatile Uint32* )( EMAC_BASE + 0x60c )
#define EMAC_TX4HDP             *( volatile Uint32* )( EMAC_BASE + 0x610 )
#define EMAC_TX5HDP             *( volatile Uint32* )( EMAC_BASE + 0x614 )
#define EMAC_TX6HDP             *( volatile Uint32* )( EMAC_BASE + 0x618 )
#define EMAC_TX7HDP             *( volatile Uint32* )( EMAC_BASE + 0x61c )
#define EMAC_RX0HDP             *( volatile Uint32* )( EMAC_BASE + 0x620 )
#define EMAC_RX1HDP             *( volatile Uint32* )( EMAC_BASE + 0x624 )
#define EMAC_RX2HDP             *( volatile Uint32* )( EMAC_BASE + 0x628 )
#define EMAC_RX3HDP             *( volatile Uint32* )( EMAC_BASE + 0x62c )
#define EMAC_RX4HDP             *( volatile Uint32* )( EMAC_BASE + 0x630 )
#define EMAC_RX5HDP             *( volatile Uint32* )( EMAC_BASE + 0x634 )
#define EMAC_RX6HDP             *( volatile Uint32* )( EMAC_BASE + 0x638 )
#define EMAC_RX7HDP             *( volatile Uint32* )( EMAC_BASE + 0x63c )
#define EMAC_TX0CP              *( volatile Uint32* )( EMAC_BASE + 0x640 )
#define EMAC_TX1CP              *( volatile Uint32* )( EMAC_BASE + 0x644 )
#define EMAC_TX2CP              *( volatile Uint32* )( EMAC_BASE + 0x648 )
#define EMAC_TX3CP              *( volatile Uint32* )( EMAC_BASE + 0x64c )
#define EMAC_TX4CP              *( volatile Uint32* )( EMAC_BASE + 0x650 )
#define EMAC_TX5CP              *( volatile Uint32* )( EMAC_BASE + 0x654 )
#define EMAC_TX6CP              *( volatile Uint32* )( EMAC_BASE + 0x658 )
#define EMAC_TX7CP              *( volatile Uint32* )( EMAC_BASE + 0x65c )
#define EMAC_RX0CP              *( volatile Uint32* )( EMAC_BASE + 0x660 )
#define EMAC_RX1CP              *( volatile Uint32* )( EMAC_BASE + 0x664 )
#define EMAC_RX2CP              *( volatile Uint32* )( EMAC_BASE + 0x668 )
#define EMAC_RX3CP              *( volatile Uint32* )( EMAC_BASE + 0x66c )
#define EMAC_RX4CP              *( volatile Uint32* )( EMAC_BASE + 0x670 )
#define EMAC_RX5CP              *( volatile Uint32* )( EMAC_BASE + 0x674 )
#define EMAC_RX6CP              *( volatile Uint32* )( EMAC_BASE + 0x678 )
#define EMAC_RX7CP              *( volatile Uint32* )( EMAC_BASE + 0x67c )
#define EMAC_RXGOODFRAMES       *( volatile Uint32* )( EMAC_BASE + 0x200 )
#define EMAC_RXBCASTFRAMES      *( volatile Uint32* )( EMAC_BASE + 0x204 )
#define EMAC_RXMCASTFRAMES      *( volatile Uint32* )( EMAC_BASE + 0x208 )
#define EMAC_RXPAUSEFRAMES      *( volatile Uint32* )( EMAC_BASE + 0x20c )
#define EMAC_RXCRCERRORS        *( volatile Uint32* )( EMAC_BASE + 0x210 )
#define EMAC_RXALIGNCODEERRORS  *( volatile Uint32* )( EMAC_BASE + 0x214 )
#define EMAC_RXOVERSIZED        *( volatile Uint32* )( EMAC_BASE + 0x218 )
#define EMAC_RXJABBER           *( volatile Uint32* )( EMAC_BASE + 0x21c )
#define EMAC_RXUNDERSIZED       *( volatile Uint32* )( EMAC_BASE + 0x220 )
#define EMAC_RXFRAGMENTS        *( volatile Uint32* )( EMAC_BASE + 0x224 )
#define EMAC_RXFILTERED         *( volatile Uint32* )( EMAC_BASE + 0x228 )
#define EMAC_RXQOSFILTERED      *( volatile Uint32* )( EMAC_BASE + 0x22c )
#define EMAC_RXOCTETS           *( volatile Uint32* )( EMAC_BASE + 0x230 )
#define EMAC_TXGOODFRAMES       *( volatile Uint32* )( EMAC_BASE + 0x234 )
#define EMAC_TXBCASTFRAMES      *( volatile Uint32* )( EMAC_BASE + 0x238 )
#define EMAC_TXMCASTFRAMES      *( volatile Uint32* )( EMAC_BASE + 0x23c )
#define EMAC_TXPAUSEFRAMES      *( volatile Uint32* )( EMAC_BASE + 0x240 )
#define EMAC_TXDEFERRED         *( volatile Uint32* )( EMAC_BASE + 0x244 )
#define EMAC_TXCOLLISION        *( volatile Uint32* )( EMAC_BASE + 0x248 )
#define EMAC_TXSINGLECOLL       *( volatile Uint32* )( EMAC_BASE + 0x24c )
#define EMAC_TXMULTICOLL        *( volatile Uint32* )( EMAC_BASE + 0x250 )
#define EMAC_TXEXCESSIVECOLL    *( volatile Uint32* )( EMAC_BASE + 0x254 )
#define EMAC_TXLATECOLL         *( volatile Uint32* )( EMAC_BASE + 0x258 )
#define EMAC_TXUNDERRUN         *( volatile Uint32* )( EMAC_BASE + 0x25c )
#define EMAC_TXCARRIERSENSE     *( volatile Uint32* )( EMAC_BASE + 0x260 )
#define EMAC_TXOCTETS           *( volatile Uint32* )( EMAC_BASE + 0x264 )
#define EMAC_FRAME64            *( volatile Uint32* )( EMAC_BASE + 0x268 )
#define EMAC_FRAME65T127        *( volatile Uint32* )( EMAC_BASE + 0x26c )
#define EMAC_FRAME128T255       *( volatile Uint32* )( EMAC_BASE + 0x270 )
#define EMAC_FRAME256T511       *( volatile Uint32* )( EMAC_BASE + 0x274 )
#define EMAC_FRAME512T1023      *( volatile Uint32* )( EMAC_BASE + 0x278 )
#define EMAC_FRAME1024TUP       *( volatile Uint32* )( EMAC_BASE + 0x27c )
#define EMAC_NETOCTETS          *( volatile Uint32* )( EMAC_BASE + 0x280 )
#define EMAC_RXSOFOVERRUNS      *( volatile Uint32* )( EMAC_BASE + 0x284 )
#define EMAC_RXMOFOVERRUNS      *( volatile Uint32* )( EMAC_BASE + 0x288 )
#define EMAC_RXDMAOVERRUNS      *( volatile Uint32* )( EMAC_BASE + 0x28c )

/* EMAC Wrapper */
#define EMAC_CMSOFTRESET        *( volatile Uint32* )( EMAC_BASE + 0x3004 )
#define EMAC_CMEMCONTROL        *( volatile Uint32* )( EMAC_BASE + 0x3008 )
#define EMAC_CMRXTHRESHINTEN    *( volatile Uint32* )( EMAC_BASE + 0x3010 )
#define EMAC_CMRXINTEN          *( volatile Uint32* )( EMAC_BASE + 0x3014 )
#define EMAC_CMTXINTEN          *( volatile Uint32* )( EMAC_BASE + 0x3018 )
#define EMAC_CMMISCINTEN        *( volatile Uint32* )( EMAC_BASE + 0x301C )

/* EMAC RAM */
#define EMAC_RAM_BASE           0x01D08000
#define EMAC_RAM_LEN            0x00002000

/* Packet Flags */
#define EMAC_DSC_FLAG_SOP               0x80000000
#define EMAC_DSC_FLAG_EOP               0x40000000
#define EMAC_DSC_FLAG_OWNER             0x20000000
#define EMAC_DSC_FLAG_EOQ               0x10000000
#define EMAC_DSC_FLAG_TDOWNCMPLT        0x08000000
#define EMAC_DSC_FLAG_PASSCRC           0x04000000

/* The following flags are RX only */
#define EMAC_DSC_FLAG_JABBER            0x02000000
#define EMAC_DSC_FLAG_OVERSIZE          0x01000000
#define EMAC_DSC_FLAG_FRAGMENT          0x00800000
#define EMAC_DSC_FLAG_UNDERSIZED        0x00400000
#define EMAC_DSC_FLAG_CONTROL           0x00200000
#define EMAC_DSC_FLAG_OVERRUN           0x00100000
#define EMAC_DSC_FLAG_CODEERROR         0x00080000
#define EMAC_DSC_FLAG_ALIGNERROR        0x00040000
#define EMAC_DSC_FLAG_CRCERROR          0x00020000
#define EMAC_DSC_FLAG_NOMATCH           0x00010000

/* Interrupts */
#define EMAC_MACINVECTOR_USERINT        0x01000000
#define EMAC_MACINVECTOR_LINKINT        0x02000000
#define EMAC_MACINVECTOR_HOSTPEND       0x04000000
#define EMAC_MACINVECTOR_STATPEND       0x08000000
#define EMAC_MACINVECTOR_RXPEND         0x000000FF
#define EMAC_MACINVECTOR_TXPEND         0x001F0000

#ifdef __cplusplus
}
#endif

#endif
