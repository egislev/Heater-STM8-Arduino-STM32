
/**
  ********************************************************************************
  * @file    stm8s_tim1_OC1PolarityConfig.c
  * @author  MCD Application Team
  * @version V2.2.0
  * @date    30-September-2014
  * @brief   This file contains all the functions for the UART1 peripheral.
   ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software
  * distributed under the License is distributed on an "AS IS" BASIS,
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm8s_tim1.h"
#include "private/stm8s_tim1_private.h"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */

/** @}
  * @addtogroup TIM1_Public_Functions
  * @{
  */

/**
  * @brief  Configures the TIM1 Channel 1 polarity.
  * @param   TIM1_OCPolarity specifies the OC1 Polarity.
  * This parameter can be one of the following values:
  *                       - TIM1_OCPOLARITY_LOW: Output Compare active low
  *                       - TIM1_OCPOLARITY_HIGH: Output Compare active high
  * @retval None
  */
void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
{
  /* Check the parameters */
  assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
  
  /* Set or Reset the CC1P Bit */
  if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
  {
    TIM1->CCER1 |= TIM1_CCER1_CC1P;
  }
  else
  {
    TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
  }
}

/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
