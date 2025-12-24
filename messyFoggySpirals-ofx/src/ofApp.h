#pragma once

#define _USE_MATH_DEFINES
 
#include <cmath>
#include "ofMain.h"
#include "ofxOsc.h"
#include "ofxGui.h"
#include "ofxQuadWarp.h"

#include "Ocean.hpp"
#include "Footfalls.hpp"
#include "Shadow.hpp"
#include "LEDs.hpp"
#include "Spiral.hpp"

#define RECEIVING_PORT 5432
#define DEV_MODE false
#define CONTROL_WIDTH 1400
#define CONTROL_HEIGHT 500
#define PROJECTOR_WIDTH 1920
#define PROJECTOR_HEIGHT 1200

class ofApp : public ofBaseApp{
public:
    void setup() override;
    void setupGui();
    void setupWarpers();
    void setupWarper(ofxQuadWarp warper, int width, int height);

    void update() override;
    void draw() override;
    void drawFps();
    void drawWarpPoints(ofxQuadWarp& warper, ofMatrix4x4 warpMatrix);
    void drawDisplayWindow(ofEventArgs & args);

    void saveWarp(const string& path, ofxQuadWarp warper);
    void loadWarp(const string& path, ofxQuadWarp &warper);
    void keyPressed(int key) override;
    void exit() override;

    void onMousePressed(ofMouseEventArgs& mouseArgs);
    void onMouseMoved(ofMouseEventArgs& mouseArgs);
    void onMouseDragged(ofMouseEventArgs& mouseArgs);
    void onMouseReleased(ofMouseEventArgs& mouseArgs);
    
    ofxPanel gui;
    ofxPanel colors;
    ofxPanel spiralGui;
    
    ofxColorSlider hotColor, coolColor;
    ofParameter<float> spiralBlurAmount;
    
    ofParameterGroup simulationSettings;
    ofParameterGroup emanationSettings;
    ofParameterGroup boundarySettings;
    
    ofxQuadWarp innerWarper;
    bool innerWarperActive;
private:
    void updateOsc();

    ofxOscReceiver oscReceiver;
    
    ofColor primaryColor;
    ofColor backgroundColor;
        
    ofFbo fboSpiral;
    ofFbo fboSpiralBlur;
    
    Ocean ocean;
    Footfalls footfalls;
    Shadow shadow;
    LEDs leds;
    Spiral spiral;
    ofFbo oceanFbo;
    
    ofPoint points[10];
    ofShader spiralBlur;
    
    float innerNoiseTime, outerNoiseTime, rotation, targetRotation;
    float overallBlurRadius;
    bool guiActive;
};
