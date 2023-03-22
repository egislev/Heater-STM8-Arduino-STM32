                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim1_TimeBaseInit
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM1_TimeBaseInit
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
                                     49 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_TimeBaseInit.c: 50: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                                     50 ;	-----------------------------------------
                                     51 ;	 function TIM1_TimeBaseInit
                                     52 ;	-----------------------------------------
      008496                         53 _TIM1_TimeBaseInit:
      008496 52 04            [ 2]   54 	sub	sp, #4
                                     55 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_TimeBaseInit.c: 59: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
      008498 7B 0A            [ 1]   56 	ld	a, (0x0a, sp)
      00849A 0F 01            [ 1]   57 	clr	(0x01, sp)
      00849C C7 52 62         [ 1]   58 	ld	0x5262, a
                                     59 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_TimeBaseInit.c: 60: TIM1->ARRL = (uint8_t)(TIM1_Period);
      00849F 7B 0B            [ 1]   60 	ld	a, (0x0b, sp)
      0084A1 C7 52 63         [ 1]   61 	ld	0x5263, a
                                     62 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_TimeBaseInit.c: 63: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
      0084A4 7B 07            [ 1]   63 	ld	a, (0x07, sp)
      0084A6 0F 03            [ 1]   64 	clr	(0x03, sp)
      0084A8 C7 52 60         [ 1]   65 	ld	0x5260, a
                                     66 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_TimeBaseInit.c: 64: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
      0084AB 7B 08            [ 1]   67 	ld	a, (0x08, sp)
      0084AD C7 52 61         [ 1]   68 	ld	0x5261, a
                                     69 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_TimeBaseInit.c: 67: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
      0084B0 C6 52 50         [ 1]   70 	ld	a, 0x5250
      0084B3 A4 8F            [ 1]   71 	and	a, #0x8f
                                     72 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_TimeBaseInit.c: 68: | (uint8_t)(TIM1_CounterMode));
      0084B5 1A 09            [ 1]   73 	or	a, (0x09, sp)
      0084B7 C7 52 50         [ 1]   74 	ld	0x5250, a
                                     75 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_TimeBaseInit.c: 71: TIM1->RCR = TIM1_RepetitionCounter;
      0084BA AE 52 64         [ 2]   76 	ldw	x, #0x5264
      0084BD 7B 0C            [ 1]   77 	ld	a, (0x0c, sp)
      0084BF F7               [ 1]   78 	ld	(x), a
                                     79 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_tim1_TimeBaseInit.c: 72: }
      0084C0 5B 04            [ 2]   80 	addw	sp, #4
      0084C2 81               [ 4]   81 	ret
                                     82 	.area CODE
                                     83 	.area CONST
                                     84 	.area INITIALIZER
                                     85 	.area CABS (ABS)
