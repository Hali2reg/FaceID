
/*******************************************************************************
********************************************************************************
* FILE         : main.c
* Description  : 
*			  
* Copyright (c) 2016 by Harley. All Rights Reserved.
* 
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2016/12/11	      Initial Version
   
********************************************************************************
*******************************************************************************/

#include "dm368.h"
#include "dm368_gpio.h"

int main(void) {

	volatile Int16 status = 0;
	
	status = dm368_init();

	while(1)
	{
		led_shining();
	}
	
	return 0;

}
