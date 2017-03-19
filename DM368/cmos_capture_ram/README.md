3/15/2017 4:47:15 PM  
1. ov7725_init() 代码可以工作。  输出格式 YUV422。  
2. isif	无法确定是否采集到数据。数据保存位置无法确定，不在DDR 0x80000000。  

3/16/2017 9:59:30 AM   
1.  MODESET.SWEN 置位，写DDR，外部提供写使能信号。可以配置成通过VD信号锁存。CCDCFG.FIDMD  

3/18/2017 5:15:15 PM   
1.  添加 pwm\_output() 函数（dm368.c）。无法使能，从而无法正常输出波形。  
2.  添加 ov7725 YCbCr配置数据数组（ov7725.h)。ov7725 D[9:0]用于RAW RGB数据，D[9:2]用于其他格式。调整帧率以及PCLK，参考 ov7725\_software_application.pdf