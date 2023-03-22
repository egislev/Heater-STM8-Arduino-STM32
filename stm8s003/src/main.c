#include <stdint.h>
#include <stm8s_clk.h>
#include <stm8s_gpio.h>
#include <stm8s_tim1.h>
#include <stm8s_flash.h>

uint8_t		bcnt = 0;
uint8_t		honcnt = 0;
uint8_t		hoffcnt = 0;
uint8_t		percents;
uint16_t	adcval = 0;
//-----------------------------------------------------------------------------------------------
void	assert_failed (uint8_t* file, uint32_t line) {
	(void)file;
	(void)line;
}
//-----------------------------------------------------------------------------------------------
void	blink	()
{
	if	(bcnt++ < 10) // 0.1 * 10
		return;
	bcnt = 0;
	GPIO_WriteReverse (GPIOA,GPIO_PIN_1);
}
//-----------------------------------------------------------------------------------------------
void	tick ()
{
	if	(adcval < 5)	{ // ADC triuksmas
		GPIO_WriteLow (GPIOA,GPIO_PIN_2);
		return;
	}
	if	(!honcnt && !hoffcnt)
		hoffcnt = 100 - (honcnt = percents);
	if	(honcnt)	{
		GPIO_WriteHigh (GPIOA,GPIO_PIN_2);
		honcnt--;
		return;
	}
	if	(hoffcnt)	{
		GPIO_WriteLow (GPIOA,GPIO_PIN_2);
		hoffcnt--;
	}
}
//-----------------------------------------------------------------------------------------------
uint16_t ADC_Read (/* ADC_CHANNEL_TypeDef ADC_Channel_Number */)
{
// !!! perziureti ar viskas reikalinga kiekvienu kvietimu
	uint16_t	result = 0;

	ADC1_DeInit (); 
	ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS,
             ADC1_CHANNEL_4 /* ADC_Channel_Number */,
             ADC1_PRESSEL_FCPU_D18,
             ADC1_EXTTRIG_TIM,
             DISABLE,
             ADC1_ALIGN_RIGHT,
             ADC1_SCHMITTTRIG_ALL,
             DISABLE);
	ADC1_Cmd (ENABLE);
// gal uztenka tiek ?
	ADC1_StartConversion ();
	while (ADC1_GetFlagStatus (ADC1_FLAG_EOC) == FALSE);
	result = ADC1_GetConversionValue ();
	ADC1_ClearFlag (ADC1_FLAG_EOC);
//
	ADC1_DeInit ();
}
//-----------------------------------------------------------------------------------------------
void main	(void)
{
    CLK_HSIPrescalerConfig (CLK_PRESCALER_HSIDIV1);	// 16 Mhz
    GPIO_DeInit (GPIOA);
    GPIO_Init (GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_OD_LOW_SLOW);
    GPIO_Init (GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_OD_LOW_SLOW);
    TIM1_TimeBaseInit (16000, TIM1_COUNTERMODE_UP, 16000, 1); // clock 1khz
    ADC1_DeInit ();  // ??
    TIM1_Cmd (ENABLE);

    while (1) {
	while	(TIM1_GetCounter() % 100);	// delay 0.1s
	adcval = ADC_Read ();
	percents = (uint8_t) ((uint32_t)adcval * (uint32_t)100 / (uint32_t)1023);	// 10bit
	blink ();
	tick ();
    }
}
