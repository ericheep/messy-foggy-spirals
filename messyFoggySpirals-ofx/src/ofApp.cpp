#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofSetFrameRate(60);
    ofSetVerticalSync(true);
    ofEnableSmoothing();
    ofEnableAlphaBlending();
    ofSetBackgroundAuto(false);
    
    width = ofGetWidth();
    height = ofGetHeight();
    
    // gl settings
    glEnable(GL_POINT_SMOOTH);
    glEnable(GL_LINE_SMOOTH);

    // osc settings
    oscReceiver.setup(RECEIVING_PORT);
    
    // initialize colors
    backgroundColor = ofColor::black;
    
    int oceanWidth = width - 350;
    int oceanHeight = 100;
    
    ocean.setSystemSize(width, height);
    ocean.setSize(oceanWidth, oceanHeight);

    footfalls.setSystemSize(width, height);
    footfalls.setSize(oceanWidth, 50);
    footfalls.setOceanSize(oceanWidth, oceanHeight);
    
    shadow.set(height / 2.0, oceanWidth, oceanHeight);
    
    leds.setSystemSize(width, height);
    leds.setSize(oceanWidth, 50);
    
    setupGui();
    
    innerNoiseTime = 0.0f;
    outerNoiseTime = 0.0f;
    overallBlurRadius = 1.0f;
    
    ofAddListener(ofEvents().mousePressed, this, &ofApp::onMousePressed);
    
    oceanFbo.allocate(width, height, GL_RGBA);
    ocean.setActive(0);
}

void ofApp::setupGui() {
    guiActive = false;
    
    // main gui setup
    gui.setup("m/f spirals");
    gui.setSize(140, 12);
    gui.setDefaultWidth(120);
    gui.setDefaultHeight(12);

    // general gui settings
    gui.add(ocean.numberParticles.set("number", 100, 0, 5000));
    gui.add(ocean.influenceRadius.set("influence radius", 10.0, 0.5, 75.0));
    gui.add(ocean.timeScalar.set("time scalar", 1.0, 0.25, 4.0));
    gui.add(ocean.gravityMultiplier.set("gravity multiplier", 0.0, 0.0, 5.0));
    
    // graphic gui settings
    gui.add(ocean.connectionRadius.set("connection radius", 0, 0, 200.0));
    gui.add(ocean.drawMode.set("draw mode", 0, 0, 5));
    gui.add(ocean.velocityCurve.set("velocity curve", 1.0, 0.0, 3.0));
    gui.add(ocean.minVelocity.set("min velocity", 0.0, 0.0, 100.0));
    gui.add(ocean.maxVelocity.set("max velocity", 50.0, 0.0, 250.0));
    gui.add(ocean.minSize.set("min size", 1.0, 0.0, 25.0));
    gui.add(ocean.maxSize.set("max size", 15.0, 0.0, 25.0));
    
    colors.setup("colors");
    colors.setSize(140, 12);
    colors.setPosition(10, 225);
    colors.setDefaultWidth(120);
    colors.setDefaultHeight(12);
    colors.add(ocean.hotColor.setup(ofColor::pink, 120, 12));
    colors.add(ocean.coolColor.setup(ofColor::red, 120, 12));
    
    simulationSettings.setName("sim settings");
    simulationSettings.add(ocean.targetDensity.set("density", 1.0, 0.125, 3.0));
    simulationSettings.add(ocean.pressureMultiplier.set("pressure", 100, 0, 1000.0));
    simulationSettings.add(ocean.nearPressureMultiplier.set("near pressure", 100, 0.0, 1000.0));
    gui.add(simulationSettings);
    gui.loadFromFile("settings.xml");
}

//--------------------------------------------------------------
void ofApp::update() {
    updateOsc();
    ocean.checkFootfalls(footfalls);
    ocean.update();
    footfalls.update();
    leds.update();
    shadow.update();
}

void ofApp::drawFps() {
    std::stringstream strm;
    strm << std::setprecision(3) << "fps: " << ofGetFrameRate();
    ofSetWindowTitle(strm.str());
}

void ofApp::draw() {
    ofBackground(backgroundColor);
    
    oceanFbo.begin();
    ofClear(0);
    ocean.draw();
    footfalls.draw();
    shadow.draw();
    leds.draw();
    oceanFbo.end();

    oceanFbo.draw(0, 0);
    gui.draw();
    colors.draw();
    drawFps();
    
    leds.setOceanFbo(oceanFbo);
}

void ofApp::keyPressed(int key) {
    switch(key) {
        case 'g':
            guiActive = !guiActive;
            break;
        case 's':
            gui.saveToFile("settings.xml");
            break;
        case 'l':
            gui.loadFromFile("settings.xml");
            break;
    }
}

void ofApp::exit() {

}

void ofApp::updateOsc() {
    while(oscReceiver.hasWaitingMessages()) {
        ofxOscMessage m;
        oscReceiver.getNextMessage(m);
        
        if (m.getAddress() == "/ocean") {
            int state = m.getArgAsInt(0);
            ocean.setActive(state);
        }
        
        if (m.getAddress() == "/crackFootfall") {
            int index = m.getArgAsInt(0);
            int state = m.getArgAsInt(1);
            float width = m.getArgAsFloat(2);
            
            footfalls.setFootfallActive(index, state, width);
        }
        
        if (m.getAddress() == "/lightFootfall") {
            int index = m.getArgAsInt(0);
            int state = m.getArgAsInt(1);
            float width = m.getArgAsFloat(2);

            footfalls.setLightFootfallActive(index, state, width);
        }
        
        if (m.getAddress() == "/lightScalarWidth") {
            int index = m.getArgAsInt(0);
            int state = m.getArgAsInt(1);
            float width = m.getArgAsFloat(2);

            footfalls.setLightFootfallActive(index, state, width);
        }
        
        if (m.getAddress() == "/footfallAlpha") {
            float alpha = m.getArgAsFloat(0);

            footfalls.setAlpha(alpha);
        }
        
        if (m.getAddress() == "/footfallColors") {
            int r1 = m.getArgAsInt(0);
            int g1 = m.getArgAsInt(1);
            int b1 = m.getArgAsInt(2);
            int r2 = m.getArgAsInt(3);
            int g2 = m.getArgAsInt(4);
            int b2 = m.getArgAsInt(5);

            footfalls.setPrimaryColor(ofColor(r1, g1, b1));
            footfalls.setSecondaryColor(ofColor(r2, g2, b2));
        }
        
        if (m.getAddress() == "/progress") {
            float p = m.getArgAsFloat(0);
            footfalls.setMovement(p);
        }
        
        if (m.getAddress() == "/shadow") {
            int state = m.getArgAsInt(0);
            shadow.setShadowActive(state);
        }
        
        if (m.getAddress() == "/ghostFill") {
            int index = m.getArgAsInt(0);
            ofColor fillColor = ofColor(m.getArgAsInt(1), m.getArgAsInt(2), m.getArgAsInt(3));
            footfalls.setFill(index, fillColor);
        }
        
        if (m.getAddress() == "/ghostNoFill") {
            int index = m.getArgAsInt(0);
            footfalls.setNoFill(index);
        }
    }
}


void ofApp::onMousePressed(ofMouseEventArgs& mouseArgs) {
    footfalls.isClicked(mouseArgs.x, mouseArgs.y);
}

void ofApp::onMouseDragged(ofMouseEventArgs& mouseArgs) {
    //starField.setWarp(innerWarper, outerWarper);

}

void ofApp::onMouseReleased(ofMouseEventArgs& mouseArgs) {
    //starField.setWarp(innerWarper, outerWarper);
}
