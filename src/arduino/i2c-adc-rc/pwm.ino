volatile boolean states[12];
volatile uint16_t last[12];
volatile uint8_t nchan;
volatile boolean dir;
#define MICROS_PER_TICK 8
//CH0  D2  PD2 PCINT18
//CH1  D3  PD3 PCINT19
//CH2  D4  PD4 PCINT20

//CH3  D5  PD5 PCINT21
//CH4  D6  PD6 PCINT22
//CH5  D7  PD7 PCINT23

//CH6  D8  PB0 PCINT0
//CH7  D9  PB1 PCINT1
//CH8  D10 PB2 PCINT2
//CH9  D11 PB3 PCINT3
//CH10 D12 PB4 PCINT4

//CH11 D13 PB5 PCINT5

//PCMSK0  0-7
//PCMSK1  8-15
//PCMSK2  16-23

void setuppcint() {
  DDRD &= ~(1 << 3);
  DDRD &= ~(1 << 4);
  DDRD &= ~(1 << 2);
  DDRD &= ~(1 << 5);//0 P2
  DDRD &= ~(1 << 6);//1 P2
  DDRD &= ~(1 << 7);//2 P2
  DDRB &= ~(1 << 0);//3 P0
  DDRB &= ~(1 << 1);//4 P0
  DDRB &= ~(1 << 2);//5 P0
  DDRB &= ~(1 << 3);//6 P0
  DDRB &= ~(1 << 4);//7 P0
  DDRB &= ~(1 << 5);

  DDRB |= (1 << 5);
  PCICR |= (1 << PCIE0) | (1 << PCIE1) | (1 << PCIE2);
  PCMSK0 |= (1 << PCINT0) | (1 << PCINT1) | (1 << PCINT2) | (1 << PCINT3) | (1 << PCINT4);
  PCMSK2 |= (1 << PCINT21) | (1 << PCINT22) | (1 << PCINT23);
  TCCR1A = 0;
  TCCR1B = (1 << CS11);
}


ISR(PCINT0_vect) {
  uint16_t l = TCNT1;
  if ((PINB & (1 << 0)) != states[6]) {
    states[6] = PINB & (1 << 0);
    nchan = 6;
    dir = PINB & (1 << 0);
  }
  else if ((PINB & (1 << 1)) != states[7]) {
    states[7] = PINB & (1 << 1);
    nchan = 7;
    dir = PINB & (1 << 1);
  }  else if ((PINB & (1 << 2)) != states[8]) {
    states[8] = PINB & (1 << 2);
    nchan = 8;
    dir = PINB & (1 << 2);
  }  else if ((PINB & (1 << 3)) != states[9]) {
    states[9] = PINB & (1 << 3);
    nchan = 9;
    dir = PINB & (1 << 3);
  }
  else if ((PINB & (1 << 4)) != states[10]) {
    states[10] = PINB & (1 << 4);
    nchan = 10;
    dir = PINB & (1 << 4);
  }
  else if ((PINB & (1 << 5)) != states[11]) {
    states[11] = PINB & (1 << 5);
    nchan = 11;
    dir = PINB & (1 << 5);
  }
  else {
    return;
  }

  if (dir) {
    last[nchan] = l;
  } else {
    uint16_t diff = (uint16_t)(l - last[nchan]);
    diff = diff >> 1;
    regs1[0xA + (nchan * 2)] = diff & 0xff;
    regs1[0xB + (nchan * 2)] = (diff >> 8) & 0xff;
  }

}
ISR(PCINT2_vect) {
  uint16_t l = TCNT1;
  if ((PIND & (1 << 2)) != states[0]) {
    states[0] = PIND & (1 << 2);
    nchan = 0;
    dir = PIND & (1 << 2);
  }
  else if ((PIND & (1 << 3)) != states[1]) {
    states[1] = PIND & (1 << 3);
    nchan = 1;
    dir = PIND & (1 << 3);
  }
  else if ((PIND & (1 << 4)) != states[2]) {
    states[2] = PIND & (1 << 4);
    nchan = 2;
    dir = PIND & (1 << 4);
  }
  else if ((PIND & (1 << 5)) != states[3]) {
    states[3] = PIND & (1 << 5);
    nchan = 3;
    dir = PIND & (1 << 5);
  }
  else if ((PIND & (1 << 6)) != states[4]) {
    states[4] = PIND & (1 << 6);
    nchan = 4;
    dir = PIND & (1 << 6);
  }
  else if ((PIND & (1 << 7)) != states[5]) {
    states[5] = PIND & (1 << 7);
    nchan = 5;
    dir = PIND & (1 << 7);
  }
  else {
    return;
  }

  if (dir) {
    last[nchan] = l;
  } else {
    uint16_t diff = (uint16_t)(l - last[nchan]);
    diff = diff >> 1;
    regs1[0xA + (nchan * 2)] = diff & 0xff;
    regs1[0xB + (nchan * 2)] = (diff >> 8) & 0xff;
  }
}


