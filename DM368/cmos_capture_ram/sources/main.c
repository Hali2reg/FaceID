
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
#include "stdio.h"
#include "dm368.h"
#include "dm368_gpio.h"


int main(void) {

	Int16 status = 0;
	

	status = dm368_init();

	if(status)
		return 1;

	while(1)
	{
		led_shining();
	}
	
	return 0;

}
