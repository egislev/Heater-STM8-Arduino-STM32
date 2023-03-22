;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module stm8s_gpio_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_DeInit
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
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_DeInit.c: 46: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_DeInit
;	-----------------------------------------
_GPIO_DeInit:
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_DeInit.c: 48: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
	ldw	y, (0x03, sp)
	clr	(y)
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_DeInit.c: 49: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
	ldw	x, y
	incw	x
	incw	x
	clr	(x)
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_DeInit.c: 50: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
	ldw	x, y
	clr	(0x0003, x)
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_DeInit.c: 51: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
	ldw	x, y
	clr	(0x0004, x)
;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_DeInit.c: 52: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
