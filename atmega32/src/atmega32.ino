int       HBLED = 11; // PB3 - indikacija
int       HEATING = 9;  // PB1 - kaitinimas
uint8_t   bcnt;
uint8_t   ledstate = 0;
uint8_t   percents;
uint8_t   honcnt = 0; // ijungtos busenos skaitliukas (0.1s)
uint8_t   hoffcnt = 0; // isjungtos ------""-------
uint16_t  adcval;

//-------------------------------------------------------------------------------------
void  tick  ()  // kvieciama kas 0.1s
{
      if  (adcval < 5)  {  // ADC triuksmas
          digitalWrite (HEATING, 0);
          return;
      }
      if  (!honcnt && !hoffcnt)
          hoffcnt = 100 - (honcnt = percents);
      if  (honcnt)  {
          digitalWrite (HEATING, 1);
          honcnt--;
          return;
      }
      if  (hoffcnt) {
          digitalWrite (HEATING, 0);
          hoffcnt--;
      }
}
//-------------------------------------------------------------------------------------
void  blink ()
{
      if  (bcnt++ < 10)
          return;
      bcnt = 0;
      ledstate ^= 1;
      digitalWrite (HBLED, ledstate);
}
//-------------------------------------------------------------------------------------
void setup() 
{
      pinMode (HBLED, OUTPUT);
      pinMode (HEATING, OUTPUT);
}
//-------------------------------------------------------------------------------------
void loop() 
{
      delay (100);  // programos "taktinis dazis" 0.1s (grubiai)
      adcval = analogRead (A0);
      percents = (uint8_t)((uint32_t)adcval * (uint32_t)100 / (uint32_t)1023); // 10bit
      blink ();
      tick ();
}
