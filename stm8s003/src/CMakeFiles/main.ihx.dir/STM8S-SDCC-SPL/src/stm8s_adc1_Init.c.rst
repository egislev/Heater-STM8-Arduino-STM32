                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc1_Init
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC1_ExternalTriggerConfig
                                     12 	.globl _ADC1_ConversionConfig
                                     13 	.globl _ADC1_SchmittTriggerConfig
                                     14 	.globl _ADC1_PrescalerConfig
                                     15 	.globl _ADC1_Init
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                                     53 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_Init.c: 61: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
                                     54 ;	-----------------------------------------
                                     55 ;	 function ADC1_Init
                                     56 ;	-----------------------------------------
      008211                         57 _ADC1_Init:
                                     58 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_Init.c: 76: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
      008211 7B 08            [ 1]   59 	ld	a, (0x08, sp)
      008213 88               [ 1]   60 	push	a
      008214 7B 05            [ 1]   61 	ld	a, (0x05, sp)
      008216 88               [ 1]   62 	push	a
      008217 7B 05            [ 1]   63 	ld	a, (0x05, sp)
      008219 88               [ 1]   64 	push	a
      00821A CD 83 50         [ 4]   65 	call	_ADC1_ConversionConfig
      00821D 5B 03            [ 2]   66 	addw	sp, #3
                                     67 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_Init.c: 78: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
      00821F 7B 05            [ 1]   68 	ld	a, (0x05, sp)
      008221 88               [ 1]   69 	push	a
      008222 CD 83 3F         [ 4]   70 	call	_ADC1_PrescalerConfig
      008225 84               [ 1]   71 	pop	a
                                     72 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_Init.c: 83: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
      008226 7B 07            [ 1]   73 	ld	a, (0x07, sp)
      008228 88               [ 1]   74 	push	a
      008229 7B 07            [ 1]   75 	ld	a, (0x07, sp)
      00822B 88               [ 1]   76 	push	a
      00822C CD 83 16         [ 4]   77 	call	_ADC1_ExternalTriggerConfig
      00822F 5B 02            [ 2]   78 	addw	sp, #2
                                     79 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_Init.c: 88: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
      008231 7B 0A            [ 1]   80 	ld	a, (0x0a, sp)
      008233 88               [ 1]   81 	push	a
      008234 7B 0A            [ 1]   82 	ld	a, (0x0a, sp)
      008236 88               [ 1]   83 	push	a
      008237 CD 83 C3         [ 4]   84 	call	_ADC1_SchmittTriggerConfig
      00823A 5B 02            [ 2]   85 	addw	sp, #2
                                     86 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_Init.c: 91: ADC1->CR1 |= ADC1_CR1_ADON;
      00823C 72 10 54 01      [ 1]   87 	bset	21505, #0
                                     88 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_Init.c: 92: }
      008240 81               [ 4]   89 	ret
                                     90 	.area CODE
                                     91 	.area CONST
                                     92 	.area INITIALIZER
                                     93 	.area CABS (ABS)
