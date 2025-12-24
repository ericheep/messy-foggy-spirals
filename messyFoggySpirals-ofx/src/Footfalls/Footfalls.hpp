//
//  Footfalls.hpp
//  messyFoggySpirals
//

#ifndef Footfalls_hpp
#define Footfalls_hpp

#include <stdio.h>
#include "ofMain.h"
#include "Footfall.hpp"

class Footfalls {
public:
    Footfalls();
    
    void update();
    void draw();
    
    void setSystemSize(float width, float height);
    void setOceanSize(float width, float height);
    void setSize(float width, float height);
    void setRectangle(float x, float y, float width, float height);
    
    void setAlpha(float alpha);
    void setMovement(float movement);
    void setFill(int index, ofColor fillColor);
    void setNoFill(int index);
    void clear();
    
    void setPrimaryColor(ofColor primaryColor);
    void setSecondaryColor(ofColor secondaryColor);
    void setFootfallActive(int index, int state, float scalarWidth);
    void setLightFootfallActive(int index, int state, float scalarWidth);

    void isClicked(float x, float y);
    
    vector <Footfall> footfalls;
    
    int numFootfalls;
    float width, height;
    float systemWidth, systemHeight;
    float oceanWidth, oceanHeight;
    float footfallWidth, footfallHeight;
    float scalarWidth, movement;
    ofColor primaryColor, secondaryColor;
};

#endif /* Footfalls_hpp */
