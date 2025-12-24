//
//  Tendril.hpp
//  messyFoggySpirals-ofx
//

#ifndef Tendril_hpp
#define Tendril_hpp

#include "Anchor.hpp"
#include <stdio.h>
#include <ofMain.h>

class Tendril {
public:
    Tendril();
    Tendril(int numAnchors);
    
    void setInnerRadius(float innerRadius);
    void setOuterRadius(float outerRadius);
    void setTheta(float theta);
    void setArcDistance(float arcDistance);
    void setThickness(float thickness);
    void setNoiseTime(float noiseTime);
    void setFill(bool fillState);
    void setVisibility(float visibility);
    void setOctave(float octaveMultiplier);
    void setFollow(float minFollow, float maxFollow);
    void setDirection(float direction);
    void setColor(ofColor hotColor, ofColor coolColor);
    
    void addDot(float position, float direction, float radius);
    void flip();
    void interpolatePoints();
    
    void update();
    void updateForwardAnchors();
    void updateReverseAnchors();
    void updatePolyline();
    
    void draw();
    void drawDots();
    void drawShape(ofPolyline& polygon);
    
private:
    ofVec2f initialPoint, endPoint;
    ofVec2f initialHeading, endHeading;
    
    ofPolyline wavyPolyline;
    
    int numAnchors;
    float innerRadius, outerRadius;
    float theta, arcDistance, velocity, thickness, totalTime;
    float time, distance, noiseTime, octave, scaledRadius;
    bool isFilled, isFlipped;

    ofColor hotColor, coolColor;
    vector <Anchor> anchors;
    vector <ofVec2f> currentPoints, targetPoints;
    vector <float> targetValues;
    
    bool drawOnce;
};

#endif /* Tendril_hpp */
