;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module stm8s_adc1_GetConversionValue
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC1_GetConversionValue
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
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 48: uint16_t ADC1_GetConversionValue(void)
;	-----------------------------------------
;	 function ADC1_GetConversionValue
;	-----------------------------------------
_ADC1_GetConversionValue:
	sub	sp, #8
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 53: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
	ld	a, 0x5402
	bcp	a, #0x08
	jreq	00102$
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 56: templ = ADC1->DRL;
	ld	a, 0x5405
	ld	xl, a
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 58: temph = ADC1->DRH;
	ld	a, 0x5404
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 60: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
	clr	(0x08, sp)
	clr	(0x05, sp)
	or	a, (0x05, sp)
	rrwa	x
	or	a, (0x08, sp)
	ld	xl, a
	ldw	(0x03, sp), x
	jra	00103$
00102$:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 65: temph = ADC1->DRH;
	ld	a, 0x5404
	clrw	x
	ld	xl, a
	exgw	x, y
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 67: templ = ADC1->DRL;
	ld	a, 0x5405
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 69: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x01, sp), x
	ld	a, (0x02, sp)
	ld	xl, a
	ld	a, yl
	or	a, (0x01, sp)
	ld	xh, a
	ldw	(0x03, sp), x
00103$:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 72: return ((uint16_t)temph);
	ldw	x, (0x03, sp)
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 73: }
	addw	sp, #8
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
