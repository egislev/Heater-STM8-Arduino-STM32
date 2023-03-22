                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc1_ConversionConfig
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC1_ConversionConfig
                                     12 ;--------------------------------------------------------
                                     13 ; ram data
                                     14 ;--------------------------------------------------------
                                     15 	.area DATA
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area INITIALIZED
                                     20 ;--------------------------------------------------------
                                     21 ; absolute external ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area DABS (ABS)
                                     24 
                                     25 ; default segment ordering for linker
                                     26 	.area HOME
                                     27 	.area GSINIT
                                     28 	.area GSFINAL
                                     29 	.area CONST
                                     30 	.area INITIALIZER
                                     31 	.area CODE
                                     32 
                                     33 ;--------------------------------------------------------
                                     34 ; global & static initialisations
                                     35 ;--------------------------------------------------------
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area GSINIT
                                     40 ;--------------------------------------------------------
                                     41 ; Home
                                     42 ;--------------------------------------------------------
                                     43 	.area HOME
                                     44 	.area HOME
                                     45 ;--------------------------------------------------------
                                     46 ; code
                                     47 ;--------------------------------------------------------
                                     48 	.area CODE
                                     49 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ConversionConfig.c: 51: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
                                     50 ;	-----------------------------------------
                                     51 ;	 function ADC1_ConversionConfig
                                     52 ;	-----------------------------------------
      008350                         53 _ADC1_ConversionConfig:
                                     54 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ConversionConfig.c: 59: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
      008350 72 17 54 02      [ 1]   55 	bres	21506, #3
                                     56 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ConversionConfig.c: 61: ADC1->CR2 |= (uint8_t)(ADC1_Align);
      008354 C6 54 02         [ 1]   57 	ld	a, 0x5402
      008357 1A 05            [ 1]   58 	or	a, (0x05, sp)
      008359 C7 54 02         [ 1]   59 	ld	0x5402, a
                                     60 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ConversionConfig.c: 66: ADC1->CR1 |= ADC1_CR1_CONT;
      00835C C6 54 01         [ 1]   61 	ld	a, 0x5401
                                     62 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ConversionConfig.c: 63: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
      00835F 88               [ 1]   63 	push	a
      008360 7B 04            [ 1]   64 	ld	a, (0x04, sp)
      008362 4A               [ 1]   65 	dec	a
      008363 84               [ 1]   66 	pop	a
      008364 26 07            [ 1]   67 	jrne	00102$
                                     68 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ConversionConfig.c: 66: ADC1->CR1 |= ADC1_CR1_CONT;
      008366 AA 02            [ 1]   69 	or	a, #0x02
      008368 C7 54 01         [ 1]   70 	ld	0x5401, a
      00836B 20 05            [ 2]   71 	jra	00103$
      00836D                         72 00102$:
                                     73 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ConversionConfig.c: 71: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
      00836D A4 FD            [ 1]   74 	and	a, #0xfd
      00836F C7 54 01         [ 1]   75 	ld	0x5401, a
      008372                         76 00103$:
                                     77 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ConversionConfig.c: 75: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
      008372 C6 54 00         [ 1]   78 	ld	a, 0x5400
      008375 A4 F0            [ 1]   79 	and	a, #0xf0
      008377 C7 54 00         [ 1]   80 	ld	0x5400, a
                                     81 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ConversionConfig.c: 77: ADC1->CSR |= (uint8_t)(ADC1_Channel);
      00837A C6 54 00         [ 1]   82 	ld	a, 0x5400
      00837D 1A 04            [ 1]   83 	or	a, (0x04, sp)
      00837F C7 54 00         [ 1]   84 	ld	0x5400, a
                                     85 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ConversionConfig.c: 78: }
      008382 81               [ 4]   86 	ret
                                     87 	.area CODE
                                     88 	.area CONST
                                     89 	.area INITIALIZER
                                     90 	.area CABS (ABS)
