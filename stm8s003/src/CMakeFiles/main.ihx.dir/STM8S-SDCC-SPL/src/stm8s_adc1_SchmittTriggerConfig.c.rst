                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc1_SchmittTriggerConfig
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC1_SchmittTriggerConfig
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
                                     49 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 49: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
                                     50 ;	-----------------------------------------
                                     51 ;	 function ADC1_SchmittTriggerConfig
                                     52 ;	-----------------------------------------
      0083C3                         53 _ADC1_SchmittTriggerConfig:
      0083C3 52 02            [ 2]   54 	sub	sp, #2
                                     55 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 55: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
      0083C5 7B 05            [ 1]   56 	ld	a, (0x05, sp)
      0083C7 4C               [ 1]   57 	inc	a
      0083C8 26 21            [ 1]   58 	jrne	00114$
                                     59 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 59: ADC1->TDRL &= (uint8_t)0x0;
      0083CA C6 54 07         [ 1]   60 	ld	a, 0x5407
                                     61 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 57: if (NewState != DISABLE)
      0083CD 0D 06            [ 1]   62 	tnz	(0x06, sp)
      0083CF 27 0D            [ 1]   63 	jreq	00102$
                                     64 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 59: ADC1->TDRL &= (uint8_t)0x0;
      0083D1 35 00 54 07      [ 1]   65 	mov	0x5407+0, #0x00
                                     66 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 60: ADC1->TDRH &= (uint8_t)0x0;
      0083D5 C6 54 06         [ 1]   67 	ld	a, 0x5406
      0083D8 35 00 54 06      [ 1]   68 	mov	0x5406+0, #0x00
      0083DC 20 60            [ 2]   69 	jra	00116$
      0083DE                         70 00102$:
                                     71 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 64: ADC1->TDRL |= (uint8_t)0xFF;
      0083DE 35 FF 54 07      [ 1]   72 	mov	0x5407+0, #0xff
                                     73 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 65: ADC1->TDRH |= (uint8_t)0xFF;
      0083E2 C6 54 06         [ 1]   74 	ld	a, 0x5406
      0083E5 35 FF 54 06      [ 1]   75 	mov	0x5406+0, #0xff
      0083E9 20 53            [ 2]   76 	jra	00116$
      0083EB                         77 00114$:
                                     78 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 68: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
      0083EB 7B 05            [ 1]   79 	ld	a, (0x05, sp)
      0083ED A1 08            [ 1]   80 	cp	a, #0x08
      0083EF 24 25            [ 1]   81 	jrnc	00111$
                                     82 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 59: ADC1->TDRL &= (uint8_t)0x0;
      0083F1 C6 54 07         [ 1]   83 	ld	a, 0x5407
      0083F4 6B 01            [ 1]   84 	ld	(0x01, sp), a
                                     85 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 72: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
      0083F6 A6 01            [ 1]   86 	ld	a, #0x01
      0083F8 88               [ 1]   87 	push	a
      0083F9 7B 06            [ 1]   88 	ld	a, (0x06, sp)
      0083FB 27 05            [ 1]   89 	jreq	00149$
      0083FD                         90 00148$:
      0083FD 08 01            [ 1]   91 	sll	(1, sp)
      0083FF 4A               [ 1]   92 	dec	a
      008400 26 FB            [ 1]   93 	jrne	00148$
      008402                         94 00149$:
      008402 84               [ 1]   95 	pop	a
                                     96 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 70: if (NewState != DISABLE)
      008403 0D 06            [ 1]   97 	tnz	(0x06, sp)
      008405 27 08            [ 1]   98 	jreq	00105$
                                     99 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 72: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
      008407 43               [ 1]  100 	cpl	a
      008408 14 01            [ 1]  101 	and	a, (0x01, sp)
      00840A C7 54 07         [ 1]  102 	ld	0x5407, a
      00840D 20 2F            [ 2]  103 	jra	00116$
      00840F                        104 00105$:
                                    105 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 76: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
      00840F 1A 01            [ 1]  106 	or	a, (0x01, sp)
      008411 C7 54 07         [ 1]  107 	ld	0x5407, a
      008414 20 28            [ 2]  108 	jra	00116$
      008416                        109 00111$:
                                    110 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 60: ADC1->TDRH &= (uint8_t)0x0;
      008416 C6 54 06         [ 1]  111 	ld	a, 0x5406
      008419 6B 02            [ 1]  112 	ld	(0x02, sp), a
                                    113 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 83: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
      00841B 7B 05            [ 1]  114 	ld	a, (0x05, sp)
      00841D A0 08            [ 1]  115 	sub	a, #0x08
      00841F 97               [ 1]  116 	ld	xl, a
      008420 A6 01            [ 1]  117 	ld	a, #0x01
      008422 88               [ 1]  118 	push	a
      008423 9F               [ 1]  119 	ld	a, xl
      008424 4D               [ 1]  120 	tnz	a
      008425 27 05            [ 1]  121 	jreq	00152$
      008427                        122 00151$:
      008427 08 01            [ 1]  123 	sll	(1, sp)
      008429 4A               [ 1]  124 	dec	a
      00842A 26 FB            [ 1]  125 	jrne	00151$
      00842C                        126 00152$:
      00842C 84               [ 1]  127 	pop	a
                                    128 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 81: if (NewState != DISABLE)
      00842D 0D 06            [ 1]  129 	tnz	(0x06, sp)
      00842F 27 08            [ 1]  130 	jreq	00108$
                                    131 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 83: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
      008431 43               [ 1]  132 	cpl	a
      008432 14 02            [ 1]  133 	and	a, (0x02, sp)
      008434 C7 54 06         [ 1]  134 	ld	0x5406, a
      008437 20 05            [ 2]  135 	jra	00116$
      008439                        136 00108$:
                                    137 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 87: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
      008439 1A 02            [ 1]  138 	or	a, (0x02, sp)
      00843B C7 54 06         [ 1]  139 	ld	0x5406, a
      00843E                        140 00116$:
                                    141 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_adc1_SchmittTriggerConfig.c: 90: }
      00843E 5B 02            [ 2]  142 	addw	sp, #2
      008440 81               [ 4]  143 	ret
                                    144 	.area CODE
                                    145 	.area CONST
                                    146 	.area INITIALIZER
                                    147 	.area CABS (ABS)
