//
//  Dots.hpp
//  messyFoggySpirals-ofx
//

#ifndef Dots_hpp
#define Dots_hpp

#include <stdio.h>
#include <ofMain.h>
#include "Dot.hpp"

class Dots {
public:
    Dots();
    
    void draw();
    void update();
    void addDot(float position, float direction, float radius, ofPolyline& polyline);
    void setColor(ofColor color);
    
    ofColor color;
    
    vector <Dot> dots;
private:
};

#endif /* Dots_hpp */
