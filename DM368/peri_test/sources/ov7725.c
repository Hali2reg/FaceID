
/*******************************************************************************
********************************************************************************
* FILE         : ov7725.c
* Description  :
*
* Copyright (c) 2016 by Harley. All Rights Reserved.
*
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2017/3/1	      Initial Version

********************************************************************************
*******************************************************************************/

#include "ov7725.h"
#include "dm368.h"
#include "dm368_gpio.h"
#include "dm368_i2c.h"
/*------------------------------------------------------------------------------
* Function   Name	: ov7670_init()
* Descriptions		: initialize the camera.
* Parameters		: none
* Returned  Value	: none
------------------------------------------------------------------------------*/
Uint16 ov7725_init()
{
	//Uint8 reg_data[10]={0};
	volatile Uint16 status = 0;

	volatile Uint8 product_id = 0;
	volatile Uint8 read_back = 0;
	camera_reset();

	product_id = sccb_read_reg( 0x0B );

	if(OV_ADDRESS != product_id)
		return 1;

	status = ov7725_reg_init();
	read_back = sccb_read_reg(0x11);

	/*********For write and read testing*********/
	//status = sccb_write_reg(0x12,0x46);
	//reg_data = sccb_read_reg( 0x12 );

	return status ;

}
/*------------------------------------------------------------------------------
* Function   Name	: reset_camera()
* Descriptions		: reset camera by GPIO60
* Parameters		: none
* Returned  Value	: none
------------------------------------------------------------------------------*/
void camera_reset()
{
	dm368_gpio_setOutput(GPIO60,0);
	dm368_wait(200);
	dm368_gpio_setOutput(GPIO60,1);

}

/*------------------------------------------------------------------------------
* Function   Name	: sccb_read_reg()
* Descriptions		: read a byte from ov7725 register.
* Parameters		: regindex ->  the index of a register
* Returned  Value	: none
------------------------------------------------------------------------------*/
Uint16 sccb_read_reg(Uint8 regindex)
{
	volatile Uint16 status = 0;
	Uint8 send_data[1] = {0};
	Uint8 recv_data[1] = {0};
	send_data[0] = regindex;

	status = dm368_i2c_write(OV_ADDRESS,send_data,1);
	//dm368_wait(20);
	status = dm368_i2c_read(OV_ADDRESS,recv_data,1);

	return recv_data[0];

}
/*------------------------------------------------------------------------------
* Function   Name	:  sccb_write_reg()
* Descriptions		:  write a byte to  ov7725 register.
* Parameters		:  regindex ->  the index of a register
* Returned  Value	:  none
------------------------------------------------------------------------------*/
Uint16 sccb_write_reg(Uint8 regindex,Uint8 data)
{
	volatile Uint16 status = 0;
	Uint8 send_data[2] = {0};
	send_data[0] = regindex;
	send_data[1] = data;

	status = dm368_i2c_write(OV_ADDRESS,send_data,2);
	return status;

}

/*------------------------------------------------------------------------------
* Function   Name	:  ov7725_light_mode()
* Descriptions		:  set the light mode
* Parameters		:  none
* Returned  Value	:  none
------------------------------------------------------------------------------*/
void ov7725_light_mode(Uint8 mode )
{
	Uint8 reg13val=0XE7;//Ĭ�Ͼ�������Ϊ�Զ���ƽ��
	Uint8 reg01val=0;
	Uint8 reg02val=0;
	switch(mode)
	{
		case 1://sunny
			reg13val=0XE5;
			reg01val=0X5A;
			reg02val=0X5C;
			break;
		case 2://cloudy
			reg13val=0XE5;
			reg01val=0X58;
			reg02val=0X60;
			break;
		case 3://office
			reg13val=0XE5;
			reg01val=0X84;
			reg02val=0X4c;
			break;
		case 4://home
			reg13val=0XE5;
			reg01val=0X96;
			reg02val=0X40;
			break;
	}
	sccb_write_reg(0X13,reg13val);//COM8����
	sccb_write_reg(0X01,reg01val);//AWB��ɫͨ������
	sccb_write_reg(0X02,reg02val);//AWB��ɫͨ������
}

void ov7725_color_saturation(Uint8 sat)
{
	Uint8 reg4f5054val=0X80;//Ĭ�Ͼ���sat=2,��������ɫ�ȵ�����
	volatile Uint8 reg52val=0X22;
	volatile Uint8 reg53val=0X5E;
 	switch(sat)
	{
		case 0://-2
			reg4f5054val=0X40;
			reg52val=0X11;
			reg53val=0X2F;
			break;
		case 1://-1
			reg4f5054val=0X66;
			reg52val=0X1B;
			reg53val=0X4B;
			break;
		case 3://1
			reg4f5054val=0X99;
			reg52val=0X28;
			reg53val=0X71;
			break;
		case 4://2
			reg4f5054val=0x60;
			reg52val=0x60;
			reg53val=0X8D;
			break;
	}
 	sccb_write_reg(0XA7,reg4f5054val);	//ɫ�ʾ���ϵ��1
 	sccb_write_reg(0XA8,reg4f5054val);	//ɫ�ʾ���ϵ��2
 	//sccb_write_reg(0X51,0X00);			//ɫ�ʾ���ϵ��3
 	//sccb_write_reg(0X52,reg52val);		//ɫ�ʾ���ϵ��4
 	//sccb_write_reg(0X53,reg53val);		//ɫ�ʾ���ϵ��5
 //	sccb_write_reg(0X54,reg4f5054val);	//ɫ�ʾ���ϵ��6
 	//sccb_write_reg(0X58,0X9E);			//MTXS
}
void ov7725_brightness(Uint8 bright)
{
	Uint8 reg9Bval=0X00;//Ĭ�Ͼ���bright=2
	Uint8 regABval=0X22;
  	switch(bright)
	{
		case 0://-2
			reg9Bval=0X18;
			regABval=0x0e;
			break;
		case 1://-1
			reg9Bval=0X08;
			regABval=0x0e;
			break;
		case 3://1
			reg9Bval=0X18;
			regABval=0x06;
			break;
		case 4://2
			reg9Bval=0X28;
			regABval=0x06;
			break;
	}
  	sccb_write_reg(0x9B,reg9Bval);	//���ȵ���
  	sccb_write_reg(0xAB,regABval);
}

void ov7725_contrast(Uint8 contrast)
{
	Uint8 reg9Cval=0X40;//Ĭ�Ͼ���contrast=2
  	switch(contrast)
	{
		case 0://-2
			reg9Cval=0X18;
			break;
		case 1://-1
			reg9Cval=0X1c;
			break;
		case 3://1
			reg9Cval=0X24;
			break;
		case 4://2
			reg9Cval=0X28;
			break;
	}
  	sccb_write_reg(0X9C,reg9Cval);	//�Աȶȵ���
}
void ov7725_special_effects(Uint8 eft)
{
	Uint8 rega6val=0X06;//Ĭ��Ϊ��ͨģʽ
	Uint8 reg60val=0X80;
	Uint8 reg61val=0X80;
	switch(eft)
	{
		case 1://��Ƭ
			rega6val=0X46;
			reg60val=0X80;
			reg61val=0X80;
			break;
		case 2://�ڰ�
			rega6val=0X14;
			reg60val=0X80;
			reg61val=0X80;
			break;
		case 3://ƫ��ɫ
			rega6val=0X1e;
			reg60val=0X80;
			reg61val=0Xc0;
			break;
		case 4://ƫ��ɫ
			rega6val=0X14;
			reg60val=0X40;
			reg61val=0X40;
			break;
		case 5://ƫ��ɫ
			rega6val=0X1e;
			reg60val=0xa0;
			reg61val=0X40;
			break;
		case 6://����
			rega6val=0X14;
			reg60val=0XA0;
			reg61val=0X40;
			break;
	}
	sccb_write_reg(0Xa6,rega6val);//TSLB����
	sccb_write_reg(0X60,reg60val);//MANU,�ֶ�Uֵ
	sccb_write_reg(0X61,reg61val);//MANV,�ֶ�Vֵ
}
/*------------------------------------------------------------------------------
* Function   Name	:  ov7725_reg_init()
* Descriptions		:  initialize all the registers in ov7725
* Parameters		:  none
* Returned  Value	:  none
------------------------------------------------------------------------------*/
Uint16 ov7725_reg_init()
{
	Uint16 status = 0;
	Uint16 i = 0;
	Uint16 reg_nums = 0;
//	Uint8 lightmode=0,saturation=2,brightness=2,contrast=2;
//	Uint8 effect =0;

	reg_nums = sizeof(reg_cfg)/sizeof(reg_cfg[0]);
	for(i = 0; i < reg_nums ; i++)
	{
		sccb_write_reg(reg_cfg[i][0],reg_cfg[i][1]);
		if(status != 0)
			return i;
		if(reg_cfg[i][1]!=sccb_read_reg(reg_cfg[i][0]))
			return i;
	}

	//ov7725_light_mode(saturation);
	//ov7725_color_saturation(saturation);
	//ov7725_brightness(brightness);
	//ov7725_contrast(contrast);
	//ov7725_special_effects(effect);

	return status;
}

