#include "cmath"
#include "SimplexNoise.h"
#define NUM_LEDS 27

struct Color {
  float r;
  float g;
  float b;
};

struct LED {
  int r;
  int g;
  int b;
};

class Ghost {
public:
  Ghost();
  Ghost(int index);

  Color color;
  Color primaryColor;
  Color secondaryColor;
  
  int index;
  double noise;
  float brightness;
  
  struct LED leds[NUM_LEDS];

  void update(SimplexNoise& sn, float inc);
  void updateLED(int i, SimplexNoise& sn, float inc);

  float fmap(float x, float in_min, float in_max, float out_min, float out_max);
  void setBrightness(float b);
  void setPrimaryColor(float r, float g, float b);
  void setSecondaryColor(float r, float g, float b);
  void interpolateColors(float lerp);
  void mixColors(float mix);
};