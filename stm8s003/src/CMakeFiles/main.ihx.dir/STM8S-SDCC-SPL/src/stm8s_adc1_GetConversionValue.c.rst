                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc1_GetConversionValue
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC1_GetConversionValue
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
                                     49 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 48: uint16_t ADC1_GetConversionValue(void)
                                     50 ;	-----------------------------------------
                                     51 ;	 function ADC1_GetConversionValue
                                     52 ;	-----------------------------------------
      008383                         53 _ADC1_GetConversionValue:
      008383 52 08            [ 2]   54 	sub	sp, #8
                                     55 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 53: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      008385 C6 54 02         [ 1]   56 	ld	a, 0x5402
      008388 A5 08            [ 1]   57 	bcp	a, #0x08
      00838A 27 15            [ 1]   58 	jreq	00102$
                                     59 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 56: templ = ADC1->DRL;
      00838C C6 54 05         [ 1]   60 	ld	a, 0x5405
      00838F 97               [ 1]   61 	ld	xl, a
                                     62 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 58: temph = ADC1->DRH;
      008390 C6 54 04         [ 1]   63 	ld	a, 0x5404
                                     64 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 60: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      008393 0F 08            [ 1]   65 	clr	(0x08, sp)
      008395 0F 05            [ 1]   66 	clr	(0x05, sp)
      008397 1A 05            [ 1]   67 	or	a, (0x05, sp)
      008399 01               [ 1]   68 	rrwa	x
      00839A 1A 08            [ 1]   69 	or	a, (0x08, sp)
      00839C 97               [ 1]   70 	ld	xl, a
      00839D 1F 03            [ 2]   71 	ldw	(0x03, sp), x
      00839F 20 1D            [ 2]   72 	jra	00103$
      0083A1                         73 00102$:
                                     74 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 65: temph = ADC1->DRH;
      0083A1 C6 54 04         [ 1]   75 	ld	a, 0x5404
      0083A4 5F               [ 1]   76 	clrw	x
      0083A5 97               [ 1]   77 	ld	xl, a
      0083A6 51               [ 1]   78 	exgw	x, y
                                     79 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 67: templ = ADC1->DRL;
      0083A7 C6 54 05         [ 1]   80 	ld	a, 0x5405
                                     81 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 69: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
      0083AA 5F               [ 1]   82 	clrw	x
      0083AB 97               [ 1]   83 	ld	xl, a
      0083AC 58               [ 2]   84 	sllw	x
      0083AD 58               [ 2]   85 	sllw	x
      0083AE 58               [ 2]   86 	sllw	x
      0083AF 58               [ 2]   87 	sllw	x
      0083B0 58               [ 2]   88 	sllw	x
      0083B1 58               [ 2]   89 	sllw	x
      0083B2 1F 01            [ 2]   90 	ldw	(0x01, sp), x
      0083B4 7B 02            [ 1]   91 	ld	a, (0x02, sp)
      0083B6 97               [ 1]   92 	ld	xl, a
      0083B7 90 9F            [ 1]   93 	ld	a, yl
      0083B9 1A 01            [ 1]   94 	or	a, (0x01, sp)
      0083BB 95               [ 1]   95 	ld	xh, a
      0083BC 1F 03            [ 2]   96 	ldw	(0x03, sp), x
      0083BE                         97 00103$:
                                     98 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 72: return ((uint16_t)temph);
      0083BE 1E 03            [ 2]   99 	ldw	x, (0x03, sp)
                                    100 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_GetConversionValue.c: 73: }
      0083C0 5B 08            [ 2]  101 	addw	sp, #8
      0083C2 81               [ 4]  102 	ret
                                    103 	.area CODE
                                    104 	.area CONST
                                    105 	.area INITIALIZER
                                    106 	.area CABS (ABS)
