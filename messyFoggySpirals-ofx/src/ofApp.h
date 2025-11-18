#pragma once

#define _USE_MATH_DEFINES
 
#include <cmath>
#include "ofMain.h"
#include "ofxOsc.h"
#include "ofxGui.h"

#include "Ocean.hpp"
#include "Footfalls.hpp"
#include "Shadow.hpp"
#include "LEDs.hpp"

#define RECEIVING_PORT 5432
#define DEV_MODE false

class ofApp : public ofBaseApp{
public:
    void setup() override;
    void setupGui();
    
    void update() override;
    void draw() override;
    
    void drawFps();
    
    void exit() override;
    void keyPressed(int key) override;

    void onMousePressed(ofMouseEventArgs& mouseArgs);
    void onMouseMoved(ofMouseEventArgs& mouseArgs);
    void onMouseDragged(ofMouseEventArgs& mouseArgs);
    void onMouseReleased(ofMouseEventArgs& mouseArgs);
    
    ofxPanel gui;
    ofxPanel colors;
    
    ofParameterGroup simulationSettings;
    ofParameterGroup emanationSettings;
    ofParameterGroup boundarySettings;
private:
    void updateOsc();

    ofxOscReceiver oscReceiver;
    
    ofColor primaryColor;
    ofColor backgroundColor;
        
    Ocean ocean;
    Footfalls footfalls;
    Shadow shadow;
    LEDs leds;
    ofFbo oceanFbo;
    
    float width, height, innerWidth, innerHeight;
    float radius, innerNoiseTime, outerNoiseTime;
    float overallBlurRadius;
    bool guiActive;
};
