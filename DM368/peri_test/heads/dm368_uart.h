
/*******************************************************************************
********************************************************************************
* FILE         : dm368_uart.h
* Description  : 
*			  
* Copyright (c) 2017 by Harley. All Rights Reserved.
* 
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2017/02/23	      Initial Version
   
********************************************************************************
*******************************************************************************/


#ifndef UART_
#define UART_

#include "dm368.h"

/* ------------------------------------------------------------------------ *
 *  UART regs                                                               *
 * ------------------------------------------------------------------------ */

    typedef struct {
        volatile Uint32 RBR;
        volatile Uint32 IER;
        volatile Uint32 IIR;
        volatile Uint32 LCR;
        volatile Uint32 MCR;
        volatile Uint32 LSR;
                 Uint32 rsvd_18;
                 Uint32 rsvd_1c;
        volatile Uint32 DLL;
        volatile Uint32 DLH;
        volatile Uint32 PID1;
        volatile Uint32 PID2;
        volatile Uint32 PWREMU_MGMT;
    } UART_REGS;

    #define THR     RBR    // THR & RBR occupy the same memory location
    #define FCR     IIR    // FCR & IIR occupy the same memory location

    typedef struct {
        UART_REGS* regs;
    } UART_OBJ;

    static UART_OBJ UART_MODULE_0 = { ( UART_REGS* )UART0_BASE };
    static UART_OBJ UART_MODULE_1 = { ( UART_REGS* )UART1_BASE };

    typedef UART_OBJ* UART_Handle;

/* ------------------------------------------------------------------------ *
 *  Prototypes                                                              *
 * ------------------------------------------------------------------------ */

UART_Handle dm368_uart_open( Uint16 id, Uint32 baudrate );
Int16       dm368_uart_close( UART_Handle UartHandle );

Int16 dm368_uart_xmtReady( UART_Handle UartHandle );
Int16 dm368_uart_rcvReady( UART_Handle UartHandle );

Int16 dm368_uart_putChar( UART_Handle UartHandle, Uint8 data );
Int16 dm368_uart_getChar( UART_Handle UartHandle, Uint8* data );
Int16 uart0_send_bytes(Uint8*src , Uint16 length,UART_Handle uart_handle);
Int16 uart_test();


#endif
