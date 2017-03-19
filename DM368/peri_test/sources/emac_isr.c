/*
 *  Copyright 2007 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  EMAC Implementation
 *
 */

#include "emac.h"

volatile Int32 RxCount = 0;     // RX count
volatile Int32 TxCount = 0;     // TX count
volatile Int32 ErrCount = 0;    // Error count
volatile Int32 ErrCode = 0;     // Error Code
volatile EMAC_Desc *pDescRx;    // Next descriptors to ACK in ISR
volatile EMAC_Desc *pDescTx;    // Next descriptors to ACK in ISR

/*
 *  Interrupt service routine
 */
void EMAC_isr( )
{
    Uint32 intr_flags;
    Uint32 tmp;

    EMAC_CMRXINTEN = 0x00000000;   // Disable RX interrupts
    EMAC_CMTXINTEN = 0x00000000;   // Disable TX interrupts

    intr_flags = EMAC_MACINVECTOR;  // Check interrupt flag

    if ( intr_flags & EMAC_MACINVECTOR_HOSTPEND )
    {
        ErrCode = EMAC_MACSTATUS;   // Error code
        ErrCount++;
        return;
    }

    /*
     * Look for statistics interrupt
     */
    if ( intr_flags & EMAC_MACINVECTOR_STATPEND )
    {
        ErrCode = EMAC_MACSTATUS;   // Error code
        ErrCount++;
        return;
    }

    /*
     * Look for TX interrupt ( channel 0 )
     */
    if ( intr_flags & EMAC_MACINVECTOR_TXPEND )
    {
        tmp = EMAC_TX0CP;
        EMAC_TX0CP = tmp;

        /* This while loop is only used when ACK'ing more than one desc */
        while ( tmp != ( Uint32 )pDescTx )
        {
            if ( pDescTx->PktFlgLen & EMAC_DSC_FLAG_OWNER )
            {
                ErrCount++;
                return;
            }
            pDescTx++;
            TxCount++;
        }
        if ( pDescTx->PktFlgLen & EMAC_DSC_FLAG_OWNER )
        {
            ErrCount++;
            return;
        }
        pDescTx++;
        TxCount++;
    }

    /*
     * Look for RX interrupt ( channel 0 )
     */
    if ( intr_flags & EMAC_MACINVECTOR_RXPEND )
    {
        tmp = EMAC_RX0CP;
        EMAC_RX0CP = tmp;

        /* This while loop is only used when ACK'ing more than one desc */
        while ( tmp != ( Uint32 )pDescRx )
        {
            pDescRx++;
            RxCount++;
        }
        pDescRx++;
        RxCount++;
    }

    /* Enable EMAC/MDIO interrupts in wrapper */
    EMAC_CMRXINTEN = 0x000000ff;   // Enable Channel 0 RX interrupts
    EMAC_CMTXINTEN = 0x000000ff;   // Enable Channel 0 TX interrupts
    return;
}
