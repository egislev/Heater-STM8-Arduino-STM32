                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _ADC_Read
                                     13 	.globl _tick
                                     14 	.globl _blink
                                     15 	.globl _assert_failed
                                     16 	.globl _CLK_HSIPrescalerConfig
                                     17 	.globl _TIM1_GetCounter
                                     18 	.globl _TIM1_Cmd
                                     19 	.globl _TIM1_TimeBaseInit
                                     20 	.globl _GPIO_WriteReverse
                                     21 	.globl _GPIO_WriteLow
                                     22 	.globl _GPIO_WriteHigh
                                     23 	.globl _GPIO_Init
                                     24 	.globl _GPIO_DeInit
                                     25 	.globl _ADC1_ClearFlag
                                     26 	.globl _ADC1_GetFlagStatus
                                     27 	.globl _ADC1_GetConversionValue
                                     28 	.globl _ADC1_StartConversion
                                     29 	.globl _ADC1_Cmd
                                     30 	.globl _ADC1_Init
                                     31 	.globl _ADC1_DeInit
                                     32 	.globl _adcval
                                     33 	.globl _hoffcnt
                                     34 	.globl _honcnt
                                     35 	.globl _bcnt
                                     36 	.globl _percents
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
      000001                         41 _percents::
      000001                         42 	.ds 1
                                     43 ;--------------------------------------------------------
                                     44 ; ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area INITIALIZED
      000002                         47 _bcnt::
      000002                         48 	.ds 1
      000003                         49 _honcnt::
      000003                         50 	.ds 1
      000004                         51 _hoffcnt::
      000004                         52 	.ds 1
      000005                         53 _adcval::
      000005                         54 	.ds 2
                                     55 ;--------------------------------------------------------
                                     56 ; Stack segment in internal ram 
                                     57 ;--------------------------------------------------------
                                     58 	.area	SSEG
      FFFFFF                         59 __start__stack:
      FFFFFF                         60 	.ds	1
                                     61 
                                     62 ;--------------------------------------------------------
                                     63 ; absolute external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area DABS (ABS)
                                     66 
                                     67 ; default segment ordering for linker
                                     68 	.area HOME
                                     69 	.area GSINIT
                                     70 	.area GSFINAL
                                     71 	.area CONST
                                     72 	.area INITIALIZER
                                     73 	.area CODE
                                     74 
                                     75 ;--------------------------------------------------------
                                     76 ; interrupt vector 
                                     77 ;--------------------------------------------------------
                                     78 	.area HOME
      008000                         79 __interrupt_vect:
      008000 82 00 80 07             80 	int s_GSINIT ; reset
                                     81 ;--------------------------------------------------------
                                     82 ; global & static initialisations
                                     83 ;--------------------------------------------------------
                                     84 	.area HOME
                                     85 	.area GSINIT
                                     86 	.area GSFINAL
                                     87 	.area GSINIT
      008007                         88 __sdcc_gs_init_startup:
      008007                         89 __sdcc_init_data:
                                     90 ; stm8_genXINIT() start
      008007 AE 00 01         [ 2]   91 	ldw x, #l_DATA
      00800A 27 07            [ 1]   92 	jreq	00002$
      00800C                         93 00001$:
      00800C 72 4F 00 00      [ 1]   94 	clr (s_DATA - 1, x)
      008010 5A               [ 2]   95 	decw x
      008011 26 F9            [ 1]   96 	jrne	00001$
      008013                         97 00002$:
      008013 AE 00 05         [ 2]   98 	ldw	x, #l_INITIALIZER
      008016 27 09            [ 1]   99 	jreq	00004$
      008018                        100 00003$:
      008018 D6 80 23         [ 1]  101 	ld	a, (s_INITIALIZER - 1, x)
      00801B D7 00 01         [ 1]  102 	ld	(s_INITIALIZED - 1, x), a
      00801E 5A               [ 2]  103 	decw	x
      00801F 26 F7            [ 1]  104 	jrne	00003$
      008021                        105 00004$:
                                    106 ; stm8_genXINIT() end
                                    107 	.area GSFINAL
      008021 CC 80 04         [ 2]  108 	jp	__sdcc_program_startup
                                    109 ;--------------------------------------------------------
                                    110 ; Home
                                    111 ;--------------------------------------------------------
                                    112 	.area HOME
                                    113 	.area HOME
      008004                        114 __sdcc_program_startup:
      008004 CC 80 DC         [ 2]  115 	jp	_main
                                    116 ;	return from main will return to caller
                                    117 ;--------------------------------------------------------
                                    118 ; code
                                    119 ;--------------------------------------------------------
                                    120 	.area CODE
                                    121 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 13: void	assert_failed (uint8_t* file, uint32_t line) {
                                    122 ;	-----------------------------------------
                                    123 ;	 function assert_failed
                                    124 ;	-----------------------------------------
      008029                        125 _assert_failed:
                                    126 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 15: (void)line;
                                    127 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 16: }
      008029 81               [ 4]  128 	ret
                                    129 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 18: void	blink	()
                                    130 ;	-----------------------------------------
                                    131 ;	 function blink
                                    132 ;	-----------------------------------------
      00802A                        133 _blink:
                                    134 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 20: if	(bcnt++ < 10) // 0.1 * 10
      00802A C6 00 02         [ 1]  135 	ld	a, _bcnt+0
      00802D 72 5C 00 02      [ 1]  136 	inc	_bcnt+0
      008031 A1 0A            [ 1]  137 	cp	a, #0x0a
      008033 24 01            [ 1]  138 	jrnc	00102$
                                    139 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 21: return;
      008035 81               [ 4]  140 	ret
      008036                        141 00102$:
                                    142 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 22: bcnt = 0;
      008036 72 5F 00 02      [ 1]  143 	clr	_bcnt+0
                                    144 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 23: GPIO_WriteReverse (GPIOA,GPIO_PIN_1);
      00803A 4B 02            [ 1]  145 	push	#0x02
      00803C 4B 00            [ 1]  146 	push	#0x00
      00803E 4B 50            [ 1]  147 	push	#0x50
      008040 CD 84 65         [ 4]  148 	call	_GPIO_WriteReverse
      008043 5B 03            [ 2]  149 	addw	sp, #3
                                    150 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 24: }
      008045 81               [ 4]  151 	ret
                                    152 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 26: void	tick ()
                                    153 ;	-----------------------------------------
                                    154 ;	 function tick
                                    155 ;	-----------------------------------------
      008046                        156 _tick:
      008046 88               [ 1]  157 	push	a
                                    158 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 28: if	(adcval < 5)	{ // ADC triuksmas
      008047 CE 00 05         [ 2]  159 	ldw	x, _adcval+0
      00804A A3 00 05         [ 2]  160 	cpw	x, #0x0005
      00804D 24 0D            [ 1]  161 	jrnc	00102$
                                    162 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 29: GPIO_WriteLow (GPIOA,GPIO_PIN_2);
      00804F 4B 04            [ 1]  163 	push	#0x04
      008051 4B 00            [ 1]  164 	push	#0x00
      008053 4B 50            [ 1]  165 	push	#0x50
      008055 CD 84 50         [ 4]  166 	call	_GPIO_WriteLow
      008058 5B 03            [ 2]  167 	addw	sp, #3
                                    168 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 30: return;
      00805A 20 47            [ 2]  169 	jra	00110$
      00805C                        170 00102$:
                                    171 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 32: if	(!honcnt && !hoffcnt)
      00805C 72 5D 00 03      [ 1]  172 	tnz	_honcnt+0
      008060 26 15            [ 1]  173 	jrne	00104$
      008062 72 5D 00 04      [ 1]  174 	tnz	_hoffcnt+0
      008066 26 0F            [ 1]  175 	jrne	00104$
                                    176 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 33: hoffcnt = 100 - (honcnt = percents);
      008068 C6 00 01         [ 1]  177 	ld	a, _percents+0
      00806B C7 00 03         [ 1]  178 	ld	_honcnt+0, a
      00806E 6B 01            [ 1]  179 	ld	(0x01, sp), a
      008070 A6 64            [ 1]  180 	ld	a, #0x64
      008072 10 01            [ 1]  181 	sub	a, (0x01, sp)
      008074 C7 00 04         [ 1]  182 	ld	_hoffcnt+0, a
      008077                        183 00104$:
                                    184 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 34: if	(honcnt)	{
      008077 72 5D 00 03      [ 1]  185 	tnz	_honcnt+0
      00807B 27 11            [ 1]  186 	jreq	00107$
                                    187 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 35: GPIO_WriteHigh (GPIOA,GPIO_PIN_2);
      00807D 4B 04            [ 1]  188 	push	#0x04
      00807F 4B 00            [ 1]  189 	push	#0x00
      008081 4B 50            [ 1]  190 	push	#0x50
      008083 CD 84 5E         [ 4]  191 	call	_GPIO_WriteHigh
      008086 5B 03            [ 2]  192 	addw	sp, #3
                                    193 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 36: honcnt--;
      008088 72 5A 00 03      [ 1]  194 	dec	_honcnt+0
                                    195 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 37: return;
      00808C 20 15            [ 2]  196 	jra	00110$
      00808E                        197 00107$:
                                    198 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 39: if	(hoffcnt)	{
      00808E 72 5D 00 04      [ 1]  199 	tnz	_hoffcnt+0
      008092 27 0F            [ 1]  200 	jreq	00110$
                                    201 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 40: GPIO_WriteLow (GPIOA,GPIO_PIN_2);
      008094 4B 04            [ 1]  202 	push	#0x04
      008096 4B 00            [ 1]  203 	push	#0x00
      008098 4B 50            [ 1]  204 	push	#0x50
      00809A CD 84 50         [ 4]  205 	call	_GPIO_WriteLow
      00809D 5B 03            [ 2]  206 	addw	sp, #3
                                    207 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 41: hoffcnt--;
      00809F 72 5A 00 04      [ 1]  208 	dec	_hoffcnt+0
      0080A3                        209 00110$:
                                    210 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 43: }
      0080A3 84               [ 1]  211 	pop	a
      0080A4 81               [ 4]  212 	ret
                                    213 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 45: uint16_t ADC_Read (/* ADC_CHANNEL_TypeDef ADC_Channel_Number */)
                                    214 ;	-----------------------------------------
                                    215 ;	 function ADC_Read
                                    216 ;	-----------------------------------------
      0080A5                        217 _ADC_Read:
                                    218 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 49: ADC1_DeInit (); 
      0080A5 CD 81 CD         [ 4]  219 	call	_ADC1_DeInit
                                    220 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 50: ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS,
      0080A8 4B 00            [ 1]  221 	push	#0x00
      0080AA 4B FF            [ 1]  222 	push	#0xff
      0080AC 4B 08            [ 1]  223 	push	#0x08
      0080AE 4B 00            [ 1]  224 	push	#0x00
      0080B0 4B 00            [ 1]  225 	push	#0x00
      0080B2 4B 70            [ 1]  226 	push	#0x70
      0080B4 4B 04            [ 1]  227 	push	#0x04
      0080B6 4B 01            [ 1]  228 	push	#0x01
      0080B8 CD 82 11         [ 4]  229 	call	_ADC1_Init
      0080BB 5B 08            [ 2]  230 	addw	sp, #8
                                    231 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 58: ADC1_Cmd (ENABLE);
      0080BD 4B 01            [ 1]  232 	push	#0x01
      0080BF CD 81 FE         [ 4]  233 	call	_ADC1_Cmd
      0080C2 84               [ 1]  234 	pop	a
                                    235 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 60: ADC1_StartConversion ();
      0080C3 CD 83 3A         [ 4]  236 	call	_ADC1_StartConversion
                                    237 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 61: while (ADC1_GetFlagStatus (ADC1_FLAG_EOC) == FALSE);
      0080C6                        238 00101$:
      0080C6 4B 80            [ 1]  239 	push	#0x80
      0080C8 CD 82 41         [ 4]  240 	call	_ADC1_GetFlagStatus
      0080CB 5B 01            [ 2]  241 	addw	sp, #1
      0080CD 4D               [ 1]  242 	tnz	a
      0080CE 27 F6            [ 1]  243 	jreq	00101$
                                    244 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 62: result = ADC1_GetConversionValue ();
      0080D0 CD 83 83         [ 4]  245 	call	_ADC1_GetConversionValue
                                    246 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 63: ADC1_ClearFlag (ADC1_FLAG_EOC);
      0080D3 4B 80            [ 1]  247 	push	#0x80
      0080D5 CD 82 A6         [ 4]  248 	call	_ADC1_ClearFlag
      0080D8 84               [ 1]  249 	pop	a
                                    250 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 65: ADC1_DeInit ();
                                    251 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 66: }
      0080D9 CC 81 CD         [ 2]  252 	jp	_ADC1_DeInit
                                    253 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 68: void main	(void)
                                    254 ;	-----------------------------------------
                                    255 ;	 function main
                                    256 ;	-----------------------------------------
      0080DC                        257 _main:
                                    258 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 70: CLK_HSIPrescalerConfig (CLK_PRESCALER_HSIDIV1);	// 16 Mhz
      0080DC 4B 00            [ 1]  259 	push	#0x00
      0080DE CD 84 C3         [ 4]  260 	call	_CLK_HSIPrescalerConfig
      0080E1 84               [ 1]  261 	pop	a
                                    262 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 71: GPIO_DeInit (GPIOA);
      0080E2 4B 00            [ 1]  263 	push	#0x00
      0080E4 4B 50            [ 1]  264 	push	#0x50
      0080E6 CD 84 41         [ 4]  265 	call	_GPIO_DeInit
      0080E9 5B 02            [ 2]  266 	addw	sp, #2
                                    267 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 72: GPIO_Init (GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_OD_LOW_SLOW);
      0080EB 4B 80            [ 1]  268 	push	#0x80
      0080ED 4B 02            [ 1]  269 	push	#0x02
      0080EF 4B 00            [ 1]  270 	push	#0x00
      0080F1 4B 50            [ 1]  271 	push	#0x50
      0080F3 CD 81 58         [ 4]  272 	call	_GPIO_Init
      0080F6 5B 04            [ 2]  273 	addw	sp, #4
                                    274 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 73: GPIO_Init (GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_OD_LOW_SLOW);
      0080F8 4B 80            [ 1]  275 	push	#0x80
      0080FA 4B 04            [ 1]  276 	push	#0x04
      0080FC 4B 00            [ 1]  277 	push	#0x00
      0080FE 4B 50            [ 1]  278 	push	#0x50
      008100 CD 81 58         [ 4]  279 	call	_GPIO_Init
      008103 5B 04            [ 2]  280 	addw	sp, #4
                                    281 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 74: TIM1_TimeBaseInit (16000, TIM1_COUNTERMODE_UP, 16000, 1); // clock 1khz
      008105 4B 01            [ 1]  282 	push	#0x01
      008107 4B 80            [ 1]  283 	push	#0x80
      008109 4B 3E            [ 1]  284 	push	#0x3e
      00810B 4B 00            [ 1]  285 	push	#0x00
      00810D 4B 80            [ 1]  286 	push	#0x80
      00810F 4B 3E            [ 1]  287 	push	#0x3e
      008111 CD 84 96         [ 4]  288 	call	_TIM1_TimeBaseInit
      008114 5B 06            [ 2]  289 	addw	sp, #6
                                    290 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 75: ADC1_DeInit ();  // ??
      008116 CD 81 CD         [ 4]  291 	call	_ADC1_DeInit
                                    292 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 76: TIM1_Cmd (ENABLE);
      008119 4B 01            [ 1]  293 	push	#0x01
      00811B CD 84 83         [ 4]  294 	call	_TIM1_Cmd
      00811E 84               [ 1]  295 	pop	a
                                    296 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 79: while	(TIM1_GetCounter() % 100);	// delay 0.1s
      00811F                        297 00101$:
      00811F CD 84 6C         [ 4]  298 	call	_TIM1_GetCounter
      008122 90 AE 00 64      [ 2]  299 	ldw	y, #0x0064
      008126 65               [ 2]  300 	divw	x, y
      008127 90 5D            [ 2]  301 	tnzw	y
      008129 26 F4            [ 1]  302 	jrne	00101$
                                    303 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 80: adcval = ADC_Read ();
      00812B CD 80 A5         [ 4]  304 	call	_ADC_Read
                                    305 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 81: percents = (uint8_t) ((uint32_t)adcval * (uint32_t)100 / (uint32_t)1023);	// 10bit
      00812E CF 00 05         [ 2]  306 	ldw	_adcval+0, x
      008131 89               [ 2]  307 	pushw	x
      008132 4B 64            [ 1]  308 	push	#0x64
      008134 4B 00            [ 1]  309 	push	#0x00
      008136 CD 84 D4         [ 4]  310 	call	___muluint2ulong
      008139 5B 04            [ 2]  311 	addw	sp, #4
      00813B 4B FF            [ 1]  312 	push	#0xff
      00813D 4B 03            [ 1]  313 	push	#0x03
      00813F 4B 00            [ 1]  314 	push	#0x00
      008141 4B 00            [ 1]  315 	push	#0x00
      008143 89               [ 2]  316 	pushw	x
      008144 90 89            [ 2]  317 	pushw	y
      008146 CD 85 2C         [ 4]  318 	call	__divulong
      008149 5B 08            [ 2]  319 	addw	sp, #8
      00814B 9F               [ 1]  320 	ld	a, xl
      00814C C7 00 01         [ 1]  321 	ld	_percents+0, a
                                    322 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 82: blink ();
      00814F CD 80 2A         [ 4]  323 	call	_blink
                                    324 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 83: tick ();
      008152 CD 80 46         [ 4]  325 	call	_tick
      008155 20 C8            [ 2]  326 	jra	00101$
                                    327 ;	/home/egis/ventmatika/Egidijus/stm8s003/src/main.c: 85: }
      008157 81               [ 4]  328 	ret
                                    329 	.area CODE
                                    330 	.area CONST
                                    331 	.area INITIALIZER
      008024                        332 __xinit__bcnt:
      008024 00                     333 	.db #0x00	; 0
      008025                        334 __xinit__honcnt:
      008025 00                     335 	.db #0x00	; 0
      008026                        336 __xinit__hoffcnt:
      008026 00                     337 	.db #0x00	; 0
      008027                        338 __xinit__adcval:
      008027 00 00                  339 	.dw #0x0000
                                    340 	.area CABS (ABS)
