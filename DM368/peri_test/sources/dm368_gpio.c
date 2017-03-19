
/*******************************************************************************
********************************************************************************
* FILE         : dm368_gpio.c
* Description  : 
*			  
* Copyright (c) 2016 by Harley. All Rights Reserved.
* 
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2016/12/19	      Initial Version
   
********************************************************************************
*******************************************************************************/


/*
 *  GPIO implementation
 *
 */

#include "dm368_gpio.h"

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _GPIO_init( )                                                           *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_gpio_init()
{
    /* Free GPIO from emulation */
    GPIO_PCR = 1;

    /* Initialize the relevant PINs of LEDs */
	dm368_gpio_setDirection(GPIO61,GPIO_OUT);	//LED0
	dm368_gpio_setDirection(GPIO62,GPIO_OUT);	//LED1
	dm368_gpio_setDirection(GPIO63,GPIO_OUT);	//LED2
	dm368_gpio_setDirection(GPIO64,GPIO_OUT);	//LED3

	// camera reset pin
     dm368_gpio_setDirection(GPIO60,GPIO_OUT);

    dm368_gpio_setDirection(GPIO58,GPIO_OUT);
 	dm368_gpio_setOutput(GPIO58,0);
 	dm368_wait(50);
 	dm368_gpio_setOutput(GPIO58,1);

 	 dm368_gpio_setDirection(GPIO49,GPIO_OUT);
 	 dm368_gpio_setOutput(GPIO49,1);
 	 dm368_wait(50);

    return 0;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _GPIO_setDirection( number, direction )                                 *
 *                                                                          *
 *      number    <- GPIO#                                                  *
 *      direction <- 0:OUT 1:IN                                             *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_gpio_setDirection( Uint16 number, Uint8 direction )
{
    Uint32 bank_id = ( number >> 5 );
    Uint32 pin_id  = ( 1 << ( number & 0x1F ) );
    Uint32* gpio_dir = ( Uint32* )( GPIO_BASE + GPIO_DIR_BASE + ( bank_id * GPIO_BASE_OFFSET ) );

    if ( ( direction & 1 ) == GPIO_OUT )
        *gpio_dir &= ~( pin_id );  // Set to OUTPUT
    else
        *gpio_dir |= ( pin_id );   // Set to INPUT

    return 0;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _GPIO_setOutput( number, output )                                       *
 *                                                                          *
 *      number   <- GPIO#                                                   *
 *      value    <- 0:LOW 1:HIGH                                            *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_gpio_setOutput( Uint16 number, Uint8 output )
{
    Uint32 bank_id = ( number >> 5 );
    Uint32 pin_id  = ( 1 << ( number & 0x1F ) );
    Uint32* gpio_out = ( Uint32* )( GPIO_BASE + GPIO_OUT_DATA_BASE + ( bank_id * GPIO_BASE_OFFSET ) );

    if ( ( output & 1 )  == 0 )
        *gpio_out &= ~( pin_id );  // Set to LOW
    else
        *gpio_out |= ( pin_id );   // Set to HIGH

    return 0;
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _GPIO_getInput( number )                                                *
 *                                                                          *
 *      number   <- GPIO#                                                   *
 *                                                                          *
 *      Returns:    0:LOW                                                   *
 *                  1:HIGH                                                  *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 dm368_gpio_getInput( Uint16 number )
{
    Uint32 input;
    Uint32 bank_id = ( number >> 5 );
    Uint32 pin_id  = ( number & 0x1F );
    Uint32* gpio_in = ( Uint32* )( GPIO_BASE + GPIO_IN_DATA_BASE + ( bank_id * GPIO_BASE_OFFSET ) );

    input = *gpio_in;
    input = ( input >> pin_id ) & 1;

    return input;
}
/* ------------------------------------------------------------------------ *
 *
 *  Function Name	:		dm368_led_off( number)
 *
 *  Description		:		light on the LEDs on the board
 *
 *  Parameters		:		number(0~3) ->LED0,1,2,3
 *
 *  Returns			:       0:WORKING
 *
 * ------------------------------------------------------------------------ */
Int16 dm368_led_off( Uint16 number )
{
	number += GPIO61;

	dm368_gpio_setOutput(number,1);

	return 0;
}

/* ------------------------------------------------------------------------ *
 *
 *  Function Name	:		dm368_led_on
 *
 *  Description		:		light off the LEDs on the board
 *
 *  Parameters		:		number(0~3) ->LED0,1,2,3
 *
 *  Returns			:       0:WORKING
 *
 * ------------------------------------------------------------------------ */
Int16 dm368_led_on( Uint16 number )
{
	number += GPIO61;

	dm368_gpio_setOutput(number,0);

	return 0;
}
