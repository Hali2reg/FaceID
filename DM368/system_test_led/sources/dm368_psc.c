
/*******************************************************************************
********************************************************************************
* FILE         : dm368_psc.c
* Description  : 
*			  
* Copyright (c) 2016 by Harley. All Rights Reserved.
* 
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2016/12/19	      Initial Version
   
********************************************************************************
*******************************************************************************/



#include "dm368_psc.h"

/* *************************************************************************
 *  Function Name	:		dm368_psc_init
 *  Description		:		initialize the psc module,enable all the sub-modules
 *  Parameters		:		NONE
 *  Returns			:       NONE
 * **************************************************************************/
Int16 dm368_psc_init()
{
	dm368_psc_enableAll();
	return 0;
}

/* *************************************************************************
 *  Function Name	:		dm368_psc_enableAll
 *  Description		:		enable ALL the module domain
 *  Parameters		:		NONE
 *  Returns			:       NONE
 * **************************************************************************/
Int16 dm368_psc_enableAll()
{
	Uint8 i;
	for (i = 0;i<=40;i++)
		dm368_psc_changeState(i,PSC_ENABLE);
	for (i = 42;i<=47;i++)
		dm368_psc_changeState(i,PSC_ENABLE);
	for (i = 48;i<=51;i++)
		dm368_psc_changeState(i,PSC_ENABLE);
	//PTRCIF
	dm368_psc_changeState(41,PSC_ENABLE);
	return 0;
}


/* *************************************************************************
 *  Function Name	:		dm368_psc_changeState
 *  Description		:		change the state of PSC
 *  Parameters		:		id		->	domain #ID
 *  						state	->	ENABLE,DISABLE,SYNCRESET,RESET
 *  									=3    ,=2     ,=1       ,=0
 *  Returns			:       NONE
 * **************************************************************************/

Int16 dm368_psc_changeState( Uint8 id, Uint8 state )
{
	Uint32* mdstat = (Uint32*)( PSC_MDSTAT_BASE + 4*id );	//Module Status Register.
	Uint32* mdctl  = (Uint32*)( PSC_MDCTL_BASE + 4*id );	//Module Control Register.

	//if the module'status is ENABLE,IGNORE IT!!
	if(state == (*mdstat))
		return 1;
	//wait PTSTAT.GOSTAT is cleared , NO transition in progress
	while(PSC_PTSTAT&0x01);

	//set the new status.
	*mdctl &= ~0x0000001f;
	*mdctl |= state;

	//start power transition.(PTCMD.GO = 1)
	PSC_PTCMD |=1;

	//wait PTSTAT.GOSTAT is cleared , NO transition in progress
	while(PSC_PTSTAT&0x01);
	return 0;

}
