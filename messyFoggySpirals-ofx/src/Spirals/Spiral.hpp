//
//  Spiral.hpp
//  messyFoggySpirals-ofx
//

#ifndef Spiral_hpp
#define Spiral_hpp

#include <stdio.h>
#include "ofMain.h"
#include "Unfolding.hpp"

class Spiral {
public:
    Spiral();
    
    void update();
    void draw();
    void addDot(float position, float direction, float radius);
    void addUnfolding();
    
    void setNumberUnfoldings(int& numberUnfoldings);
    void setNumberWavies(int& numberWavies);
    void setInnerRadius(float& innerRadius);
    void setOuterRadius(float& outerRadius);
    void setThickness(float& thickness);
    void setRotation(float& rotation);
    void setArcDistance(float& arcDistance);
    void setMinArcDistance(float& minArcDistance);
    void setOctave(float& octave);

    void setHotColor(ofColor hotColor);
    void setCoolColor(ofColor coolColor);
    
    void setIsDrawingLines(bool state);
    void setTendrilsActive(bool state);

    vector <Unfolding> unfoldings;
    bool isDrawingLines, isTendrilsActive;
    
    ofParameter<float> thickness;
    ofParameter<float> rotation;
    ofParameter<float> innerRadius;
    ofParameter<float> outerRadius;
    ofParameter<float> arcDistance;
    ofParameter<float> minArcDistance;
    ofParameter<float> octave;

    ofParameter<int> numberUnfoldings;
    ofParameter<int> numberWavies;
    
    ofColor hotColor, coolColor, targetHotColor, targetCoolColor;
private:
};

#endif /* Spiral_hpp */
