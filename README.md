# FaceID
For my Graduation Project

Include:
DM368(TI,CPU)、
OV7670(Image Sensor)
LCD
NAND Flash,DDR
Keys
####nand_ubl_write文件夹
用于向 DM368 往NAND Flash 烧写 UBL 及 u-boot bin文件。TI提供的UBL和u-boot文件在文件夹中，ubl_226_working.bin 和 u-boot.bin。均可工作。
在使用代码时，需要注意，本设计使用的nand flash为八位，在硬件设计过程中，因为绘制原理图操作失误，导致BOOTCFG的拨码开关不能正常工作，所以，我在代码里强制改为8bit width。实际使用时，可根据情况修改，修改位置在nandwrite.c中。
