//
//  LED.hpp
//  waveVagrants
//

#ifndef LED_hpp
#define LED_hpp

#include <stdio.h>
#include "ofMain.h"

class LED {
public:
    LED();
    
    void update();
    void draw();
    
    void set(float x, float y, float width, float height);
    void setSubsection(float x, float y, float width, float height);
    void setOceanFbo(ofFbo& oceanFbo);
    
    ofRectangle rect, subsectionRect;
    ofImage subsection;
    ofColor ledColor, ledTargetColor;
    ofFbo downsampleFbo;
};

#endif /* LED_hpp */
