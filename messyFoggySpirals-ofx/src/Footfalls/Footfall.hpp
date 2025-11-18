//
//  Footfall.hpp
//  messyFoggySpirals
//

#ifndef Footfall_hpp
#define Footfall_hpp

#include <stdio.h>
#include "ofMain.h"
#include "Sliver.hpp"
#include "Crack.hpp"

class Footfall {
public:
    Footfall();
    
    void update(float lastFrameTime);
    void draw();
    
    void set(float x, float y, float width, float height);
    void isClicked(float x, float y);
    void setOceanSize(float width, float height);
   
    void setFill(ofColor fillColor);
    void setNoFill();
    
    void setPrimaryColor(ofColor primaryColor);
    void setSecondaryColor(ofColor secondaryColor);
    void setFootfallActive(int state);
    void setLightFoolfallActive(int state);
    void setAlpha(float alpha);
    void setScalarWidth(float scalarWidth);
    void setMovement(float movement);
    void addSliver();
    void addCrack();
    
    ofRectangle fillRect;
    
    ofRectangle rect;
    ofRectangle buttonRect;
    bool isActive, isLightActive, isCrackActive;
    int randomIndex;
    float oceanWidth, oceanHeight;
    float sliverTimer, sliverInterval;
    float crackTimer, crackInterval;
    float footfallTimer;
    float alpha;
    float scalarWidth;
    float movement;
    int direction;
    
    vector<Sliver> slivers;
    vector<Crack> cracks;
    ofColor primaryColor, secondaryColor, fillColor;
    bool isFillActive;
};

#endif /* Footfall_hpp */
