//
//  Unfolding.hpp
//  messyFoggySpirals-ofx
//

#ifndef Unfolding_hpp
#define Unfolding_hpp

#include <stdio.h>
#include "Wavy.hpp"
#include "Tendril.hpp"

class Unfolding {
public:
    Unfolding();
    
    void setTheta(float theta);
    void setDirection(float direction);
    void setOctave(float octave);
    void setThickness(float thickness);
    void setNumberWavies(int numberWavies);
    void setNumAnchors(int numAnchors);
    void setArcDistance(float arcDistance);
    void setMinArcDistance(float minArcDistance);
    void setInnerRadius(float innerRadius);
    void setOuterRadius(float outerRadius);
    void setCoolColor(ofColor coolColor);
    void setHotColor(ofColor hotColor);
    void setIsDrawingLines(bool state);

    void addWavy();
    void addTendril();
    void addDot(float position, float direction, float radius);
        
    void update();
    void draw();
    
    int numberWavies, numberAnchors, direction;
    float octave, speed, randomTime;
    float innerRadius, outerRadius;
    float theta, arcDistance, minArcDistance;
    float thickness;
    
    bool isDrawingLines;
    
    ofColor hotColor, coolColor;
    vector <Wavy> wavies;
    Tendril tendril;
private:
};

#endif /* Unfolding_hpp */
