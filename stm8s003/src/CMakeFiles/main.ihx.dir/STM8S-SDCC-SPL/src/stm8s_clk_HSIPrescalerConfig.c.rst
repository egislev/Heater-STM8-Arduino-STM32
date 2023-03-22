                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk_HSIPrescalerConfig
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLK_HSIPrescalerConfig
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
                                     49 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_clk_HSIPrescalerConfig.c: 48: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                     50 ;	-----------------------------------------
                                     51 ;	 function CLK_HSIPrescalerConfig
                                     52 ;	-----------------------------------------
      0084C3                         53 _CLK_HSIPrescalerConfig:
                                     54 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_clk_HSIPrescalerConfig.c: 54: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0084C3 C6 50 C6         [ 1]   55 	ld	a, 0x50c6
      0084C6 A4 E7            [ 1]   56 	and	a, #0xe7
      0084C8 C7 50 C6         [ 1]   57 	ld	0x50c6, a
                                     58 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_clk_HSIPrescalerConfig.c: 57: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      0084CB C6 50 C6         [ 1]   59 	ld	a, 0x50c6
      0084CE 1A 03            [ 1]   60 	or	a, (0x03, sp)
      0084D0 C7 50 C6         [ 1]   61 	ld	0x50c6, a
                                     62 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/STM8S-SDCC-SPL/src/stm8s_clk_HSIPrescalerConfig.c: 58: }
      0084D3 81               [ 4]   63 	ret
                                     64 	.area CODE
                                     65 	.area CONST
                                     66 	.area INITIALIZER
                                     67 	.area CABS (ABS)
