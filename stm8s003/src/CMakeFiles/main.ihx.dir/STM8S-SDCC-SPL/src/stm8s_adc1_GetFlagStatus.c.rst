                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc1_GetFlagStatus
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC1_GetFlagStatus
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
                                     49 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetFlagStatus.c: 47: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
                                     50 ;	-----------------------------------------
                                     51 ;	 function ADC1_GetFlagStatus
                                     52 ;	-----------------------------------------
      008241                         53 _ADC1_GetFlagStatus:
      008241 52 04            [ 2]   54 	sub	sp, #4
                                     55 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetFlagStatus.c: 55: if ((Flag & 0x0F) == 0x01)
      008243 7B 07            [ 1]   56 	ld	a, (0x07, sp)
      008245 6B 02            [ 1]   57 	ld	(0x02, sp), a
      008247 0F 01            [ 1]   58 	clr	(0x01, sp)
      008249 7B 02            [ 1]   59 	ld	a, (0x02, sp)
      00824B A4 0F            [ 1]   60 	and	a, #0x0f
      00824D 97               [ 1]   61 	ld	xl, a
      00824E 4F               [ 1]   62 	clr	a
      00824F 95               [ 1]   63 	ld	xh, a
      008250 5A               [ 2]   64 	decw	x
      008251 26 07            [ 1]   65 	jrne	00108$
                                     66 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetFlagStatus.c: 58: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
      008253 C6 54 03         [ 1]   67 	ld	a, 0x5403
      008256 A4 40            [ 1]   68 	and	a, #0x40
      008258 20 49            [ 2]   69 	jra	00109$
      00825A                         70 00108$:
                                     71 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetFlagStatus.c: 60: else if ((Flag & 0xF0) == 0x10)
      00825A 7B 02            [ 1]   72 	ld	a, (0x02, sp)
      00825C A4 F0            [ 1]   73 	and	a, #0xf0
      00825E 97               [ 1]   74 	ld	xl, a
      00825F 4F               [ 1]   75 	clr	a
      008260 95               [ 1]   76 	ld	xh, a
      008261 A3 00 10         [ 2]   77 	cpw	x, #0x0010
      008264 26 38            [ 1]   78 	jrne	00105$
                                     79 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetFlagStatus.c: 63: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      008266 7B 07            [ 1]   80 	ld	a, (0x07, sp)
      008268 A4 0F            [ 1]   81 	and	a, #0x0f
                                     82 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetFlagStatus.c: 64: if (temp < 8)
      00826A 97               [ 1]   83 	ld	xl, a
      00826B A1 08            [ 1]   84 	cp	a, #0x08
      00826D 24 16            [ 1]   85 	jrnc	00102$
                                     86 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetFlagStatus.c: 66: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      00826F C6 54 0D         [ 1]   87 	ld	a, 0x540d
      008272 6B 04            [ 1]   88 	ld	(0x04, sp), a
      008274 A6 01            [ 1]   89 	ld	a, #0x01
      008276 88               [ 1]   90 	push	a
      008277 9F               [ 1]   91 	ld	a, xl
      008278 4D               [ 1]   92 	tnz	a
      008279 27 05            [ 1]   93 	jreq	00135$
      00827B                         94 00134$:
      00827B 08 01            [ 1]   95 	sll	(1, sp)
      00827D 4A               [ 1]   96 	dec	a
      00827E 26 FB            [ 1]   97 	jrne	00134$
      008280                         98 00135$:
      008280 84               [ 1]   99 	pop	a
      008281 14 04            [ 1]  100 	and	a, (0x04, sp)
      008283 20 1E            [ 2]  101 	jra	00109$
      008285                        102 00102$:
                                    103 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetFlagStatus.c: 70: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      008285 C6 54 0C         [ 1]  104 	ld	a, 0x540c
      008288 6B 03            [ 1]  105 	ld	(0x03, sp), a
      00828A 1D 00 08         [ 2]  106 	subw	x, #8
      00828D A6 01            [ 1]  107 	ld	a, #0x01
      00828F 88               [ 1]  108 	push	a
      008290 9F               [ 1]  109 	ld	a, xl
      008291 4D               [ 1]  110 	tnz	a
      008292 27 05            [ 1]  111 	jreq	00137$
      008294                        112 00136$:
      008294 08 01            [ 1]  113 	sll	(1, sp)
      008296 4A               [ 1]  114 	dec	a
      008297 26 FB            [ 1]  115 	jrne	00136$
      008299                        116 00137$:
      008299 84               [ 1]  117 	pop	a
      00829A 14 03            [ 1]  118 	and	a, (0x03, sp)
      00829C 20 05            [ 2]  119 	jra	00109$
      00829E                        120 00105$:
                                    121 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetFlagStatus.c: 75: flagstatus = (uint8_t)(ADC1->CSR & Flag);
      00829E C6 54 00         [ 1]  122 	ld	a, 0x5400
      0082A1 14 07            [ 1]  123 	and	a, (0x07, sp)
      0082A3                        124 00109$:
                                    125 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetFlagStatus.c: 77: return ((FlagStatus)flagstatus);
                                    126 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetFlagStatus.c: 79: }
      0082A3 5B 04            [ 2]  127 	addw	sp, #4
      0082A5 81               [ 4]  128 	ret
                                    129 	.area CODE
                                    130 	.area CONST
                                    131 	.area INITIALIZER
                                    132 	.area CABS (ABS)
