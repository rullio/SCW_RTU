/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    gpio.c
  * @brief   This file provides code for the configuration
  *          of all used GPIO pins.
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

/* Includes ------------------------------------------------------------------*/
#include "gpio.h"

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/*----------------------------------------------------------------------------*/
/* Configure GPIO                                                             */
/*----------------------------------------------------------------------------*/
/* USER CODE BEGIN 1 */

/* USER CODE END 1 */

/** Configure pins
*/
void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin|PC_RESET_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, KEY_IN1_Pin|KEY_IN2_Pin|_5V_SW1_Pin|_5V_SW2_Pin
                          |_12V_SW2_Pin|_12V_SW1_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, KEY_OUT1_Pin|KEY_OUT2_Pin|KEY_OUT2B2_Pin|KEY_OUT4_Pin
                          |MUTE_Pin|SSR_1_Pin|SSR_2_Pin|SSR_3_Pin
                          |SSR_4_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : SPI1_CS_Pin */
  GPIO_InitStruct.Pin = SPI1_CS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(SPI1_CS_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : KEY_IN1_Pin KEY_IN2_Pin _5V_SW1_Pin _5V_SW2_Pin
                           _12V_SW2_Pin _12V_SW1_Pin */
  GPIO_InitStruct.Pin = KEY_IN1_Pin|KEY_IN2_Pin|_5V_SW1_Pin|_5V_SW2_Pin
                          |_12V_SW2_Pin|_12V_SW1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : KEY_OUT1_Pin KEY_OUT2_Pin KEY_OUT2B2_Pin KEY_OUT4_Pin
                           MUTE_Pin SSR_1_Pin SSR_2_Pin SSR_3_Pin
                           SSR_4_Pin */
  GPIO_InitStruct.Pin = KEY_OUT1_Pin|KEY_OUT2_Pin|KEY_OUT2B2_Pin|KEY_OUT4_Pin
                          |MUTE_Pin|SSR_1_Pin|SSR_2_Pin|SSR_3_Pin
                          |SSR_4_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : PC_RESET_Pin */
  GPIO_InitStruct.Pin = PC_RESET_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(PC_RESET_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : DOOR_2_Pin DOOR_1_Pin */
  GPIO_InitStruct.Pin = DOOR_2_Pin|DOOR_1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

}

/* USER CODE BEGIN 2 */

/* USER CODE END 2 */
