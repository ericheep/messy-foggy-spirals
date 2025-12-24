#include <FastLED.h>

#define DEBUG true

#include "QNEthernet.h"
using namespace qindesign::network;

#define TEENSY_IP 10, 52, 120, 17
#define TEENSY_DDNS 10, 52, 120, 1
#define TEENSY_SUBNET 255, 255, 255, 0
#define TEENSY_PORT 8888
byte mac[] = { 0x04, 0xe9, 0xe5, 0x1c, 0x84, 0x1d };

#define DATA_PIN_1 10
#define DATA_PIN_2 12
#define DATA_PIN_3 11

#define NUM_LEDS 27
#define TOTAL_LEDS 91

CRGB leds1[NUM_LEDS];
CRGB leds2[NUM_LEDS];
CRGB leds3[NUM_LEDS];

elapsedMillis udpTimeout;
bool udpActive = true;
float inc = 0.0;

IPAddress teensyIP(TEENSY_IP);
EthernetUDP Udp;

#include "SimplexNoise.h"
SimplexNoise sn;

#include "colors.h"

#include "Ghost.h"
Ghost ghostA;
Ghost ghostB;
Ghost ghostC;

uint8_t udpBuffer[245];

void setup() {
  Serial.begin(115200);

  ghostA = Ghost(0);
  ghostB = Ghost(1);
  ghostC = Ghost(2);

  // hsv
  xHSV hsvA = { 359.9, 0.35, 1.0 };
  xHSV hsvB = { 359.9, 0.25, 1.0 };
  xHSV hsvC = { 359.9, 0.15, 1.0 };

  xRGB rgbA = HSVtoRGB(hsvA);
  xRGB rgbB = HSVtoRGB(hsvB);
  xRGB rgbC = HSVtoRGB(hsvC);

  ghostA.setPrimaryColor(rgbA.r, rgbA.g, rgbA.b);
  ghostB.setPrimaryColor(rgbB.r, rgbB.g, rgbB.b);
  ghostC.setPrimaryColor(rgbC.r, rgbC.g, rgbC.b);

  hsvA = { 240, 1.0, 1.0 };
  hsvB = { 240, 0.75, 0.75 };
  hsvC = { 240, 0.5, 0.5 };

  rgbA = HSVtoRGB(hsvA);
  rgbB = HSVtoRGB(hsvB);
  rgbC = HSVtoRGB(hsvC);

  ghostA.setSecondaryColor(rgbA.r, rgbA.g, rgbA.b);
  ghostB.setSecondaryColor(rgbB.r, rgbB.g, rgbB.b);
  ghostC.setSecondaryColor(rgbC.r, rgbC.g, rgbC.b);

  FastLED.addLeds<WS2812, DATA_PIN_1, GRB>(leds1, NUM_LEDS);
  FastLED.addLeds<WS2812, DATA_PIN_2, GRB>(leds2, NUM_LEDS);
  FastLED.addLeds<WS2812, DATA_PIN_3, GRB>(leds3, NUM_LEDS);
  FastLED.setBrightness(255);

  // network
  Ethernet.begin(mac, teensyIP);
  Ethernet.setRetransmissionCount(1);
  Ethernet.setRetransmissionTimeout(1);

  if (Udp.begin(TEENSY_PORT) == 1 && DEBUG) {
    Serial.print("My IP address: ");
    Serial.println(Ethernet.localIP());

    uint8_t _mac[6];
    for (uint8_t by = 0; by < 2; by++) _mac[by] = (HW_OCOTP_MAC1 >> ((1 - by) * 8)) & 0xFF;
    for (uint8_t by = 0; by < 4; by++) _mac[by + 2] = (HW_OCOTP_MAC0 >> ((3 - by) * 8)) & 0xFF;
    Serial.printf("MAC: %02x:%02x:%02x:%02x:%02x:%02x\n", _mac[0], _mac[1], _mac[2], _mac[3], _mac[4], _mac[5]);
  }
}

void loop() {
  delay(16);
  readUDP();
  inc += 0.001;

  if (udpTimeout > 5000) {
    ghostA.update(sn, inc);
    ghostB.update(sn, inc + 1.0);
    ghostC.update(sn, inc + 2.0);

    updateLeds();
  }
}

void readUDP() {
  int size = Udp.parsePacket();

  if (size != sizeof(udpBuffer)) {
    return;
  }

  Udp.read((uint8_t*)udpBuffer, sizeof(udpBuffer));
  if (udpBuffer[0] == 127 && udpBuffer[1] == 127) {
    parseUdpData();
    udpTimeout = 0;
  }
}

void parseUdpData() {
  FastLED.clear();

  uint8_t led = 0;
  for (uint8_t i = 0; i < NUM_LEDS * 3; i += 3) {
    uint8_t r = udpBuffer[2 + i];
    uint8_t g = udpBuffer[2 + i + 1];
    uint8_t b = udpBuffer[2 + i + 2];

    leds1[led] = CRGB(r, g, b);
    led++;
  }

  led = 0;
  for (uint8_t i = 0; i < NUM_LEDS * 3; i += 3) {
    uint8_t r = udpBuffer[2 + i + (NUM_LEDS * 3)];
    uint8_t g = udpBuffer[2 + i + (NUM_LEDS * 3) + 1];
    uint8_t b = udpBuffer[2 + i + (NUM_LEDS * 3) + 2];

    leds2[led] = CRGB(r, g, b);
    led++;
  }

  led = 0;
  for (uint8_t i = 0; i < NUM_LEDS * 3; i += 3) {
    uint8_t r = udpBuffer[2 + i + (NUM_LEDS * 3) * 2];
    uint8_t g = udpBuffer[2 + i + (NUM_LEDS * 3) * 2 + 1];
    uint8_t b = udpBuffer[2 + i + (NUM_LEDS * 3) * 2 + 2];

    leds3[led] = CRGB(r, g, b);
    led++;
  }

  FastLED.show();
}

void updateLeds() {
  FastLED.clear();

  for (uint8_t i = 0; i < NUM_LEDS; i++) {
    uint8_t r = ghostA.leds[i].r;
    uint8_t g = ghostA.leds[i].g;
    uint8_t b = ghostA.leds[i].b;

    leds1[i] = CRGB(r, g, b);
  }

  for (uint8_t i = 0; i < NUM_LEDS; i++) {
    uint8_t r = ghostB.leds[i].r;
    uint8_t g = ghostB.leds[i].g;
    uint8_t b = ghostB.leds[i].b;

    leds2[i] = CRGB(r, g, b);
  }

  for (uint8_t i = 0; i < NUM_LEDS; i++) {
    uint8_t r = ghostB.leds[i].r;
    uint8_t g = ghostB.leds[i].g;
    uint8_t b = ghostB.leds[i].b;

    leds3[i] = CRGB(r, g, b);
  }

  FastLED.show();
}

void allRed() {
  for (uint8_t i = 0; i < NUM_LEDS; i++) {
    uint8_t r = 255;
    uint8_t g = 0;
    uint8_t b = 0;

    leds1[i] = CRGB(r, g, b);
  }

  for (uint8_t i = 0; i < NUM_LEDS; i++) {
    uint8_t r = 255;
    uint8_t g = 0;
    uint8_t b = 0;

    leds2[i] = CRGB(r, g, b);
  }

  for (uint8_t i = 0; i < NUM_LEDS; i++) {
    uint8_t r = 255;
    uint8_t g = 0;
    uint8_t b = 0;

    leds3[i] = CRGB(r, g, b);
  }

  FastLED.show();
}


xRGB HSVtoRGB(xHSV hsv) {
  // algorithm from http://en.wikipedia.org/wiki/HSL_and_HSV#Converting_to_RGB
  xRGB rgb;
  xRGB rgb_p;

  float chroma = hsv.v * hsv.s;
  float sector = float(hsv.h) / 60.0;
  // remainder is sector mod 2 in the real number sense
  float remainder = sector - ((int(sector) / 2) * 2);
  float x = chroma * (1 - abs(remainder - 1));
  switch (int(sector)) {
    case 0:
      rgb_p = (xRGB){ chroma, x, 0 };
      break;
    case 1:
      rgb_p = (xRGB){ x, chroma, 0 };
      break;
    case 2:
      rgb_p = (xRGB){ 0, chroma, x };
      break;
    case 3:
      rgb_p = (xRGB){ 0, x, chroma };
      break;
    case 4:
      rgb_p = (xRGB){ x, 0, chroma };
      break;
    case 5:
      rgb_p = (xRGB){ chroma, 0, x };
      break;
    default:
      rgb_p = (xRGB){ 0, 0, 0 };
  }

  float m = hsv.v - chroma;
  rgb = (xRGB){ rgb_p.r + m, rgb_p.g + m, rgb_p.b + m };

  return rgb;
}