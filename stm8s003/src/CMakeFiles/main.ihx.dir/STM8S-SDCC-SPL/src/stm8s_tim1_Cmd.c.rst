                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim1_Cmd
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM1_Cmd
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
                                     49 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_Cmd.c: 48: void TIM1_Cmd(FunctionalState NewState)
                                     50 ;	-----------------------------------------
                                     51 ;	 function TIM1_Cmd
                                     52 ;	-----------------------------------------
      008483                         53 _TIM1_Cmd:
                                     54 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_Cmd.c: 56: TIM1->CR1 |= TIM1_CR1_CEN;
      008483 C6 52 50         [ 1]   55 	ld	a, 0x5250
                                     56 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_Cmd.c: 54: if (NewState != DISABLE)
      008486 0D 03            [ 1]   57 	tnz	(0x03, sp)
      008488 27 06            [ 1]   58 	jreq	00102$
                                     59 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_Cmd.c: 56: TIM1->CR1 |= TIM1_CR1_CEN;
      00848A AA 01            [ 1]   60 	or	a, #0x01
      00848C C7 52 50         [ 1]   61 	ld	0x5250, a
      00848F 81               [ 4]   62 	ret
      008490                         63 00102$:
                                     64 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_Cmd.c: 60: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
      008490 A4 FE            [ 1]   65 	and	a, #0xfe
      008492 C7 52 50         [ 1]   66 	ld	0x5250, a
                                     67 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_Cmd.c: 62: }
      008495 81               [ 4]   68 	ret
                                     69 	.area CODE
                                     70 	.area CONST
                                     71 	.area INITIALIZER
                                     72 	.area CABS (ABS)
