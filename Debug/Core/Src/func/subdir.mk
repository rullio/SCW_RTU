################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/func/func_greeting.c 

OBJS += \
./Core/Src/func/func_greeting.o 

C_DEPS += \
./Core/Src/func/func_greeting.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/func/%.o Core/Src/func/%.su Core/Src/func/%.cyclo: ../Core/Src/func/%.c Core/Src/func/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DFW_VERSION -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Core/Src/stm -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-func

clean-Core-2f-Src-2f-func:
	-$(RM) ./Core/Src/func/func_greeting.cyclo ./Core/Src/func/func_greeting.d ./Core/Src/func/func_greeting.o ./Core/Src/func/func_greeting.su

.PHONY: clean-Core-2f-Src-2f-func

