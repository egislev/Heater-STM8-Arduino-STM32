;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio_WriteReverse
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_WriteReverse
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
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_WriteReverse.c: 49: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteReverse
;	-----------------------------------------
_GPIO_WriteReverse:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_WriteReverse.c: 51: GPIOx->ODR ^= (uint8_t)PortPins;
	ldw	x, (0x03, sp)
	ld	a, (x)
	xor	a, (0x05, sp)
	ld	(x), a
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_WriteReverse.c: 52: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
