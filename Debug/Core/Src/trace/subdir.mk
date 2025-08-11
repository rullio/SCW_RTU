################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/trace/dbg_trace.c \
../Core/Src/trace/hw_uart.c 

OBJS += \
./Core/Src/trace/dbg_trace.o \
./Core/Src/trace/hw_uart.o 

C_DEPS += \
./Core/Src/trace/dbg_trace.d \
./Core/Src/trace/hw_uart.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/trace/%.o Core/Src/trace/%.su Core/Src/trace/%.cyclo: ../Core/Src/trace/%.c Core/Src/trace/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG '-DFW_VERSION="V_1_00_00"' -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Core/Src/stm -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-trace

clean-Core-2f-Src-2f-trace:
	-$(RM) ./Core/Src/trace/dbg_trace.cyclo ./Core/Src/trace/dbg_trace.d ./Core/Src/trace/dbg_trace.o ./Core/Src/trace/dbg_trace.su ./Core/Src/trace/hw_uart.cyclo ./Core/Src/trace/hw_uart.d ./Core/Src/trace/hw_uart.o ./Core/Src/trace/hw_uart.su

.PHONY: clean-Core-2f-Src-2f-trace

