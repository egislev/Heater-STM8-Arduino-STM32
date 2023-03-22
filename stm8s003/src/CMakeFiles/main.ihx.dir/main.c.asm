;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ADC_Read
	.globl _tick
	.globl _blink
	.globl _assert_failed
	.globl _CLK_HSIPrescalerConfig
	.globl _TIM1_GetCounter
	.globl _TIM1_Cmd
	.globl _TIM1_TimeBaseInit
	.globl _GPIO_WriteReverse
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _GPIO_Init
	.globl _GPIO_DeInit
	.globl _ADC1_ClearFlag
	.globl _ADC1_GetFlagStatus
	.globl _ADC1_GetConversionValue
	.globl _ADC1_StartConversion
	.globl _ADC1_Cmd
	.globl _ADC1_Init
	.globl _ADC1_DeInit
	.globl _adcval
	.globl _hoffcnt
	.globl _honcnt
	.globl _bcnt
	.globl _percents
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_percents::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_bcnt::
	.ds 1
_honcnt::
	.ds 1
_hoffcnt::
	.ds 1
_adcval::
	.ds 2
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 13: void	assert_failed (uint8_t* file, uint32_t line) {
;	-----------------------------------------
;	 function assert_failed
;	-----------------------------------------
_assert_failed:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 15: (void)line;
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 16: }
	ret
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 18: void	blink	()
;	-----------------------------------------
;	 function blink
;	-----------------------------------------
_blink:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 20: if	(bcnt++ < 10) // 0.1 * 10
	ld	a, _bcnt+0
	inc	_bcnt+0
	cp	a, #0x0a
	jrnc	00102$
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 21: return;
	ret
00102$:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 22: bcnt = 0;
	clr	_bcnt+0
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 23: GPIO_WriteReverse (GPIOA,GPIO_PIN_1);
	push	#0x02
	push	#0x00
	push	#0x50
	call	_GPIO_WriteReverse
	addw	sp, #3
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 24: }
	ret
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 26: void	tick ()
;	-----------------------------------------
;	 function tick
;	-----------------------------------------
_tick:
	push	a
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 28: if	(adcval < 5)	{ // ADC triuksmas
	ldw	x, _adcval+0
	cpw	x, #0x0005
	jrnc	00102$
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 29: GPIO_WriteLow (GPIOA,GPIO_PIN_2);
	push	#0x04
	push	#0x00
	push	#0x50
	call	_GPIO_WriteLow
	addw	sp, #3
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 30: return;
	jra	00110$
00102$:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 32: if	(!honcnt && !hoffcnt)
	tnz	_honcnt+0
	jrne	00104$
	tnz	_hoffcnt+0
	jrne	00104$
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 33: hoffcnt = 100 - (honcnt = percents);
	ld	a, _percents+0
	ld	_honcnt+0, a
	ld	(0x01, sp), a
	ld	a, #0x64
	sub	a, (0x01, sp)
	ld	_hoffcnt+0, a
00104$:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 34: if	(honcnt)	{
	tnz	_honcnt+0
	jreq	00107$
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 35: GPIO_WriteHigh (GPIOA,GPIO_PIN_2);
	push	#0x04
	push	#0x00
	push	#0x50
	call	_GPIO_WriteHigh
	addw	sp, #3
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 36: honcnt--;
	dec	_honcnt+0
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 37: return;
	jra	00110$
00107$:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 39: if	(hoffcnt)	{
	tnz	_hoffcnt+0
	jreq	00110$
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 40: GPIO_WriteLow (GPIOA,GPIO_PIN_2);
	push	#0x04
	push	#0x00
	push	#0x50
	call	_GPIO_WriteLow
	addw	sp, #3
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 41: hoffcnt--;
	dec	_hoffcnt+0
00110$:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 43: }
	pop	a
	ret
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 45: uint16_t ADC_Read (/* ADC_CHANNEL_TypeDef ADC_Channel_Number */)
;	-----------------------------------------
;	 function ADC_Read
;	-----------------------------------------
_ADC_Read:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 49: ADC1_DeInit (); 
	call	_ADC1_DeInit
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 50: ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS,
	push	#0x00
	push	#0xff
	push	#0x08
	push	#0x00
	push	#0x00
	push	#0x70
	push	#0x04
	push	#0x01
	call	_ADC1_Init
	addw	sp, #8
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 58: ADC1_Cmd (ENABLE);
	push	#0x01
	call	_ADC1_Cmd
	pop	a
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 60: ADC1_StartConversion ();
	call	_ADC1_StartConversion
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 61: while (ADC1_GetFlagStatus (ADC1_FLAG_EOC) == FALSE);
00101$:
	push	#0x80
	call	_ADC1_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00101$
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 62: result = ADC1_GetConversionValue ();
	call	_ADC1_GetConversionValue
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 63: ADC1_ClearFlag (ADC1_FLAG_EOC);
	push	#0x80
	call	_ADC1_ClearFlag
	pop	a
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 65: ADC1_DeInit ();
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 66: }
	jp	_ADC1_DeInit
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 68: void main	(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 70: CLK_HSIPrescalerConfig (CLK_PRESCALER_HSIDIV1);	// 16 Mhz
	push	#0x00
	call	_CLK_HSIPrescalerConfig
	pop	a
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 71: GPIO_DeInit (GPIOA);
	push	#0x00
	push	#0x50
	call	_GPIO_DeInit
	addw	sp, #2
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 72: GPIO_Init (GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_OD_LOW_SLOW);
	push	#0x80
	push	#0x02
	push	#0x00
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 73: GPIO_Init (GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_OD_LOW_SLOW);
	push	#0x80
	push	#0x04
	push	#0x00
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 74: TIM1_TimeBaseInit (16000, TIM1_COUNTERMODE_UP, 16000, 1); // clock 1khz
	push	#0x01
	push	#0x80
	push	#0x3e
	push	#0x00
	push	#0x80
	push	#0x3e
	call	_TIM1_TimeBaseInit
	addw	sp, #6
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 75: ADC1_DeInit ();  // ??
	call	_ADC1_DeInit
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 76: TIM1_Cmd (ENABLE);
	push	#0x01
	call	_TIM1_Cmd
	pop	a
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 79: while	(TIM1_GetCounter() % 100);	// delay 0.1s
00101$:
	call	_TIM1_GetCounter
	ldw	y, #0x0064
	divw	x, y
	tnzw	y
	jrne	00101$
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 80: adcval = ADC_Read ();
	call	_ADC_Read
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 81: percents = (uint8_t) ((uint32_t)adcval * (uint32_t)100 / (uint32_t)1023);	// 10bit
	ldw	_adcval+0, x
	pushw	x
	push	#0x64
	push	#0x00
	call	___muluint2ulong
	addw	sp, #4
	push	#0xff
	push	#0x03
	push	#0x00
	push	#0x00
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ld	a, xl
	ld	_percents+0, a
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 82: blink ();
	call	_blink
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 83: tick ();
	call	_tick
	jra	00101$
;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 85: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__bcnt:
	.db #0x00	; 0
__xinit__honcnt:
	.db #0x00	; 0
__xinit__hoffcnt:
	.db #0x00	; 0
__xinit__adcval:
	.dw #0x0000
	.area CABS (ABS)
