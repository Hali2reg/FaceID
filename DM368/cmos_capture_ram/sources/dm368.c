
/*******************************************************************************
********************************************************************************
* FILE         : dm368.c
* Description  : 
*			  
* Copyright (c) 2016 by Harley. All Rights Reserved.
* 
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2016/12/21	      Initial Version
   
********************************************************************************
*******************************************************************************/

#include "dm368.h"
#include "dm368_i2c.h"
#include "dm368_gpio.h"
#include "dm368_eeprom.h"
#include "dm368_psc.h"
#include "dm368_nand.h"
#include "dm368_ddr.h"
#include "ov7725.h"


extern isif_init();
/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _wait( delay )                                                          *
 *                                                                          *
 *      Wait in a software loop for 'x' delay                               *
 *                                                                          *
 * ------------------------------------------------------------------------ */
void dm368_wait( Uint32 delay )
{
	Uint32 i = 0;
	for ( i = 0 ; i < delay ; i++ );
}

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  _waitusec( usec )                                                       *
 *                                                                          *
 *      Wait in a software loop for 'x' microseconds                        *
 *                                                                          *
 * ------------------------------------------------------------------------ */
void dm368_waitusec( Uint32 usec )
{
    dm368_wait( usec * 20 );
}

/* *************************************************************************
 *  Function Name	:		pin_mux_cfg
 *  Description		:		choose the pins' function
 *  Parameters		:		NONE
 *  Returns			:       NONE
 * **************************************************************************/

void pin_mux_cfg()
{
	 PINMUX0 = 0x000DC000;  // Video YIN,ENABLE_LCD_3V3, SD1_CLK,USBDRVVBUS
	 PINMUX1 = 0x00145555;  // Video COUT, EXTCLK, FIELD
	 PINMUX2 = 0x0000183F;  // GPIO for LEDs,KEYs,EM_D[7:0],AEMIF only need EM_A1 and EM_A0
	// PINMUX3 = 0x375AFFFF;  // SPI0, I2C, UART0, ENET, MDIO
	 PINMUX3 = 0x4D5AFFFF;	// enalbe PWM0,PWM1.
	 PINMUX4 = 0x00303CFF;  // CLKOUT0,(R1,R0,G1,G0,B1,B0-->LCD)

	 PUPDCTL1 &= 0xBFFFFFFF;  //disable the CIN[7:0] pull-down
}


/* *************************************************************************
 *  Function Name	:		pll1_cfg
 *  Description		:		set PLL1
 *  						CLKIN:24MHz
 *  						PLLOUT:24MHz*2*72/4/1=864MHz
 *  Parameters		:		NONE
 *  Returns			:       NONE
 * **************************************************************************/

void pll1_cfg()
{
	PLL1_PLLCTL &= ~0x00000002;     //power up the PLL
	PLL1_PLLCTL &= ~0x00000010;		//enable PLLEN
	PLL1_PLLCTL &= ~0x00000001;		//set in bypass mode,then can write value in the DIV register
	PLL1_OCSEL	 =  0x00000000;		//enable CLOCKOUT0
	dm368_wait(150);

	PLL1_PLLCTL |=  0x00000008;		//assert PLL reset
	dm368_waitusec(10);
	PLL1_PLLCTL &= ~0x00000008;		//de-assert PLL reset

	//PLLOUT = OSCIN*2*PLL1_PLLM/(PLL1_PREDIV+1)/(PLL1_POSTDIV+1)
	//24MHz*2*72/4/1=864MHz
	PLL1_PLLM    = 72;
	PLL1_PREDIV  = 0x8003;
	PLL1_POSTDIV = 0x8000;
	dm368_wait(150);

	// the following sequence is required in the PLLSECCTL
	PLL1_PLLSECCTL = 0x00470000;	//Assert TENABLE = 1, TENABLEDIV = 1, TINITZ = 1
	PLL1_PLLSECCTL = 0x00460000;	//Assert TENABLE = 1, TENABLEDIV = 1, TINITZ = 0
	PLL1_PLLSECCTL = 0x00400000;	//Assert TENABLE = 0, TENABLEDIV = 0, TINITZ = 0
	PLL1_PLLSECCTL = 0x00410000;	//Assert TENABLE = 0, TENABLEDIV = 0, TINITZ = 1

	PLL1_PLLDIV1    = 0x8018;   // 864/24 = 36MHz  -> USB (Use AUXCLK from USB PHY Control register)
	PLL1_PLLDIV2    = 0x8001;   // 864/2  = 432mhz -> ARM926/HDVICP(Internal)
	PLL1_PLLDIV3    = 0x8002;   // 864/3  = 288Mhz -> MJCP/HDVICP(Bus)
	PLL1_PLLDIV4    = 0x8005;   // 864/6  = 144Mhz -> EDMA/Peripheral CFG0
	PLL1_PLLDIV5    = 0x8002;   // 864/3  = 288Mhz -> VPSS
	PLL1_PLLDIV6    = 0x801F;   // 864/32 = 27Mhz  -> VENC alternate for SD
	PLL1_PLLDIV7	= 0x8001;   // 864/2/2  = Mhz   -> DDR (DDR has internal /2 divider)
	PLL1_PLLDIV8    = 0x8008;   // 864/9  = 96MHz  -> MMC0/SD0
	PLL1_PLLDIV9    = 0x8003;   // 864/4  = 216MHz -> CLKOUT2
	PLL1_OSCDIV1	= 0x8000;	 // 24/1	  = 24Mhz  -> CLKOUT0

	PLL1_CKEN		= 0x0002;	 //OBSCLK enalbe->CLKOUT0,AUXCLK disable;
	PERI_CLKCTL	&= ~0x00000001;	//Enable CLKOUT0 output;
	
	PLL1_PLLCMD |= 0x00000001;	// apply the GO operation to change the dividers to new ratios
	dm368_wait(2000);

	while(! (((PLL1_CONFIG) & 0x0E000000) == 0x0E000000));  // Wait for PLL to lock
	dm368_wait(2000);

	PLL1_PLLCTL |= 0x00000001;	//Enable PLL

}

/* *************************************************************************
 *  Function Name	:		pll2_cfg
 *  Description		:		set PLL2
 *  						CLKIN 	:	24MHz
 *  						PLLOUT	:	24MHz*2*85/6/1=680MHz
 *  Parameters		:		NONE
 *  Returns			:       NONE
 * **************************************************************************/

void pll2_cfg()
{

	PLL2_PLLCTL &= ~0x00000002;     //power up the PLL
	PLL2_PLLCTL &= ~0x00000010;		//enable PLLEN
	PLL2_PLLCTL &= ~0x00000001;		//set in bypass mode,then can write value in the DIV register
	dm368_wait(150);

	PLL2_PLLCTL |=  0x00000008;		//assert PLL reset
	dm368_waitusec(10);
	PLL2_PLLCTL &= ~0x00000008;		//de-assert PLL reset

	//PLLOUT = OSCIN*2*PLL1_PLLM/(PLL1_PREDIV+1)/(PLL1_POSTDIV+1)
	//24MHz*2*9/1/1=432MHz
	PLL2_PLLM    = 9;
	PLL2_PREDIV  = 0x8000;
	PLL2_POSTDIV = 0x8000;
	dm368_wait(150);

	// the following sequence is required in the PLLSECCTL
	PLL2_PLLSECCTL = 0x00470000;	//Assert TENABLE = 1, TENABLEDIV = 1, TINITZ = 1
	PLL2_PLLSECCTL = 0x00460000;	//Assert TENABLE = 1, TENABLEDIV = 1, TINITZ = 0
	PLL2_PLLSECCTL = 0x00400000;	//Assert TENABLE = 0, TENABLEDIV = 0, TINITZ = 0
	PLL2_PLLSECCTL = 0x00410000;	//Assert TENABLE = 0, TENABLEDIV = 0, TINITZ = 1

	PLL2_PLLDIV1    = 0x800C;   // 432/24 = 36MHz    -> USB (Use AUXCLK from USB PHY Control register)
	PLL2_PLLDIV2    = 0x8000;   // 432/1  = 432mhz   -> ARM926/HDVICP(Internal)
	PLL2_PLLDIV3    = 0x8001;   // 432/2/2  = 108Mhz   -> DDR (DDR has internal /2 divider)
	PLL2_PLLDIV4    = 0x8007;   // 432/8  = 54MHz    -> VOICE (Use PERI_CLKCTL.DIV2 to get 16 kHz*256=4.096MHz input clock)
	PLL2_PLLDIV5    = 0x8005;   // 432/6  = 72Mhz    -> VENC for HD video

	PLL2_PLLCMD |= 0x00000001;	// apply the GO operation to change the dividers to new ratios
	while((PLL2_PLLSTAT&1)!=0);
	dm368_wait(2000);

	while(! (((PLL2_CONFIG) & 0x07000000) == 0x07000000));  // Wait for PLL to lock
	dm368_wait(2000);

	PLL2_PLLCTL |= 0x00000001;	//Enable PLL


}

void sys_init();

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  dm368_init( )                                                        *
 *                                                                          *
 *      Setup I2C, MSP430, & I2C GPIO Expander                              *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Uint16 dm368_init(void)
{
	volatile Uint8 btsel,osc_sw,ae_cfg;
	volatile Int16 status;
	Uint8 i;
    /* Peripheral Clock control */
//	PERI_CLKCTL = 0x0C3F0FF8;          // DDR2 clock source   : PLLC2SYSCLK7
	                                        // ARM926 clock source : PLLC1SYSCLK2
//	dm368_psc_init();
	
	pin_mux_cfg();

//	pll2_cfg();
//	pll1_cfg();
	
	status = dm368_gpio_init();		//LEDs

    /* Wiggle I2C clock line to make sure devices aren't hung */
    PINMUX3 &= ~0x00600000;  // PINMUX for GIO20 instead of SCL
    dm368_gpio_setDirection(GPIO20, GPIO_OUT);
    for (i = 0; i < 9; i++)
    {
    	dm368_gpio_setOutput(GPIO20, 0);
    	dm368_gpio_setOutput(GPIO20, 1);
    }
    PINMUX3 |= 0x00400000;   // Re-enable SCL

	/* Check the BOOT configuration */
	btsel	= (Uint8)(BOOTCFG>>5)&0x07;		//boot mode  000-NAND 011-UART
	osc_sw	= (Uint8)(BOOTCFG>>3)&0x03;		//osc feq mode
	ae_cfg	= (Uint8)(BOOTCFG   &0x07);		//AEMIF config  0xx-8bit width NAND
	
	status = dm368_i2c_init();

	status = ov7725_init();

	pwm_output();

	dm368_wait(200);

	isif_init();

	//status	= nand_init();

   /**** some useful functions here******/

	//status = nand_ubl_read();
	//status = nand_uboot_read();
	//status = erase_all_blocks();
	//status = ddr_init();
	//status = ddr_test();

	//status = emac_mii_test();


	return status ;
}

/*------------------------------------------------------------------------------
* Function   Name	: led_shining()
* Description		: leds shine in order.
* Parameters		: none
* Returned  Value	: none
------------------------------------------------------------------------------*/
void led_shining()
{
	dm368_led_off(0);
	dm368_waitusec(10000);
	dm368_led_off(1);
	dm368_waitusec(10000);
	dm368_led_off(2);
	dm368_waitusec(10000);
	dm368_led_off(3);
	dm368_waitusec(10000);
	dm368_led_on(0);
	dm368_waitusec(10000);
	dm368_led_on(1);
	dm368_waitusec(10000);
	dm368_led_on(2);
	dm368_waitusec(10000);
	dm368_led_on(3);
	dm368_waitusec(10000);
}

/*------------------------------------------------------------------------------
* Function   Name	: pwm_output()
* Description		: output PWM0.
* Parameters		: none
* Returned  Value	: none
------------------------------------------------------------------------------*/
void pwm_output()
{

	PWM0_PER 	= 0xFFFFFFFF;
	PWM0_PH1D 	= 0xF0000000;
	PWM0_CFG	= 0x0012;			// continuous mode, inactive low , first-phrase high.
	PWM0_PCR	= 0x0001;			// run free
	PWM0_START	|= 0x0001;

	PWM1_PER 	= 0xFFFFFFFF;
	PWM1_PH1D 	= 0xF0000000;
	PWM1_CFG	= 0x0012;			// continuous mode, inactive low , first-phrase high.
	PWM1_PCR	= 0x0001;			// run free
	PWM1_START	= 0x0001;


}
