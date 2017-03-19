/*
 *  Copyright 2007 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  I2C implementation
 *
 */

#include "dm368_i2c.h"
#include "dm368_eeprom.h"

Int32 i2c_timeout = 0x10000;

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _I2C_init( )                                                            *
 *                                                                          *
 *      Enable and initalize the I2C module                                 *
 *      The I2C clk is set to run at 100 KHz                                 *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_i2c_init( )
{
    I2C_ICMDR   = 0;                // Reset I2C
    I2C_ICPSC   = 11;               // Config prescaler for 2MHz
    I2C_ICCLKL  = 5;                // Config clk LOW for 100kHz 
    I2C_ICCLKH  = 5;                // Config clk HIGH for 100kHz
    I2C_ICMDR  |= ICMDR_IRS;        // Release I2C from reset

    return 0;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _I2C_close( )                                                           *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_i2c_close( )
{
        I2C_ICMDR = 0;                      // Reset I2C
        return 0;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _I2C_reset( )                                                           *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_i2c_reset( )
{
    dm368_i2c_close( );
    dm368_i2c_init( );
    return 0;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _I2C_write( i2c_addr, data, len )                                       *
 *                                                                          *
 *      I2C write in Master mode                                            *
 *                                                                          *
 *      i2c_addr    <- I2C slave address                                    *
 *      data        <- I2C data ptr                                         *
 *      len         <- # of bytes to write                                  *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_i2c_write( Uint16 i2c_addr, Uint8* data, Uint16 len )
{
    Int32 timeout, i;


    I2C_ICCNT = len;                    // Set length
    I2C_ICSAR = i2c_addr;               // Set I2C slave address
    I2C_ICMDR = ICMDR_STT               // Set for Master Write
              | ICMDR_TRX
              | ICMDR_MST
              | ICMDR_IRS
              | ICMDR_FREE;

    dm368_wait( 10 );                        // Short delay

    for ( i = 0 ; i < len ; i++ )
    {
        I2C_ICDXR = data[i];            // Write

        timeout = i2c_timeout;
        do
        {
            if ( timeout-- < 0  )
            {
                dm368_i2c_reset( );
                return -1;
            }
        } while ( ( I2C_ICSTR & ICSTR_ICXRDY ) == 0 );// Wait for Tx Ready
    }

    I2C_ICMDR |= ICMDR_STP;             // Generate STOP

	while(I2C_ICSTR & 0x1000);
	dm368_waitusec(30);

    return 0;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _I2C_read( i2c_addr, data, len )                                        *
 *                                                                          *
 *      I2C read in Master mode                                             *
 *                                                                          *
 *      i2c_addr    <- I2C slave address                                    *
 *      data        <- I2C data ptr                                         *
 *      len         <- # of bytes to write                                  *
 *                                                                          *
 *      Returns:    0: PASS                                                 *
 *                 -1: FAIL Timeout                                         *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_i2c_read( Uint16 i2c_addr, Uint8* data, Uint16 len )
{
    Int32 timeout, i;

    I2C_ICCNT = len;                    // Set length
    I2C_ICSAR = i2c_addr;               // Set I2C slave address
    I2C_ICMDR = ICMDR_STT               // Set for Master Read
              | ICMDR_MST
              | ICMDR_IRS
              | ICMDR_FREE;

    dm368_wait( 10 );                        // Short delay

    for ( i = 0 ; i < len ; i++ )
    {
        timeout = i2c_timeout;

        /* Wait for Rx Ready */
        do
        {
            if ( timeout-- < 0 )
            {
                dm368_i2c_reset( );
                return -1;
            }
        } while ( ( I2C_ICSTR & ICSTR_ICRRDY ) == 0 );// Wait for Rx Ready

        data[i] = I2C_ICDRR;            // Read
    }

    I2C_ICMDR |= ICMDR_STP;             // Generate STOP

	while(I2C_ICSTR & 0x1000);
	dm368_waitusec(30);

    return 0;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _I2C_read_variable( i2c_addr, data, len )                               *
 *                                                                          *
 *      I2C read in Master mode                                             *
 *                                                                          *
 *      i2c_addr <- I2C slave address                                       *
 *      data    <- I2C data ptr                                             *
 *      len     <- # of bytes to write                                      *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_i2c_read_variable( Uint16 i2c_addr, Uint8* data, Uint16 len )
{
    Int32 timeout, i;


    I2C_ICCNT = len;                    // Set length
    I2C_ICSAR = i2c_addr;               // Set I2C slave address
    I2C_ICMDR = ICMDR_STT               // Set for Master Read
              | ICMDR_MST
              | ICMDR_IRS
              | ICMDR_FREE;

    dm368_wait( 10 );                        // Short delay

    for ( i = 0 ; i < len ; i++ )
    {
        if ( i == 1 )
        {
            len = data[0];
            I2C_ICCNT = len;            // Set length
        }

        timeout = i2c_timeout;
        do
        {
            if ( timeout-- < 0 )
            {
                dm368_i2c_reset( );
                return -1;
            }
        } while ( ( I2C_ICSTR & ICSTR_ICRRDY ) == 0 );// Wait for Rx Ready

        data[i] = I2C_ICDRR;            // Read
    }

    I2C_ICMDR |= ICMDR_STP;             // Generate STOP

    return 0;
}
