2016/12/9
dm368_init()
1.  完成pinmux，pll配置，并配置输出CLKOUT0（GIO37）给SENSOR做时钟，大小24MHz。
【Q】：连接目标板，代码运行不到main。
【A】：CMD文件将代码指向DDR，因为DDR没有配置，导致无法执行。改为指向ARM_IRAM0，在执行延时函数时跑飞，具体原因未知，延时的代码地址在0x00，而后执行0x8000，导致跑飞。改为执行ARM_IRAM1，代码可以执行。

2016/12/18
1.  配置LED，LED0可以正常亮灭。检查其他引脚。GPIO61,62,63共用Register23，GPIO使用Register45。（其他灯方向没有设置正确，已解决）

2.  CLKOUT0未正常输出。（硬件连接正常；CKEN使能,PERI_CLK使能，已解决）


2016/12/22
1.  添加	dm368_nand.c。
    NAND Flash 读/写（PAGE），擦除操作（BLOCK）完成。CE#的第一个8Gb操作正常，CE2#所控制的第二个8G读错误。

2.  在代码中加入printf函数会导致代码text段过大，超出RAM所分配的16Kb，避免在代码中使用。
    【ECC未添加】	
2016/12/28
1.  添加	dm368_ddr.c.
    DDR读写操作

2017/1/11
1.  PINMUX2 = 0x0000183F 改为 0x00001FFF  AEMIF仅需要EM_A1和EM_A2.其余按照需要配置成GPIOs及KEYs。

2017/1/13
1.  PINMUX2 = 0x0000187F。LEDs才能正常工作，改成0x00001FFF，代码跑飞，因为错误配置了NAND的接口。

2.  GEL规定了CPU中内存的一些特性，GEL_MapAddStr( 0x01c67000, 0, 0x000000AC, "R|W|AS4", 0 );   // GPIO
其中0x000000AC 未修改为0x00000038.导致偏移量0x38后的寄存器不可读，遂改之。

3.  修改CMD文件，将代码移至DDR中运行。

2017/2/17
1.  ARM Linker -> File Search Path 添加 rts2800.lib路径

2017/2/20
1.  一些变量已经定义，使用了，但是提示未使用的警告。将变量变为volatile类型。
2.  在ARMcompile文件夹中，添加了rts2800两个库文件。
3.  gel文件，DDR时钟继续分半，为8分频。

2017/2/21
1.  代码正常运行，不会跳出exit.c的错误
2.  连续下载第二次以上，不复位，代码入口地址为main。

2017/2/26
1.  添加erase_all_blocks（）函数，用于清空UBL，和u-boot烧录的blocks
2.  添加读取UBL和u-boot的函数，读取的数据写入文件。 （但是读出来的文件与写入不一致，但同时，使用nandreadpage函数存入数组内的值确实对的。）

2017/2/27
1.  将流水灯代码部分，整合为一个函数led_shining()。
2.  代码完成，目前主要功能：测试CPU，擦除NAND Block 1-50（该部分存放UBL及UBoot。）

