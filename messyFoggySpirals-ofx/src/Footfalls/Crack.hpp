//
//  Crack.hpp
//  waveVagrants
//

#ifndef Crack_hpp
#define Crack_hpp

#include <stdio.h>
#include "ofMain.h"

class Crack {
public:
    Crack(float x, float y, float width, float height, float footfallTimer, float oceanWidth, float alpha, ofColor primaryColor, ofColor secondaryColor);
    
    void update(float lastFrameTime);
    void draw();
    
    void setPrimaryColor(ofColor primaryColor);
    void setSecondaryColor(ofColor secondaryColor);
    
    ofColor crackColor;
    ofColor primaryColor;
    ofColor secondaryColor;
    
    ofRectangle rect;
    
    float x, y;
    float alpha, height;
    float crackWidth, targetCrackWidth;
    float lifetime, totalLifetime;
    bool isAlive;
};

#endif /* Crack_hpp */
