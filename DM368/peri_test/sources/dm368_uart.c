
/*******************************************************************************
********************************************************************************
* FILE         : dm368_uart.c
* Description  : 
*			  
* Copyright (c) 2017 by Harley. All Rights Reserved.
* 
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2017/02/23	      Initial Version
   
********************************************************************************
*******************************************************************************/

#include "dm368_uart.h"

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _UART_open( id, baudrate )                                              *
 *                                                                          *
 *      Open UART handle                                                    *
 *                                                                          *
 * ------------------------------------------------------------------------ */
UART_Handle dm368_uart_open( Uint16 id, Uint32 baudrate )
{
        UART_Handle uart_handle;
        Uint32 divisor;
		volatile Uint16 dummy;

        /*
         *  UART clk / baudrate
         *  = 24,000,000 / 115200
         */
        divisor = (24000000 / baudrate) / 16;

        switch ( id )
        {
            case 0:
                uart_handle = ( UART_Handle )&UART_MODULE_0;
                break;
            case 1:
                uart_handle = ( UART_Handle )&UART_MODULE_1;
                break;
            default:
                return ( UART_Handle )-1;
        }

        uart_handle->regs->PWREMU_MGMT = 0;         // Reset UART TX & RX components

        dm368_wait( 100 );

        uart_handle->regs->DLL = (divisor & 0xff);  // Set baud rate
        uart_handle->regs->DLH = (divisor >> 8);
        
        uart_handle->regs->FCR = 0x0007;            // Clear UART TX & RX FIFOs
        uart_handle->regs->FCR = 0x0000;            // Non-FIFO mode
        uart_handle->regs->IER = 0x0007;            // Enable interrupts
        uart_handle->regs->LCR = 0x0003;            // 8-bit words,
                                                    // 1 STOP bit generated,
                                                    // No Parity, No Stick paritiy,
                                                    // No Break control
        uart_handle->regs->MCR = 0x0000;            // RTS & CTS disabled,
                                                    // Loopback mode disabled,
                                                    // Autoflow disabled

        uart_handle->regs->PWREMU_MGMT = 0xE001;    // Enable TX & RX componenets

		// Clear any pre-existing characters
        dummy = uart_handle->regs->THR;
	    return uart_handle;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _UART_close( uart_handle )                                              *
 *                                                                          *
 *      Close UART handle                                                   *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_uart_close( UART_Handle uart_handle  )
{
    return 0;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _UART_xmtReady( uart_handle )                                           *
 *                                                                          *
 *      Check if Transmitter is ready to send                               *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_uart_xmtReady( UART_Handle uart_handle )
{
    Uint8 lsr_status;

	lsr_status = uart_handle->regs->LSR;
	if (lsr_status & 0x60)
	    return 0;  // Ready to transmit
	else
	    return 1;

}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _UART_putChar( uart_handle, data )                                      *
 *                                                                          *
 *      Send 1 byte of serial data                                          *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_uart_putChar( UART_Handle uart_handle, Uint8 data )
{
    uart_handle->regs->THR = data;

    return 0;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _UART_rcvReady( uart_handle )                                           *
 *                                                                          *
 *      Check if Receiver is ready to read                                  *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_uart_rcvReady( UART_Handle uart_handle )
{
    Uint8 lsr_status;

	lsr_status = uart_handle->regs->LSR;
	if (lsr_status & 0x1)
	    return 0;  // Data ready
	else
	    return 1;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _UART_getChar( uart_handle, data )                                      *
 *                                                                          *
 *      Recv 1 byte of serial data                                          *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_uart_getChar( UART_Handle uart_handle, Uint8* data )
{
    *data = uart_handle->regs->THR;

    return 0;
}
/*------------------------------------------------------------------------------
* Function   Name	: uart_send_bytes
* Despritions		:
* Parameters		:
* Returned  Value	:
------------------------------------------------------------------------------*/
Int16 uart0_send_bytes(Uint8*src , Uint16 length,UART_Handle uart_handle)
{
	UART_Handle uart0;
    Int32 timeout = 0;
    Int32 test_timeout = 0x1000000;
    timeout = test_timeout;
    uart0 = uart_handle;
    Uint16 i=0;
    Uint8 temp = 0;
    	while( dm368_uart_xmtReady( uart0 ) )  // Wait for TX ready
    	{
    		if ( timeout-- < 0 )
    			return -1;
    	}
      for(i = 0; i < 2047; i++)
      {
    	  temp = i%10;
    	dm368_uart_putChar( uart0, src[temp] );    // Write 1 byte
    	while(uart_handle->regs->LSR&0x60);
      }

      dm368_uart_putChar( uart0, 0x55 );

    if(i == length)
    	return 0;
    else
    	return 1;

}


 
/*------------------------------------------------------------------------------
* Function   Name	: uart_test
* Despritions		: 
* Parameters		: 
* Returned  Value	: 
------------------------------------------------------------------------------*/
Int16 uart_test()
{
    Int16 i, errors = 0;
    UART_Handle uart0;
    Uint8 rx[256];
    Uint8 tx[256];

    Int32 timeout = 0;
    Int32 test_timeout = 0x1000000;

    /* Open Uart Handle */
    uart0 = dm368_uart_open( 0, 115200 );

    if ( uart0 == ( UART_Handle )-1 )
        return -1;

    /* Setup buffers */
    for ( i = 0 ; i < 0x100 ; i++ )
    {
        tx[i] = i;
        rx[i] = 0;
    }

    /* UART Test */
    for ( i = 64 ; i < 96 ; i++ )
    {
        /* TX */
        timeout = test_timeout;
        while( dm368_uart_xmtReady( uart0 ) )  // Wait for TX ready
        {
            if ( timeout-- < 0 )
                return -1;
        }

        dm368_uart_putChar( uart0, tx[i] );    // Write 1 byte

#if(1)
        /* RX */
        timeout = test_timeout;
        while( dm368_uart_rcvReady( uart0 ) )  // Wait for Rx ready
        {
            if ( timeout-- < 0 )
                return -1;
        }

        dm368_uart_getChar( uart0, &rx[i] );   // Read 1 byte
#endif
    }

    /* Compare TX & RX buffers */
    for ( i = 64 ; i < 96 ; i++ )
        if ( tx[i] != rx[i] )
            errors++;

    return errors;
}

