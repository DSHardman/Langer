/**
 * Complete project details at https://RandomNerdTutorials.com/arduino-load-cell-hx711/
 *
 * HX711 library for Arduino - example file
 * https://github.com/bogde/HX711
 *
 * MIT License
 * (c) 2018 Bogdan Necula
 *
**/

#include <Arduino.h>
#include "HX711.h"

// HX711 circuit wiring
const int LOADCELL_DOUT_PIN = 2;
const int LOADCELL_SCK_PIN = 3;

HX711 scale;

void setup() {
  Serial.begin(57600);

  scale.begin(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);
            
  scale.set_scale(285);
  scale.tare();


  Serial.println("Zeroed.");
}

void loop() {
  Serial.println(scale.get_units(10), 1);
  delay(1000);
}
