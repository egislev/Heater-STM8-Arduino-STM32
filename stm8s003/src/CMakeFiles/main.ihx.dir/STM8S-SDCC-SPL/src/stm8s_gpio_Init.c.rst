                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio_Init
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_Init
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
                                     49 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 51: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     50 ;	-----------------------------------------
                                     51 ;	 function GPIO_Init
                                     52 ;	-----------------------------------------
      008158                         53 _GPIO_Init:
      008158 52 05            [ 2]   54 	sub	sp, #5
                                     55 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 61: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00815A 16 08            [ 2]   56 	ldw	y, (0x08, sp)
      00815C 93               [ 1]   57 	ldw	x, y
      00815D 1C 00 04         [ 2]   58 	addw	x, #0x0004
      008160 1F 04            [ 2]   59 	ldw	(0x04, sp), x
      008162 F6               [ 1]   60 	ld	a, (x)
      008163 88               [ 1]   61 	push	a
      008164 7B 0B            [ 1]   62 	ld	a, (0x0b, sp)
      008166 43               [ 1]   63 	cpl	a
      008167 6B 04            [ 1]   64 	ld	(0x04, sp), a
      008169 84               [ 1]   65 	pop	a
      00816A 14 03            [ 1]   66 	and	a, (0x03, sp)
      00816C 1E 04            [ 2]   67 	ldw	x, (0x04, sp)
      00816E F7               [ 1]   68 	ld	(x), a
                                     69 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 78: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00816F 93               [ 1]   70 	ldw	x, y
      008170 5C               [ 1]   71 	incw	x
      008171 5C               [ 1]   72 	incw	x
      008172 1F 01            [ 2]   73 	ldw	(0x01, sp), x
                                     74 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 67: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      008174 0D 0B            [ 1]   75 	tnz	(0x0b, sp)
      008176 2A 1E            [ 1]   76 	jrpl	00105$
                                     77 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 71: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008178 90 F6            [ 1]   78 	ld	a, (y)
                                     79 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 69: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      00817A 88               [ 1]   80 	push	a
      00817B 7B 0C            [ 1]   81 	ld	a, (0x0c, sp)
      00817D A5 10            [ 1]   82 	bcp	a, #0x10
      00817F 84               [ 1]   83 	pop	a
      008180 27 06            [ 1]   84 	jreq	00102$
                                     85 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 71: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008182 1A 0A            [ 1]   86 	or	a, (0x0a, sp)
      008184 90 F7            [ 1]   87 	ld	(y), a
      008186 20 04            [ 2]   88 	jra	00103$
      008188                         89 00102$:
                                     90 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 75: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      008188 14 03            [ 1]   91 	and	a, (0x03, sp)
      00818A 90 F7            [ 1]   92 	ld	(y), a
      00818C                         93 00103$:
                                     94 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 78: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00818C 1E 01            [ 2]   95 	ldw	x, (0x01, sp)
      00818E F6               [ 1]   96 	ld	a, (x)
      00818F 1A 0A            [ 1]   97 	or	a, (0x0a, sp)
      008191 1E 01            [ 2]   98 	ldw	x, (0x01, sp)
      008193 F7               [ 1]   99 	ld	(x), a
      008194 20 08            [ 2]  100 	jra	00106$
      008196                        101 00105$:
                                    102 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 83: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008196 1E 01            [ 2]  103 	ldw	x, (0x01, sp)
      008198 F6               [ 1]  104 	ld	a, (x)
      008199 14 03            [ 1]  105 	and	a, (0x03, sp)
      00819B 1E 01            [ 2]  106 	ldw	x, (0x01, sp)
      00819D F7               [ 1]  107 	ld	(x), a
      00819E                        108 00106$:
                                    109 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 92: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00819E 93               [ 1]  110 	ldw	x, y
      00819F 1C 00 03         [ 2]  111 	addw	x, #0x0003
      0081A2 F6               [ 1]  112 	ld	a, (x)
                                    113 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 90: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      0081A3 88               [ 1]  114 	push	a
      0081A4 7B 0C            [ 1]  115 	ld	a, (0x0c, sp)
      0081A6 A5 40            [ 1]  116 	bcp	a, #0x40
      0081A8 84               [ 1]  117 	pop	a
      0081A9 27 05            [ 1]  118 	jreq	00108$
                                    119 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 92: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      0081AB 1A 0A            [ 1]  120 	or	a, (0x0a, sp)
      0081AD F7               [ 1]  121 	ld	(x), a
      0081AE 20 03            [ 2]  122 	jra	00109$
      0081B0                        123 00108$:
                                    124 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 96: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      0081B0 14 03            [ 1]  125 	and	a, (0x03, sp)
      0081B2 F7               [ 1]  126 	ld	(x), a
      0081B3                        127 00109$:
                                    128 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 61: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0081B3 1E 04            [ 2]  129 	ldw	x, (0x04, sp)
      0081B5 F6               [ 1]  130 	ld	a, (x)
                                    131 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 103: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      0081B6 88               [ 1]  132 	push	a
      0081B7 7B 0C            [ 1]  133 	ld	a, (0x0c, sp)
      0081B9 A5 20            [ 1]  134 	bcp	a, #0x20
      0081BB 84               [ 1]  135 	pop	a
      0081BC 27 07            [ 1]  136 	jreq	00111$
                                    137 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 105: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      0081BE 1A 0A            [ 1]  138 	or	a, (0x0a, sp)
      0081C0 1E 04            [ 2]  139 	ldw	x, (0x04, sp)
      0081C2 F7               [ 1]  140 	ld	(x), a
      0081C3 20 05            [ 2]  141 	jra	00113$
      0081C5                        142 00111$:
                                    143 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 109: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0081C5 14 03            [ 1]  144 	and	a, (0x03, sp)
      0081C7 1E 04            [ 2]  145 	ldw	x, (0x04, sp)
      0081C9 F7               [ 1]  146 	ld	(x), a
      0081CA                        147 00113$:
                                    148 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_gpio_Init.c: 111: }
      0081CA 5B 05            [ 2]  149 	addw	sp, #5
      0081CC 81               [ 4]  150 	ret
                                    151 	.area CODE
                                    152 	.area CONST
                                    153 	.area INITIALIZER
                                    154 	.area CABS (ABS)
