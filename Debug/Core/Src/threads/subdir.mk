################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/threads/scw_thread_cli.c \
../Core/Src/threads/scw_thread_init.c \
../Core/Src/threads/scw_thread_sensor.c \
../Core/Src/threads/scw_thread_suji.c 

OBJS += \
./Core/Src/threads/scw_thread_cli.o \
./Core/Src/threads/scw_thread_init.o \
./Core/Src/threads/scw_thread_sensor.o \
./Core/Src/threads/scw_thread_suji.o 

C_DEPS += \
./Core/Src/threads/scw_thread_cli.d \
./Core/Src/threads/scw_thread_init.d \
./Core/Src/threads/scw_thread_sensor.d \
./Core/Src/threads/scw_thread_suji.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/threads/%.o Core/Src/threads/%.su Core/Src/threads/%.cyclo: ../Core/Src/threads/%.c Core/Src/threads/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG '-DFW_VERSION="V_1_00_00"' -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../Core/Inc -I../Core/Src/stm -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-threads

clean-Core-2f-Src-2f-threads:
	-$(RM) ./Core/Src/threads/scw_thread_cli.cyclo ./Core/Src/threads/scw_thread_cli.d ./Core/Src/threads/scw_thread_cli.o ./Core/Src/threads/scw_thread_cli.su ./Core/Src/threads/scw_thread_init.cyclo ./Core/Src/threads/scw_thread_init.d ./Core/Src/threads/scw_thread_init.o ./Core/Src/threads/scw_thread_init.su ./Core/Src/threads/scw_thread_sensor.cyclo ./Core/Src/threads/scw_thread_sensor.d ./Core/Src/threads/scw_thread_sensor.o ./Core/Src/threads/scw_thread_sensor.su ./Core/Src/threads/scw_thread_suji.cyclo ./Core/Src/threads/scw_thread_suji.d ./Core/Src/threads/scw_thread_suji.o ./Core/Src/threads/scw_thread_suji.su

.PHONY: clean-Core-2f-Src-2f-threads

