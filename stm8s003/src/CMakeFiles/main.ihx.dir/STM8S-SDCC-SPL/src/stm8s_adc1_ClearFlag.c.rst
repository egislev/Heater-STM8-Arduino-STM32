                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc1_ClearFlag
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC1_ClearFlag
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
                                     49 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ClearFlag.c: 47: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
                                     50 ;	-----------------------------------------
                                     51 ;	 function ADC1_ClearFlag
                                     52 ;	-----------------------------------------
      0082A6                         53 _ADC1_ClearFlag:
      0082A6 52 05            [ 2]   54 	sub	sp, #5
                                     55 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ClearFlag.c: 54: if ((Flag & 0x0F) == 0x01)
      0082A8 7B 08            [ 1]   56 	ld	a, (0x08, sp)
      0082AA 0F 04            [ 1]   57 	clr	(0x04, sp)
      0082AC 88               [ 1]   58 	push	a
      0082AD A4 0F            [ 1]   59 	and	a, #0x0f
      0082AF 97               [ 1]   60 	ld	xl, a
      0082B0 4F               [ 1]   61 	clr	a
      0082B1 95               [ 1]   62 	ld	xh, a
      0082B2 84               [ 1]   63 	pop	a
      0082B3 5A               [ 2]   64 	decw	x
      0082B4 26 06            [ 1]   65 	jrne	00108$
                                     66 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ClearFlag.c: 57: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
      0082B6 72 1D 54 03      [ 1]   67 	bres	21507, #6
      0082BA 20 57            [ 2]   68 	jra	00110$
      0082BC                         69 00108$:
                                     70 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ClearFlag.c: 59: else if ((Flag & 0xF0) == 0x10)
      0082BC A4 F0            [ 1]   71 	and	a, #0xf0
      0082BE 97               [ 1]   72 	ld	xl, a
      0082BF 4F               [ 1]   73 	clr	a
      0082C0 95               [ 1]   74 	ld	xh, a
      0082C1 A3 00 10         [ 2]   75 	cpw	x, #0x0010
      0082C4 26 40            [ 1]   76 	jrne	00105$
                                     77 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ClearFlag.c: 62: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      0082C6 7B 08            [ 1]   78 	ld	a, (0x08, sp)
      0082C8 A4 0F            [ 1]   79 	and	a, #0x0f
                                     80 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ClearFlag.c: 63: if (temp < 8)
      0082CA 97               [ 1]   81 	ld	xl, a
      0082CB A1 08            [ 1]   82 	cp	a, #0x08
      0082CD 24 1A            [ 1]   83 	jrnc	00102$
                                     84 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ClearFlag.c: 65: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      0082CF C6 54 0D         [ 1]   85 	ld	a, 0x540d
      0082D2 6B 03            [ 1]   86 	ld	(0x03, sp), a
      0082D4 A6 01            [ 1]   87 	ld	a, #0x01
      0082D6 88               [ 1]   88 	push	a
      0082D7 9F               [ 1]   89 	ld	a, xl
      0082D8 4D               [ 1]   90 	tnz	a
      0082D9 27 05            [ 1]   91 	jreq	00135$
      0082DB                         92 00134$:
      0082DB 08 01            [ 1]   93 	sll	(1, sp)
      0082DD 4A               [ 1]   94 	dec	a
      0082DE 26 FB            [ 1]   95 	jrne	00134$
      0082E0                         96 00135$:
      0082E0 84               [ 1]   97 	pop	a
      0082E1 43               [ 1]   98 	cpl	a
      0082E2 14 03            [ 1]   99 	and	a, (0x03, sp)
      0082E4 C7 54 0D         [ 1]  100 	ld	0x540d, a
      0082E7 20 2A            [ 2]  101 	jra	00110$
      0082E9                        102 00102$:
                                    103 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ClearFlag.c: 69: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      0082E9 C6 54 0C         [ 1]  104 	ld	a, 0x540c
      0082EC 6B 02            [ 1]  105 	ld	(0x02, sp), a
      0082EE 1D 00 08         [ 2]  106 	subw	x, #8
      0082F1 A6 01            [ 1]  107 	ld	a, #0x01
      0082F3 88               [ 1]  108 	push	a
      0082F4 9F               [ 1]  109 	ld	a, xl
      0082F5 4D               [ 1]  110 	tnz	a
      0082F6 27 05            [ 1]  111 	jreq	00137$
      0082F8                        112 00136$:
      0082F8 08 01            [ 1]  113 	sll	(1, sp)
      0082FA 4A               [ 1]  114 	dec	a
      0082FB 26 FB            [ 1]  115 	jrne	00136$
      0082FD                        116 00137$:
      0082FD 84               [ 1]  117 	pop	a
      0082FE 43               [ 1]  118 	cpl	a
      0082FF 14 02            [ 1]  119 	and	a, (0x02, sp)
      008301 C7 54 0C         [ 1]  120 	ld	0x540c, a
      008304 20 0D            [ 2]  121 	jra	00110$
      008306                        122 00105$:
                                    123 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ClearFlag.c: 74: ADC1->CSR &= (uint8_t) (~Flag);
      008306 C6 54 00         [ 1]  124 	ld	a, 0x5400
      008309 6B 01            [ 1]  125 	ld	(0x01, sp), a
      00830B 7B 08            [ 1]  126 	ld	a, (0x08, sp)
      00830D 43               [ 1]  127 	cpl	a
      00830E 14 01            [ 1]  128 	and	a, (0x01, sp)
      008310 C7 54 00         [ 1]  129 	ld	0x5400, a
      008313                        130 00110$:
                                    131 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_ClearFlag.c: 76: }
      008313 5B 05            [ 2]  132 	addw	sp, #5
      008315 81               [ 4]  133 	ret
                                    134 	.area CODE
                                    135 	.area CONST
                                    136 	.area INITIALIZER
                                    137 	.area CABS (ABS)
