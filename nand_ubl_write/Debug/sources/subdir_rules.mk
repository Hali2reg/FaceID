################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
sources/debug.obj: ../sources/debug.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/bin/armcl" -mv5e --code_state=32 --abi=eabi -me -Ooff --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/include" --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/lib" --include_path="E:/Projects/CCS5.5/system_test/nand_ubl_write/heads" --define=dm368 --diag_warning=225 --display_error_number --diag_wrap=off --printf_support=full --std_lib_func_not_defined --preproc_with_compile --preproc_dependency="sources/debug.pp" --obj_directory="sources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sources/device.obj: ../sources/device.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/bin/armcl" -mv5e --code_state=32 --abi=eabi -me -Ooff --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/include" --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/lib" --include_path="E:/Projects/CCS5.5/system_test/nand_ubl_write/heads" --define=dm368 --diag_warning=225 --display_error_number --diag_wrap=off --printf_support=full --std_lib_func_not_defined --preproc_with_compile --preproc_dependency="sources/device.pp" --obj_directory="sources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sources/device_nand.obj: ../sources/device_nand.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/bin/armcl" -mv5e --code_state=32 --abi=eabi -me -Ooff --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/include" --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/lib" --include_path="E:/Projects/CCS5.5/system_test/nand_ubl_write/heads" --define=dm368 --diag_warning=225 --display_error_number --diag_wrap=off --printf_support=full --std_lib_func_not_defined --preproc_with_compile --preproc_dependency="sources/device_nand.pp" --obj_directory="sources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sources/nand.obj: ../sources/nand.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/bin/armcl" -mv5e --code_state=32 --abi=eabi -me -Ooff --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/include" --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/lib" --include_path="E:/Projects/CCS5.5/system_test/nand_ubl_write/heads" --define=dm368 --diag_warning=225 --display_error_number --diag_wrap=off --printf_support=full --std_lib_func_not_defined --preproc_with_compile --preproc_dependency="sources/nand.pp" --obj_directory="sources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sources/nandwriter.obj: ../sources/nandwriter.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/bin/armcl" -mv5e --code_state=32 --abi=eabi -me -Ooff --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/include" --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/lib" --include_path="E:/Projects/CCS5.5/system_test/nand_ubl_write/heads" --define=dm368 --diag_warning=225 --display_error_number --diag_wrap=off --printf_support=full --std_lib_func_not_defined --preproc_with_compile --preproc_dependency="sources/nandwriter.pp" --obj_directory="sources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sources/util.obj: ../sources/util.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/bin/armcl" -mv5e --code_state=32 --abi=eabi -me -Ooff --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/include" --include_path="D:/WorkSpace/CCS5.5/ccsv5/tools/compiler/arm_5.1.1/lib" --include_path="E:/Projects/CCS5.5/system_test/nand_ubl_write/heads" --define=dm368 --diag_warning=225 --display_error_number --diag_wrap=off --printf_support=full --std_lib_func_not_defined --preproc_with_compile --preproc_dependency="sources/util.pp" --obj_directory="sources" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


