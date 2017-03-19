
/*******************************************************************************
********************************************************************************
* FILE         : ov7725.h
* Description  :
*
* Copyright (c) 2016 by Harley. All Rights Reserved.
*
* History      :
* Version		Name       		Date			Description
    0.1	       Harley	     2017/3/1	      Initial Version

********************************************************************************
*******************************************************************************/
#include "dm368.h"
#ifndef OV7725_H_
#define OV7725_H_

#define OV_ADDRESS 0x21
/*
 static const Uint8 reg_cfg[][2]={
		{0x32,0x00},
		{0x2a,0x00},
		{0x11,0x00},   //clock select , use the external clock directly.
		{0x12,0x46},   //QVGA YUV
		{0x17,0x23},
		{0x0d,0xC1},	//PLL
		{0x19,0x03},
		{0x18,0x50},
		{0x1a,0x78},
		{0xa0,0x01},
		{0x72,0xe0},    //OV7725_AWB_Ctrl0
		{0xac,0xff},	//OV7725_DSPAuto
		{0x65,0x0c},	//DSP_Ctrl2
		{0x66,0x00},	//DSP_Ctrl3
		{0x67,0x00},	//DSP_Ctrl4


		{0x42,0x7f},
		{0x4d,0x00},
		{0x63,0xf0},	//AWB control
		{0x64,0x1f},
		{0x65,0x00},
		{0x66,0x00},
		{0x67,0x00},
		{0x69,0x00},

		{0x13,0xff},
		{0x15,0x00},	// PCLK,VSYNC,HREF

		{0x0f,0x43},
		{0x14,0x11},	//agc
		{0x22,0xFF},	//7f
		{0x23,0x01},
		{0x24,0x75},
		{0x25,0x50},
		{0x26,0xD4},
		{0x2b,0x00},
		{0x6b,0xa2},

		{0x90,0x08},
		{0x91,0x10},
		{0x92,0x1F},
		{0x93,0x01},

		{0x94,0x2c},
		{0x95,0x24},
		{0x96,0x08},
		{0x97,0x14},
		{0x98,0x24},
		{0x99,0x38},
		{0x9a,0x9e},

		{0x9b,0x00},//set brightness
		{0x9c,0x30},//set contrast
		{0xa7,0x40},//set saturation
		{0xa8,0x40},//set saturation
		{0xa9,0x80},//set hue
		{0xaa,0x80},//set hue

		{0x9e,0x11},
		{0x9f,0x02},
		{0xa6,0x06},

		{0x7e,0x0e},
		{0x7f,0x1a},
		{0x80,0x31},
		{0x81,0x5a},
		{0x82,0x69},
		{0x83,0x75},
		{0x84,0x7e},
		{0x85,0x88},
		{0x86,0x8f},
		{0x87,0x96},
		{0x88,0xa3},
		{0x89,0xaf},
		{0x8a,0xc4},
		{0x8b,0xd7},
		{0x8c,0xe8},
		{0x8d,0x20},

		{0x4e,0xef},
		{0x4f,0x10},
		{0x50,0x60},
		{0x51,0x00},
		{0x52,0x00},
		{0x53,0x24},
		{0x54,0x7a},
		{0x55,0xfc},

		{0x33,0x00},
		{0x22,0x99},
		{0x23,0x03},
		{0x4a,0x00},
		{0x49,0x13},
		{0x47,0x08},
		{0x4b,0x50},
		{0x4c,0x50},
		{0x46,0x00},
		{0x0e,0x75},
		{0x3d,0x82},

		{0x0c,0x50},
		{0x3e,0x1F},

//		{0x29,0xa0},  //VGA
//		{0x2c,0xf0},  //VGA
};
*/

 static const Uint8 reg_cfg_rgb[][2]={
		{0x32,0x00},
		{0x2a,0x00},
		{0x11,0x00},   //clock select , input clock/2 = 12MHz
		{0x12,0x53},   //QVGA  RAW RGB .
		/*
		{0x17,0x23},
		{0x0d,0xC1},	//PLL
		{0x19,0x03},
		{0x18,0x50},
		{0x1a,0x78},
		{0xa0,0x01},
		{0x72,0xe0},    //OV7725_AWB_Ctrl0
		{0xac,0xff},	//OV7725_DSPAuto
		{0x65,0x0c},	//DSP_Ctrl2
		{0x66,0x00},	//DSP_Ctrl3
		{0x67,0x00},	//DSP_Ctrl4
*/

		{0x42,0x7f},
		{0x4d,0x00},
		{0x63,0xf0},	//AWB control
		{0x64,0x1f},
		{0x65,0xff},
		{0x66,0x00},
		{0x67,0x00},
		{0x69,0x00},

		{0x13,0xff},
		{0x0d,0x01},
		{0x15,0x00},	// PCLK,VSYNC,HREF

		{0x0f,0xc5},
		{0x14,0x11},	//agc
		{0x22,0xFF},	//7f
		{0x23,0x01},
		{0x24,0x76},
		{0x25,0x50},
		{0x26,0xa1},
		{0x2b,0x00},
		{0x6b,0xaa},

		{0x90,0x0a},
		{0x91,0x01},
		{0x92,0x01},
		{0x93,0x01},

		{0x94,0x5f},
		{0x95,0x53},
		{0x96,0x11},
		{0x97,0x1a},
		{0x98,0x3d},
		{0x99,0x5a},
		{0x9a,0x9e},

		{0x9b,0x00},//set brightness
		{0x9c,0x30},//set contrast
		{0xa7,0x40},//set saturation
		{0xa8,0x40},//set saturation
		{0xa9,0x80},//set hue
		{0xaa,0x80},//set hue

		{0x9e,0x11},
		{0x9f,0x02},
		{0xa6,0x06},

		{0x7e,0x0c},
		{0x7f,0x16},
		{0x80,0x2a},
		{0x81,0x4e},
		{0x82,0x61},
		{0x83,0x6f},
		{0x84,0x7b},
		{0x85,0x86},
		{0x86,0x8e},
		{0x87,0x97},
		{0x88,0xa4},
		{0x89,0xaf},
		{0x8a,0xc5},
		{0x8b,0xd7},
		{0x8c,0xe8},
		{0x8d,0x20},

		{0x4e,0xef},
		{0x4f,0x10},
		{0x50,0x60},
		{0x51,0x00},
		{0x52,0x00},
		{0x53,0x24},
		{0x54,0x7a},
		{0x55,0xfc},

		{0x33,0x00},
		{0x22,0x99},
		{0x23,0x03},
		{0x4a,0x00},
		{0x49,0x13},
		{0x47,0x08},
		{0x4b,0x14},
		{0x4c,0x17},
		{0x46,0x14},
		{0x0e,0x75},
		{0x3d,0x82},

		{0x0c,0x50},
		{0x3e,0x1F},

		{0x29,0x50},  //VGA
		{0x2c,0x78},  //VGA
};
 /*
 static const Uint8 reg_cfg[][2]={
		{0x32,0x00},
		{0x2a,0x00},
		{0x11,0x00},   //clock select , use the external clock directly.
		{0x12,0x46},   //QVGA YUV
		{0x17,0x23},
		{0x0d,0xC1},	//PLL
		{0x19,0x03},
		{0x18,0x50},
		{0x1a,0x78},
		{0xa0,0x01},
		{0x72,0xe0},    //OV7725_AWB_Ctrl0
		{0xac,0xff},	//OV7725_DSPAuto
		{0x65,0x0c},	//DSP_Ctrl2
		{0x66,0x00},	//DSP_Ctrl3
		{0x67,0x00},	//DSP_Ctrl4


		{0x42,0x7f},
		{0x4d,0x00},
		{0x63,0xf0},	//AWB control
		{0x64,0x1f},
		{0x65,0x00},
		{0x66,0x00},
		{0x67,0x00},
		{0x69,0x00},

		{0x13,0xff},
		{0x15,0x00},	// PCLK,VSYNC,HREF

		{0x0f,0x43},
		{0x14,0x11},	//agc
		{0x22,0xFF},	//7f
		{0x23,0x01},
		{0x24,0x75},
		{0x25,0x50},
		{0x26,0xD4},
		{0x2b,0x00},
		{0x6b,0xa2},

		{0x90,0x08},
		{0x91,0x10},
		{0x92,0x1F},
		{0x93,0x01},

		{0x94,0x2c},
		{0x95,0x24},
		{0x96,0x08},
		{0x97,0x14},
		{0x98,0x24},
		{0x99,0x38},
		{0x9a,0x9e},

		{0x9b,0x00},//set brightness
		{0x9c,0x30},//set contrast
		{0xa7,0x40},//set saturation
		{0xa8,0x40},//set saturation
		{0xa9,0x80},//set hue
		{0xaa,0x80},//set hue

		{0x9e,0x11},
		{0x9f,0x02},
		{0xa6,0x06},

		{0x7e,0x0e},
		{0x7f,0x1a},
		{0x80,0x31},
		{0x81,0x5a},
		{0x82,0x69},
		{0x83,0x75},
		{0x84,0x7e},
		{0x85,0x88},
		{0x86,0x8f},
		{0x87,0x96},
		{0x88,0xa3},
		{0x89,0xaf},
		{0x8a,0xc4},
		{0x8b,0xd7},
		{0x8c,0xe8},
		{0x8d,0x20},

		{0x4e,0xef},
		{0x4f,0x10},
		{0x50,0x60},
		{0x51,0x00},
		{0x52,0x00},
		{0x53,0x24},
		{0x54,0x7a},
		{0x55,0xfc},

		{0x33,0x00},
		{0x22,0x99},
		{0x23,0x03},
		{0x4a,0x00},
		{0x49,0x13},
		{0x47,0x08},
		{0x4b,0x50},
		{0x4c,0x50},
		{0x46,0x00},
		{0x0e,0x75},
		{0x3d,0x82},

		{0x0c,0x50},
		{0x3e,0x1F},

//		{0x29,0xa0},  //VGA
//		{0x2c,0xf0},  //VGA
};
*/

static const Uint8 reg_cfg_ycbcr[][2]={
		//{0x12,0x80},
		{0x3d,0x03},
		{0x17,0x22},
		{0x18,0xa4},
		{0x19,0x07},
		{0x1a,0xf0},
		{0x32,0x00},
		{0x29,0xa0},
		{0x2c,0xf0},
		{0x11,0x07},		//internal clock/2/2

		{0x42,0x7f},
		{0x4d,0x09},
		{0x63,0xe0},
		{0x64,0xff},
		{0x65,0x20},
		{0x66,0x00},
		{0x67,0x48},

		{0x13,0xf0},
		{0x0d,0x41},		//different AEG/AGC window. PLL 4x , 1/2 window.
		{0x0f,0xc5},
		{0x14,0x11},
		{0x22,0x7f},
		{0x23,0x03},
		{0x24,0x40},
		{0x25,0x30},
		{0x26,0xa1},
		{0x2b,0x00},
		{0x6b,0xaa},
		{0x13,0xff},

		{0x90,0x05},
		{0x91,0x01},
		{0x92,0x03},
		{0x93,0x00},
		{0x94,0xb0},
		{0x95,0x9d},
		{0x96,0x13},
		{0x97,0x16},
		{0x98,0x7b},
		{0x99,0x91},
		{0x9a,0x1e},
		{0x9b,0x08},
		{0x9c,0x20},
		{0x9e,0x81},
		{0xa6,0x06},

		//Gamma
		{0x7e,0x0c},
		{0x7f,0x16},
		{0x80,0x2a},
		{0x81,0x4e},
		{0x82,0x61},
		{0x83,0x6f},
		{0x84,0x7b},
		{0x85,0x86},
		{0x86,0x8e},
		{0x87,0x97},
		{0x88,0xa4},
		{0x89,0xaf},
		{0x8a,0xc5},
		{0x8b,0x7d},
		{0x8c,0xe8},
		{0x8d,0x20},

		{0x33,0x00},
		{0x22,0x7f},
		{0x23,0x03},

		//Lens correction
		{0x4a,0x10},
		{0x49,0x10},
		{0x4b,0x14},
		{0x4c,0x17},
		{0x46,0x05},

		{0x0e,0x65}


};
Uint16 ov7725_init();

void camera_reset();
Uint16 sccb_read_reg(Uint8 regindex);
Uint16 sccb_write_reg(Uint8 regindex,Uint8 data);
Uint16 ov7725_reg_init();

#endif /* OV7670_H_ */