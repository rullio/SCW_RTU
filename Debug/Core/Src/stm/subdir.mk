################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/stm/stm_list.c \
../Core/Src/stm/stm_logging.c \
../Core/Src/stm/stm_queue.c 

OBJS += \
./Core/Src/stm/stm_list.o \
./Core/Src/stm/stm_logging.o \
./Core/Src/stm/stm_queue.o 

C_DEPS += \
./Core/Src/stm/stm_list.d \
./Core/Src/stm/stm_logging.d \
./Core/Src/stm/stm_queue.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/stm/%.o Core/Src/stm/%.su Core/Src/stm/%.cyclo: ../Core/Src/stm/%.c Core/Src/stm/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG '-DFW_VERSION="V_1_00_00"' -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Core/Src/stm -I../Core/Src/eeprom -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-stm

clean-Core-2f-Src-2f-stm:
	-$(RM) ./Core/Src/stm/stm_list.cyclo ./Core/Src/stm/stm_list.d ./Core/Src/stm/stm_list.o ./Core/Src/stm/stm_list.su ./Core/Src/stm/stm_logging.cyclo ./Core/Src/stm/stm_logging.d ./Core/Src/stm/stm_logging.o ./Core/Src/stm/stm_logging.su ./Core/Src/stm/stm_queue.cyclo ./Core/Src/stm/stm_queue.d ./Core/Src/stm/stm_queue.o ./Core/Src/stm/stm_queue.su

.PHONY: clean-Core-2f-Src-2f-stm

