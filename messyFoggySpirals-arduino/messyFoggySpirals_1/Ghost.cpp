#include "Ghost.h"

Ghost::Ghost() {
}

Ghost::Ghost(int _index) {
  primaryColor.r = 0;
  primaryColor.g = 0;
  primaryColor.b = 0;

  secondaryColor.r = 0;
  secondaryColor.g = 0;
  secondaryColor.b = 0;

  brightness = 1.0;
  noise = 0.0;
  index = _index;
}

void Ghost::update(SimplexNoise& sn, float inc) {
  for (int i = 0; i < NUM_LEDS; i++) {
    updateLED(i, sn, inc);
  }
}

void Ghost::updateLED(int i, SimplexNoise& sn, float inc) {
  double n = sn.noise(i * 0.1, inc);
  double br = sn.noise(i * 0.1, inc * 2.5);
  n = fmap(n, -1.0, 1.0, 0.0, 1.0);
  br = fmap(br, -1.0, 1.0, 0.7, 1.0);

  mixColors(n);

  uint8_t r = (uint8_t)(color.r * 255 * br);
  uint8_t g = (uint8_t)(color.g * 255 * br);
  uint8_t b = (uint8_t)(color.b * 255 * br);

  leds[i].r = r;
  leds[i].g = g;
  leds[i].b = b;
}

void Ghost::interpolateColors(float lerp) {
  color.r = primaryColor.r + lerp * (primaryColor.r - secondaryColor.r);
  color.g = primaryColor.g + lerp * (primaryColor.g - secondaryColor.g);
  color.b = primaryColor.b + lerp * (primaryColor.b - secondaryColor.b);
}

void Ghost::mixColors(float mix) {
  color.r = mix * primaryColor.r + (1.0 - mix) * secondaryColor.r;
  color.g = mix * primaryColor.g + (1.0 - mix) * secondaryColor.g;
  color.b = mix * primaryColor.b + (1.0 - mix) * secondaryColor.b;
}

void Ghost::setPrimaryColor(float r, float g, float b) {
  primaryColor.r = r;
  primaryColor.g = g;
  primaryColor.b = b;
}

void Ghost::setSecondaryColor(float r, float g, float b) {
  secondaryColor.r = r;
  secondaryColor.g = g;
  secondaryColor.b = b;
}

float Ghost::fmap(float x, float in_min, float in_max, float out_min, float out_max) {
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}
