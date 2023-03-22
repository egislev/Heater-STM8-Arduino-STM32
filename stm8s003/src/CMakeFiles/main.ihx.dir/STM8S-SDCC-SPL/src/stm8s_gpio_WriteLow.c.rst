                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio_WriteLow
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_WriteLow
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
                                     49 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_WriteLow.c: 49: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                     50 ;	-----------------------------------------
                                     51 ;	 function GPIO_WriteLow
                                     52 ;	-----------------------------------------
      008450                         53 _GPIO_WriteLow:
      008450 88               [ 1]   54 	push	a
                                     55 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_WriteLow.c: 51: GPIOx->ODR &= (uint8_t)(~PortPins);
      008451 1E 04            [ 2]   56 	ldw	x, (0x04, sp)
      008453 F6               [ 1]   57 	ld	a, (x)
      008454 6B 01            [ 1]   58 	ld	(0x01, sp), a
      008456 7B 06            [ 1]   59 	ld	a, (0x06, sp)
      008458 43               [ 1]   60 	cpl	a
      008459 14 01            [ 1]   61 	and	a, (0x01, sp)
      00845B F7               [ 1]   62 	ld	(x), a
                                     63 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_WriteLow.c: 52: }
      00845C 84               [ 1]   64 	pop	a
      00845D 81               [ 4]   65 	ret
                                     66 	.area CODE
                                     67 	.area CONST
                                     68 	.area INITIALIZER
                                     69 	.area CABS (ABS)
