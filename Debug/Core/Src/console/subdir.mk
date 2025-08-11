################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/console/cmd_parser.c \
../Core/Src/console/sys_console.c \
../Core/Src/console/sys_console_uart.c \
../Core/Src/console/sys_uartObj.c 

OBJS += \
./Core/Src/console/cmd_parser.o \
./Core/Src/console/sys_console.o \
./Core/Src/console/sys_console_uart.o \
./Core/Src/console/sys_uartObj.o 

C_DEPS += \
./Core/Src/console/cmd_parser.d \
./Core/Src/console/sys_console.d \
./Core/Src/console/sys_console_uart.d \
./Core/Src/console/sys_uartObj.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/console/%.o Core/Src/console/%.su Core/Src/console/%.cyclo: ../Core/Src/console/%.c Core/Src/console/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG '-DFW_VERSION="V_1_00_00"' -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Core/Src/stm -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-console

clean-Core-2f-Src-2f-console:
	-$(RM) ./Core/Src/console/cmd_parser.cyclo ./Core/Src/console/cmd_parser.d ./Core/Src/console/cmd_parser.o ./Core/Src/console/cmd_parser.su ./Core/Src/console/sys_console.cyclo ./Core/Src/console/sys_console.d ./Core/Src/console/sys_console.o ./Core/Src/console/sys_console.su ./Core/Src/console/sys_console_uart.cyclo ./Core/Src/console/sys_console_uart.d ./Core/Src/console/sys_console_uart.o ./Core/Src/console/sys_console_uart.su ./Core/Src/console/sys_uartObj.cyclo ./Core/Src/console/sys_uartObj.d ./Core/Src/console/sys_uartObj.o ./Core/Src/console/sys_uartObj.su

.PHONY: clean-Core-2f-Src-2f-console

