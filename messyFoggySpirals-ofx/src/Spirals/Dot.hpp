//
//  Dot.hpp
//  messyFoggySpirals-ofx
//

#ifndef Dot_hpp
#define Dot_hpp

#include <stdio.h>
#include "ofMain.h"

class Dot {
public:
    Dot(float position, float direction, float radius);
    void draw();
    void update();
    void updatePolyline(ofPolyline& polyline);
    void setColor(ofColor color);
    
    float lifeLeft, totalLife, radius;
    ofColor color;
    ofVec2f pos, targetPos;
    float position, direction;
    bool isAlive;
private:
    ofPolyline* polyline = nullptr;
};

#endif /* Dot_hpp */
