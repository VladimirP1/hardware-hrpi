//Register map:
// 0  ID 0x43
// 1  A0:LSB
// 2  A0:MSB
// 3  A1:LSB
// 4  A1:MSB
// 5  A2:LSB
// 6  A2:MSB
// 7  A3:LSB
// 8  A3:MSB
// 9  ADCR: | RES | RES | RES | RES | ADC3| ADC2| ADC1| ADC0|
// A  RC1:LSB
// B  RC1:MSB
// C  RC2:LSB
// D  RC2:MSB
// E  RC3:LSB
// F  RC3:MSB
// 10 RC4:LSB
// 11 RC4:MSB
// 12 RC5:LSB
// 13 RC5:MSB
// 14 RC6:LSB
// 15 RC6:MSB
// 16 RC7:LSB
// 17 RC7:MSB
// 18 RC8:LSB
// 19 RC8:MSB

#include <Wire.h>

volatile unsigned char ret = 0;
volatile unsigned char regs[0x20];
volatile unsigned char regs1[0x20];

#define NREGS 0x20

void setup() {
  regs[0] = 0x43;
  for (int i = 1; i < NREGS; i++)
    regs[i] = 0;
  for (int i = 1; i < NREGS; i++)
    regs1[i] = 0;
  Serial.begin(9600);
  Wire.begin(8);
  PORTC &= ~(1 << 5);
  PORTC &= ~(1 << 4);
  Wire.onReceive(receiveEvent);
  Wire.onRequest(requestEvent);
  setuppcint();
  //ppm_init();
}

void loop() {
  unsigned int a;
  if (regs[9] & (1 << 0)) {
    //Serial.println("ADC1");
    a = 0;
    analogRead(A0);
    delay(10);
    a = analogRead(A0);
    a += analogRead(A0);
    a += analogRead(A0);
    a += analogRead(A0);
    a = a / 4;
    regs1[1] = a & 0xff;
    regs1[2] = (a >> 8) & 0xff;
  }
  if (regs[9] & (1 << 1)) {
    //Serial.println("ADC2");
    analogRead(A1);
    delay(10);
    a = analogRead(A1);
    a += analogRead(A1);
    a += analogRead(A1);
    a += analogRead(A1);
    a = a / 4;
    regs1[3] = a & 0xff;
    regs1[4] = (a >> 8) & 0xff;
  }
  if (regs[9] & (1 << 2)) {
    //Serial.println("ADC3");
    analogRead(A2);
    delay(10);
    a = analogRead(A2);
    a += analogRead(A2);
    a += analogRead(A2);
    a += analogRead(A2);
    a = a / 4;

    regs1[5] = a & 0xff;
    regs1[6] = (a >> 8) & 0xff;
  }
  if (regs[9] & (1 << 3)) {
    //Serial.println("ADC4");
    analogRead(A3);
    delay(10);
    a = analogRead(A3);
    a += analogRead(A3);
    a += analogRead(A3);
    a += analogRead(A3);
    a = a / 4;
    regs1[7] = a & 0xff;
    regs1[8] = (a >> 8) & 0xff;
  }
  /*uint8_t a1=TCNT2;
    delayMicroseconds(8);
    uint8_t a2=TCNT2;
    Serial.print(a1);
    Serial.print("\t");
    Serial.print(a2);
    Serial.print("\t");
    Serial.println((uint8_t)(a2-a1));*/
  //Serial.println(regs[0xa + (2 * 2)]);
  //delay(100);

  /*for (int i = 0; i < NREGS; i++) {
    Serial.print(i, HEX);
    Serial.print("\t");
    Serial.println(regs[i], HEX);
    }
    Serial.println("-----------------------------------------");
    delay(1000);*/
}

void requestEvent()
{
  Wire.write(ret);
}
void receiveEvent(int nbytes) {
  unsigned char x = Wire.read();
  if (nbytes == 1) {
    if (x < NREGS)
      ret = regs[x];
    else
      ret = 0x23;
    if (x == 0x19)
      for (int i = 0; i < 16; i++)
        regs[i + 0xA] = regs1[i + 0xA];
    else if (x == 0x8)
      for (int i = 0; i < 8; i++)
        regs[i + 0x1] = regs1[i + 0x1];
  } else if (nbytes == 2) {
    while (!Wire.available() > 0);
    int n = Wire.read();
    if (x > 0 && x < NREGS)
      regs[x] = n;
  } else {
    ret = 0x23;

  }
  while (Wire.read() >= 0);
}



