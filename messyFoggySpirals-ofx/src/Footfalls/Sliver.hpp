//
//  Sliver.hpp
//  waveVagrants
//

#ifndef Sliver_hpp
#define Sliver_hpp

#include <stdio.h>
#include "ofMain.h"

class Sliver {
public:
    Sliver(float x, float y, float width, float height, float footfallTimer, float oceanWidth, float alpha, ofColor primaryColor, ofColor secondaryColor);
    
    void update(float lastFrameTime);
    void draw();
    void setAlpha(float alpha);
    
    bool isAlive;
    float totalLifetime, lifetime, lastFrameTime;
    float x, y, width, height;
    float footfallTimer;
    int direction;
    float alpha;
    
    void setPrimaryColor(ofColor primaryColor);
    void setSecondaryColor(ofColor secondaryColor);
    
    ofColor sliverColor;
    ofRectangle rect;
    
    ofColor primaryColor;
    ofColor secondaryColor;
};

#endif /* Sliver_hpp */
