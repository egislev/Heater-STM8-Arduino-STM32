                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim1_GetCounter
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM1_GetCounter
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
                                     49 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_GetCounter.c: 47: uint16_t TIM1_GetCounter(void)
                                     50 ;	-----------------------------------------
                                     51 ;	 function TIM1_GetCounter
                                     52 ;	-----------------------------------------
      00846C                         53 _TIM1_GetCounter:
      00846C 52 04            [ 2]   54 	sub	sp, #4
                                     55 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_GetCounter.c: 51: tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
      00846E C6 52 5E         [ 1]   56 	ld	a, 0x525e
      008471 95               [ 1]   57 	ld	xh, a
      008472 4F               [ 1]   58 	clr	a
      008473 6B 04            [ 1]   59 	ld	(0x04, sp), a
                                     60 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_GetCounter.c: 54: return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
      008475 C6 52 5F         [ 1]   61 	ld	a, 0x525f
      008478 0F 01            [ 1]   62 	clr	(0x01, sp)
      00847A 1A 04            [ 1]   63 	or	a, (0x04, sp)
      00847C 02               [ 1]   64 	rlwa	x
      00847D 1A 01            [ 1]   65 	or	a, (0x01, sp)
      00847F 95               [ 1]   66 	ld	xh, a
                                     67 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_GetCounter.c: 55: }
      008480 5B 04            [ 2]   68 	addw	sp, #4
      008482 81               [ 4]   69 	ret
                                     70 	.area CODE
                                     71 	.area CONST
                                     72 	.area INITIALIZER
                                     73 	.area CABS (ABS)
