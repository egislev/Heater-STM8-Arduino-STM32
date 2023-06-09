;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module stm8s_adc1_StartConversion
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC1_StartConversion
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_StartConversion.c: 50: void ADC1_StartConversion(void)
;	-----------------------------------------
;	 function ADC1_StartConversion
;	-----------------------------------------
_ADC1_StartConversion:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_StartConversion.c: 52: ADC1->CR1 |= ADC1_CR1_ADON;
	bset	21505, #0
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_StartConversion.c: 53: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
