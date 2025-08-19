################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/cmds/cmds_board.c \
../Core/Src/cmds/cmds_system.c 

OBJS += \
./Core/Src/cmds/cmds_board.o \
./Core/Src/cmds/cmds_system.o 

C_DEPS += \
./Core/Src/cmds/cmds_board.d \
./Core/Src/cmds/cmds_system.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/cmds/%.o Core/Src/cmds/%.su Core/Src/cmds/%.cyclo: ../Core/Src/cmds/%.c Core/Src/cmds/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG '-DFW_VERSION="V_1_00_00"' -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Core/Src/stm -I../Core/Src/eeprom -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-cmds

clean-Core-2f-Src-2f-cmds:
	-$(RM) ./Core/Src/cmds/cmds_board.cyclo ./Core/Src/cmds/cmds_board.d ./Core/Src/cmds/cmds_board.o ./Core/Src/cmds/cmds_board.su ./Core/Src/cmds/cmds_system.cyclo ./Core/Src/cmds/cmds_system.d ./Core/Src/cmds/cmds_system.o ./Core/Src/cmds/cmds_system.su

.PHONY: clean-Core-2f-Src-2f-cmds

