//
//  Wavy.hpp
//  messyFoggySpirals-ofx
//

#ifndef Wavy_hpp
#define Wavy_hpp

#include "Anchor.hpp"
#include "Dots.hpp"
#include <stdio.h>
#include <ofMain.h>

class Wavy {
public:
    Wavy(int numAnchors);
    
    void setInnerRadius(float innerRadius);
    void setOuterRadius(float outerRadius);
    void setTheta(float theta);
    void setArcDistance(float arcDistance);
    void setThickness(float thickness);
    void setNoiseTime(float noiseTime);
    void setFill(bool fillState);
    void setVisibility(float visibility);
    void setOctaveMultiplier(float octaveMultiplier);
    void setFollow(float minFollow, float maxFollow);
    void setDirection(float direction);
    void setColor(ofColor color);
    
    void addDot(float position, float direction, float radius);
    void flip();
    void interpolatePoints();
    
    void update();
    void updateAnchors();
    void draw();
    void drawDots();
    void drawShape(ofPolyline& polygon);
    
private:
    ofVec2f initialPoint, endPoint;
    ofVec2f initialHeading, endHeading;
    
    ofPolyline wavyPolyline;
    Dots dots;
    
    int numAnchors;
    float innerRadius, outerRadius;
    float theta, arcDistance, velocity, thickness, totalTime;
    float time, distance, noiseTime, octaveMultiplier, scaledRadius;
    bool isFilled, isFlipped;

    ofColor color;
    vector <Anchor> anchors;
    vector <ofVec2f> currentPoints, targetPoints;
    vector <float> targetValues;
};

#endif /* Wavy_hpp */
