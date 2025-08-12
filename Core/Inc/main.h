/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdbool.h>
#include <inttypes.h>

#include "cmsis_os.h"
#include "timers.h"
#include "usart.h"
#include "rtc.h"
#include "spi.h"
#include "i2c.h"
#include "adc.h"

#include "stm32f1xx_ll_cortex.h"
#include "stm32f1xx_ll_utils.h"
#include "stm32f1xx_ll_system.h"
#include "stm32f1xx_ll_adc.h"

#include "utilities_common.h"
#include "head_console.h"
#include "head_trace.h"
#include "head_thread.h"

#include "stm_queue.h"
#include "stm_list.h"
#include "stm_logging.h"

#include "head_def.h"
#include "head_type.h"
#include "head_adc.h"
#include "sht2x.h"



#include "head_data.h"
#include "head_func.h"

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define SPI1_CS_Pin GPIO_PIN_4
#define SPI1_CS_GPIO_Port GPIOA
#define KEY_IN1_Pin GPIO_PIN_4
#define KEY_IN1_GPIO_Port GPIOC
#define KEY_IN2_Pin GPIO_PIN_5
#define KEY_IN2_GPIO_Port GPIOC
#define KEY_OUT1_Pin GPIO_PIN_0
#define KEY_OUT1_GPIO_Port GPIOB
#define KEY_OUT2_Pin GPIO_PIN_1
#define KEY_OUT2_GPIO_Port GPIOB
#define KEY_OUT2B2_Pin GPIO_PIN_2
#define KEY_OUT2B2_GPIO_Port GPIOB
#define KEY_OUT4_Pin GPIO_PIN_10
#define KEY_OUT4_GPIO_Port GPIOB
#define MUTE_Pin GPIO_PIN_11
#define MUTE_GPIO_Port GPIOB
#define SSR_1_Pin GPIO_PIN_12
#define SSR_1_GPIO_Port GPIOB
#define SSR_2_Pin GPIO_PIN_13
#define SSR_2_GPIO_Port GPIOB
#define SSR_3_Pin GPIO_PIN_14
#define SSR_3_GPIO_Port GPIOB
#define SSR_4_Pin GPIO_PIN_15
#define SSR_4_GPIO_Port GPIOB
#define _5V_SW1_Pin GPIO_PIN_6
#define _5V_SW1_GPIO_Port GPIOC
#define _5V_SW2_Pin GPIO_PIN_7
#define _5V_SW2_GPIO_Port GPIOC
#define _12V_SW2_Pin GPIO_PIN_8
#define _12V_SW2_GPIO_Port GPIOC
#define _12V_SW1_Pin GPIO_PIN_9
#define _12V_SW1_GPIO_Port GPIOC
#define PC_RESET_Pin GPIO_PIN_8
#define PC_RESET_GPIO_Port GPIOA
#define DOOR_2_Pin GPIO_PIN_11
#define DOOR_2_GPIO_Port GPIOA
#define DOOR_1_Pin GPIO_PIN_12
#define DOOR_1_GPIO_Port GPIOA
#define TX_TO_PC_Pin GPIO_PIN_10
#define TX_TO_PC_GPIO_Port GPIOC
#define RX_FROM_PC_Pin GPIO_PIN_11
#define RX_FROM_PC_GPIO_Port GPIOC

/* USER CODE BEGIN Private defines */

// Relay control
#define ssr1_on				HAL_GPIO_WritePin(SSR_1_GPIO_Port, SSR_1_Pin, GPIO_PIN_RESET)
#define ssr1_off			HAL_GPIO_WritePin(SSR_1_GPIO_Port, SSR_1_Pin, GPIO_PIN_SET)

#define ssr2_on				HAL_GPIO_WritePin(SSR_2_GPIO_Port, SSR_2_Pin, GPIO_PIN_RESET)
#define ssr2_off			HAL_GPIO_WritePin(SSR_2_GPIO_Port, SSR_2_Pin, GPIO_PIN_SET)

#define ssr3_on				HAL_GPIO_WritePin(SSR_3_GPIO_Port, SSR_3_Pin, GPIO_PIN_RESET)
#define ssr3_off			HAL_GPIO_WritePin(SSR_3_GPIO_Port, SSR_3_Pin, GPIO_PIN_SET)

#define ssr4_on				HAL_GPIO_WritePin(SSR_4_GPIO_Port, SSR_4_Pin, GPIO_PIN_RESET)
#define ssr4_off			HAL_GPIO_WritePin(SSR_4_GPIO_Port, SSR_4_Pin, GPIO_PIN_SET)

// Audio amp control
#define mute_on				HAL_GPIO_WritePin(MUTE_GPIO_Port, MUTE_Pin, GPIO_PIN_SET)
#define mute_off			HAL_GPIO_WritePin(MUTE_GPIO_Port, MUTE_Pin, GPIO_PIN_RESET)

// 5V, 12V control
#define _5v_sw1_on			HAL_GPIO_WritePin(_5V_SW1_GPIO_Port, _5V_SW1_Pin, GPIO_PIN_SET)
#define _5v_sw1_off			HAL_GPIO_WritePin(_5V_SW1_GPIO_Port, _5V_SW1_Pin, GPIO_PIN_RESET)

#define _5v_sw2_on			HAL_GPIO_WritePin(_5V_SW2_GPIO_Port, _5V_SW2_Pin, GPIO_PIN_SET)
#define _5v_sw2_off			HAL_GPIO_WritePin(_5V_SW2_GPIO_Port, _5V_SW2_Pin, GPIO_PIN_RESET)

#define _12v_sw1_on			HAL_GPIO_WritePin(_12V_SW1_GPIO_Port, _12V_SW1_Pin, GPIO_PIN_SET)
#define _12v_sw1_off		HAL_GPIO_WritePin(_12V_SW1_GPIO_Port, _12V_SW1_Pin, GPIO_PIN_RESET)

#define _12v_sw2_on			HAL_GPIO_WritePin(_12V_SW2_GPIO_Port, _12V_SW2_Pin, GPIO_PIN_SET)
#define _12v_sw2_off		HAL_GPIO_WritePin(_12V_SW2_GPIO_Port, _12V_SW2_Pin, GPIO_PIN_RESET)

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
