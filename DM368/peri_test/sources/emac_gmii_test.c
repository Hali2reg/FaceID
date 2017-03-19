/*
 *  Copyright 2007 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  EMAC Test ( GMII mode )
 *
 */

#include "emac.h"
#include "string.h"

#define TX_BUF    128
#define RX_BUF    128

static Uint8 packet_data[TX_BUF];

static Uint8 packet_buffer1[RX_BUF];
static Uint8 packet_buffer2[RX_BUF];
static Uint8 packet_buffer3[RX_BUF];
static Uint8 packet_buffer4[RX_BUF];
static Uint8 packet_buffer5[RX_BUF];
static Uint8 packet_buffer6[RX_BUF];
static Uint8 packet_buffer7[RX_BUF];
static Uint8 packet_buffer8[RX_BUF];
static Uint8 packet_buffer9[RX_BUF];
static Uint8 packet_buffer10[RX_BUF];

/*
 *  We use pDescBase for a base address. Its easier this way
 *  because we can use indexing off the pointer.
 */
static EMAC_Desc* pDescBase = ( EMAC_Desc* )EMAC_RAM_BASE;

/*
 *  The following are used to allow the ISR to communicate with
 *  the application.
 */
extern volatile Int32 RxCount;
extern volatile Int32 TxCount;
extern volatile Int32 ErrCount;
extern volatile EMAC_Desc *pDescRx;
extern volatile EMAC_Desc *pDescTx;
extern EMAC_isr( );
/* ------------------------------------------------------------------------ *
 *  gmii_phy_getReg( phynum, regnum )                                       *
 * ------------------------------------------------------------------------ */
Uint16 gmii_phy_getReg( Int16 phynum, Int16 regnum )
{
    Uint16 value;

    MDIO_USERACCESS0 = 0                    // Read Phy Id 1
        | ( 1 << 31 )                       // [31] Go
        | ( 0 << 30 )                       // [30] Read
        | ( 0 << 29 )                       // [29] Ack
        | ( regnum << 21 )                  // [25-21] PHY register address
        | ( phynum << 16 )                  // [20-16] PHY address
        | ( 0 << 0 );                       // [15-0] Data

    while( MDIO_USERACCESS0 & 0x80000000 ); // Wait for Results

    value = MDIO_USERACCESS0;
    return value;
}

/* ------------------------------------------------------------------------ *
 *  gmii_phy_setReg( phynum, regnum, data )                                 *
 * ------------------------------------------------------------------------ */
void gmii_phy_setReg( Int16 phynum, Int16 regnum, Uint16 data )
{
    MDIO_USERACCESS0 = 0                    // Read Phy Id 1
        | ( 1 << 31 )                       // [31] Go
        | ( 1 << 30 )                       // [30] Write
        | ( 0 << 29 )                       // [29] Ack
        | ( regnum << 21 )                  // [25-21] PHY register address
        | ( phynum << 16 )                  // [20-16] PHY address
        | ( data << 0 );                    // [15-0] Data

    while( MDIO_USERACCESS0 & 0x80000000 ); // Wait for Results
    dm368_waitusec( 1000 );
}

/* ------------------------------------------------------------------------ *
 *  gmii_phy_dumpRegs( )                                                    *
 * ------------------------------------------------------------------------ */
void gmii_phy_dumpRegs( )
{
    Int16 i;
    for ( i = 0 ; i < 32 ; i++ )
        printf( "PHY[%d] = %04x\n", i, gmii_phy_getReg( 1, i ) );

    printf( "\n\n" );
}

/* ------------------------------------------------------------------------ *
 *  emac_gmii_init( )                                                       *
 * ------------------------------------------------------------------------ */
Int16 emac_gmii_init( )
{
    Int16 i;
    volatile Uint32* pReg;

    /* 0. Reset Ethernet */
    EMAC_SOFTRESET = 1;
    while( EMAC_SOFTRESET != 0 );
    dm368_waitusec( 100 );

    /* ---------------------------------------------------------------- *
     *  Init PHY / MDIO                                                 *
     * ---------------------------------------------------------------- */
    MDIO_CONTROL = 0x40000020;              // Enable MII interface ( MDIOCLK < 12.5MHz )
    dm368_waitusec( 100000 );

    gmii_phy_setReg( 1,  0, 0xc140 );       // Force 1000mpbs, full duplex
    gmii_phy_setReg( 1, 28, 0x74f0 );       // Enable LINK LED for link, RXTX LED for TX/RX activity
    gmii_phy_setReg( 1, 22, 0x1012 );       // Enable SYS_CLK / GMII ( GTX_CLK )

    printf( "    In GMII mode\n" );

    /* Reset Ethernet */
    EMAC_SOFTRESET = 1;
    while( EMAC_SOFTRESET != 0 );
    dm368_waitusec( 100 );

    MDIO_CONTROL = 0x40000020;              // Enable MII interface ( MDIOCLK < 12.5MHz )
    dm368_waitusec( 100000 );

    /* Gigabit PHY external cable loopback */
    gmii_phy_setReg( 1, 19, 0x0080 );       // Enable cable loopback
    gmii_phy_setReg( 1,  0, 0x0140 );       // Force 1000mbps, full duplex

    /* Wait for link */
    printf( "    Waiting for link...\n" );
    while( ( gmii_phy_getReg( 1, 1 ) & 0x04 ) == 0 );
    printf( "    Link Detected\n" );

   //gmii_phy_dumpRegs( );

    /* ---------------------------------------------------------------- *
     *  Init EMAC                                                       *
     * ---------------------------------------------------------------- */
    /* 1. Disable RX/TX interrupts */
//    EMAC_EWRXEN = 0x00000000;
 //   EMAC_EWTXEN = 0x00000000;
    EMAC_CMRXINTEN = 0x00000000;
    EMAC_CMTXINTEN = 0x00000000;
    /* 2. Clear the MAC control, receive control, & transmit control */
    EMAC_MACCONTROL = 0;
    EMAC_RXCONTROL = 0;
    EMAC_TXCONTROL = 0;

    /* 3. Initialize all 16 header descriptor pointers RXnHDP & TXnHDP to zero */
    EMAC_RX0HDP = 0;
	EMAC_RX1HDP = 0;
	EMAC_RX2HDP = 0;
	EMAC_RX3HDP = 0;
	EMAC_RX4HDP = 0;
	EMAC_RX5HDP = 0;
	EMAC_RX6HDP = 0;
	EMAC_RX7HDP = 0;

    EMAC_TX0HDP = 0;
	EMAC_TX1HDP = 0;
	EMAC_TX2HDP = 0;
	EMAC_TX3HDP = 0;
	EMAC_TX4HDP = 0;
	EMAC_TX5HDP = 0;
	EMAC_TX6HDP = 0;
	EMAC_TX7HDP = 0;

    /* 4. Clear all 36 statistics registers by writing 0 */
    pReg = &EMAC_RXGOODFRAMES;
    for ( i = 0 ; i < 36 ; i++ )
        *pReg++ = 0;

    /* 5. Setup the local Ethernet MAC address.  Be sure to program all 8 MAC addresses */
    EMAC_MACINDEX  = 0x00;
    EMAC_MACADDRHI = 0x03020100;    // Needs to be written only the first time
    EMAC_MACADDRLO = 0x0504;

    EMAC_MACINDEX  = 0x01;
    EMAC_MACADDRLO = 0x1504;

    EMAC_MACINDEX  = 0x02;
    EMAC_MACADDRLO = 0x2504;

    EMAC_MACINDEX  = 0x03;
    EMAC_MACADDRLO = 0x3504;

    EMAC_MACINDEX  = 0x04;
    EMAC_MACADDRLO = 0x4504;

    EMAC_MACINDEX  = 0x05;
    EMAC_MACADDRLO = 0x5504;

    EMAC_MACINDEX  = 0x06;
    EMAC_MACADDRLO = 0x6504;

    EMAC_MACINDEX  = 0x07;
    EMAC_MACADDRLO = 0x7504;

    /* 6. Initialize the receive channel N */

    /* 7. No multicast addressing */
    EMAC_MACHASH1 = 0;
    EMAC_MACHASH2 = 0;

    /* 8. Set RX buffer offset to 0.  Valid data always begins on the 1st byte */
    EMAC_RXBUFFEROFFSET = 0;

    /* 9. Enable Unicast RX on channel 0-7 */
    EMAC_RXUNICASTSET = 0xFF;

    /* 10. Setup the RX( M )ulticast ( B )roadcast ( P )romiscuous channel */
    /* Enable multi-cast, broadcast and frames with errors */
    EMAC_RXMBPENABLE = 0x01e02020;

    /* 11. Set the appropriate configuration bits in MACCONTROL (do not set the GMIIEN bit yet). */
    EMAC_MACCONTROL = 0
        | ( 0 << 9 )            // Round robin
        | ( 1 << 7 )            // Gigabit mode
        | ( 0 << 6 )            // TX pacing disabled
        | ( 0 << 5 )            // GMII RX & TX
        | ( 0 << 4 )            // TX flow disabled
        | ( 0 << 3 )            // RX flow disabled
        | ( 0 << 1 )            // Loopback disabled
        | ( 1 << 0 );           // full duplex

    /* 12. Clear all unused channel interrupt bits */
    EMAC_RXINTMASKCLEAR = 0xFF;
    EMAC_TXINTMASKCLEAR = 0xFF;

    /* 13. Enable the RX & TX channel interrupt bits. */
    EMAC_RXINTMASKSET = 0xFF;
    EMAC_TXINTMASKSET = 0xFF;

    /* Enable Host Error and Statistics interrupts */
    EMAC_MACINTMASKSET = 0
        | ( 1 << 1 )            // Host Error interrupt mask
        | ( 1 << 0 );           // Statistics interrupt mask

    /* 14. Initialize the receive and transmit descriptor list queues. */

    /* 15. Prepare receive by writing a pointer to the head of the receive buffer descriptor list to RXnHDP. */
    EMAC_MACSRCADDRLO = 0x03020100;   /* bytes 0, 1 */
    EMAC_MACSRCADDRHI = 0x0405;       /* bytes 2-5 - channel 0 ??? */

    /* 16. Enable the RX & TX DMA controllers. Then set GMIIEN */
    EMAC_RXCONTROL = 1;
    EMAC_TXCONTROL = 1;
    EMAC_MACCONTROL |= ( 1 << 5 );

    /* 17. Enable the device interrupt wrapper, emulation free mode */
//    EMAC_EWEMCONTROL = 0x00000002; // Emulation free
//    EMAC_EWRXEN      = 0x00000001; // Enable receive interrupts on channel 0
 //   EMAC_EWTXEN      = 0x00000001; // Enable transmit interrupts on channel 0
    EMAC_CMEMCONTROL = 0x00000002;
    EMAC_CMRXINTEN = 0x00000001;
    EMAC_CMTXINTEN = 0x00000001;

    return 0;
}

/* ------------------------------------------------------------------------ *
 *  verify_packet                                                           *
 * ------------------------------------------------------------------------ */
static Int16 verify_packet( EMAC_Desc* pDesc, Uint32 size, Uint32 flagCRC )
{
    Int16 i;
    Uint32 SizeCRC      = ( flagCRC ) ? size + 4 : size;
    Uint32 packet_flags = pDesc->PktFlgLen;

    /* We must own this packet */
    if ( packet_flags & EMAC_DSC_FLAG_OWNER )
        return 1;

    /* Must be SOP and EOP */
    if ( ( packet_flags & ( EMAC_DSC_FLAG_SOP | EMAC_DSC_FLAG_EOP ) )
                       != ( EMAC_DSC_FLAG_SOP | EMAC_DSC_FLAG_EOP ) )
        return 2;


    /* If flagCRC is set, it must have a CRC */
    if ( flagCRC )
        if ( ( packet_flags & EMAC_DSC_FLAG_PASSCRC ) != EMAC_DSC_FLAG_PASSCRC )
            return 3;

    /* Packet must be correct size */
    if ( ( packet_flags & 0xFFFF ) != SizeCRC )
        return 5;

    /* Offset must be zero, packet size unchanged */
    if ( pDesc->BufOffLen != SizeCRC )
        return 6;

    /* Validate the data */
    for ( i = 0 ; i < size ; i++ )
        if ( pDesc->pBuffer[i] != i )
            return 7;

    return 0;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  test_gmii_packet( )                                                     *
 *      EMAC tests to send data to external loopback cable.                 *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 test_gmii_packet( )
{
    Int32 i;
    Int16 errors = 0;
    Uint32 status;

    Int32 emac_timeout = 0x100000;
    Int32 timeout;
    EMAC_Desc* pDesc;

    /* ---------------------------------------------------------------- *
     *  Setup EMAC for GMII mode                                        *
     * ---------------------------------------------------------------- */
  //emac_gmii_init( );

    memset( packet_buffer1, 0xcc, 64 );
    memset( packet_buffer2, 0xcc, 64 );

    /* ---------------------------------------------------------------- *
     *                                                                  *
     *  Setup RX packets                                                *
     *                                                                  *
     * ---------------------------------------------------------------- */
    pDesc            = pDescBase;
    pDesc->pNext     = pDescBase + 1;
    pDesc->pBuffer   = packet_buffer1;
    pDesc->BufOffLen = RX_BUF;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER;

    pDesc            = pDescBase + 1;
    pDesc->pNext     = pDescBase + 2;
    pDesc->pBuffer   = packet_buffer2;
    pDesc->BufOffLen = RX_BUF;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER;

    pDesc            = pDescBase + 2;
    pDesc->pNext     = pDescBase + 3;
    pDesc->pBuffer   = packet_buffer3;
    pDesc->BufOffLen = RX_BUF;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER;

    pDesc            = pDescBase + 3;
    pDesc->pNext     = pDescBase + 4;
    pDesc->pBuffer   = packet_buffer4;
    pDesc->BufOffLen = RX_BUF;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER;

    pDesc            = pDescBase + 4;
    pDesc->pNext     = pDescBase + 5;
    pDesc->pBuffer   = packet_buffer5;
    pDesc->BufOffLen = RX_BUF;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER;

    pDesc            = pDescBase + 5;
    pDesc->pNext     = pDescBase + 6;
    pDesc->pBuffer   = packet_buffer6;
    pDesc->BufOffLen = RX_BUF;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER;

    pDesc            = pDescBase + 6;
    pDesc->pNext     = pDescBase + 7;
    pDesc->pBuffer   = packet_buffer7;
    pDesc->BufOffLen = RX_BUF;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER;

    pDesc            = pDescBase + 7;
    pDesc->pNext     = pDescBase + 8;
    pDesc->pBuffer   = packet_buffer8;
    pDesc->BufOffLen = RX_BUF;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER;

    pDesc            = pDescBase + 8;
    pDesc->pNext     = pDescBase + 9;
    pDesc->pBuffer   = packet_buffer9;
    pDesc->BufOffLen = RX_BUF;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER;

    pDesc            = pDescBase + 9;
    pDesc->pNext     = 0;
    pDesc->pBuffer   = packet_buffer10;
    pDesc->BufOffLen = RX_BUF;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER;

    /*
     *  Start RX receiving
     */
    pDescRx = pDescBase;
    EMAC_RX0HDP = ( Uint32 )pDescRx;

    /* ---------------------------------------------------------------- *
     *                                                                  *
     *  Setup TX packets                                                *
     *      Send 2 copies of the same packet using different sizes      *
     *                                                                  *
     * ---------------------------------------------------------------- */
    for ( i = 0 ; i < TX_BUF ; i++ )
        packet_data[i] = i;

    pDesc            = pDescBase + 10;
    pDesc->pNext     = pDescBase + 11;
    pDesc->pBuffer   = packet_data;
    pDesc->BufOffLen = 60;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER
                     | EMAC_DSC_FLAG_SOP
                     | EMAC_DSC_FLAG_EOP
                     | 60;

    pDesc            = pDescBase + 11;
    pDesc->pNext     = 0;
    pDesc->pBuffer   = packet_data;
    pDesc->BufOffLen = TX_BUF;
    pDesc->PktFlgLen = EMAC_DSC_FLAG_OWNER
                     | EMAC_DSC_FLAG_SOP
                     | EMAC_DSC_FLAG_EOP
                     | TX_BUF;

    /*
     *  Start TX sending
     */
    TxCount = 0;
    RxCount = 0;
    pDescTx = pDescBase + 10;
    EMAC_TX0HDP = ( Uint32 )pDescTx;

    /* ---------------------------------------------------------------- *
     *                                                                  *
     *  Normally there would be a interrupt to service the EMAC RX/TX   *
     *  transmission.  Instead a short pause and manually call the ISR  *
     *  Interrupt Service Routine to check on the status.               *
     *                                                                  *
     *  You can later add in the ISR and the code to support.           *
     *                                                                  *
     * ---------------------------------------------------------------- */

    /* Busy period */
    dm368_waitusec( 100000 );

    /* Manually check ISR, if using interrupts this will be done automatically */
    EMAC_isr( );

    /* Exactly 2 TX packets are sent & received */
    timeout = emac_timeout;

  //gmii_phy_dumpRegs();
    while ( ( TxCount != 2 ) || ( RxCount != 2 ) )
    {
        if ( ErrCount )
            errors++;
        if ( timeout-- < 0 )
            break;
    }

    if ( ( timeout == 0 ) || ( errors != 0 ) )
        return 1000;

    /* ---------------------------------------------------------------- *
     *  Check packet and results                                        *
     * ---------------------------------------------------------------- */
    if ( pDescRx != pDescBase + 2 )                 // Check # of packets
        errors++;

    if ( verify_packet( pDescBase, 60, 0 ) )        // Verify Size + Contents
        errors++;

    if ( verify_packet( pDescBase + 1, TX_BUF, 0 ) )// Verify Size + Contents
        errors++;

    if ( ( status = EMAC_FRAME64 ) != 2 )           // Check # of 64 byte frames
        errors++;
    EMAC_FRAME64 = status;

    if ( ( status = EMAC_FRAME128T255 ) != 2 )      // Check # of 128-255 byte frames
        errors++;
    EMAC_FRAME128T255 = status;

    if ( ( status = EMAC_RXGOODFRAMES ) != 2 )      // Check # of Good RX frames
        errors++;
    EMAC_RXGOODFRAMES = status;

    if ( ( status = EMAC_TXGOODFRAMES ) != 2 )      // Check # of Good TX frames
        errors++;
    EMAC_TXGOODFRAMES = status;

    return errors;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  emac_gmii_test( )                                                       *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 emac_gmii_test()
{
    Int16 errors = 0;
    Int16 i;

    /* Setup EMAC for GMII mode */
    emac_gmii_init( );

    /* Test EMAC in GMII mode */
    for ( i = 0 ; i < 50 ; i++ )
        errors += test_gmii_packet( );

    return errors;
}
