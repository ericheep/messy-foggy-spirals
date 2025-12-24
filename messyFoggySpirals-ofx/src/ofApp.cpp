#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofSetFrameRate(60);
    ofSetVerticalSync(true);
    ofSetBackgroundAuto(false);
    ofEnableSmoothing();
    ofSetCircleResolution(10);
    
    // gl settings
    glEnable(GL_POINT_SMOOTH);
    glEnable(GL_LINE_SMOOTH);

    // osc settings
    oscReceiver.setup(RECEIVING_PORT);
    
    // initialize colors
    backgroundColor = ofColor::black;
    
    int oceanWidth = CONTROL_WIDTH - 20;
    int oceanHeight = 150;
    
    ocean.setRectangle(10, 310, oceanWidth, oceanHeight);
    footfalls.setRectangle(10, 285, oceanWidth, oceanHeight);
    shadow.setRectangle(10, 310, oceanWidth, oceanHeight);
    leds.setRectangle(10, 460, oceanWidth, oceanHeight);
    
    setupGui();

    ofFbo::Settings spiralSettings;
    spiralSettings.width = PROJECTOR_WIDTH;
    spiralSettings.height = PROJECTOR_HEIGHT;
    spiralSettings.internalformat = GL_RGBA;
    spiralSettings.useDepth = false;
    spiralSettings.useStencil = false;
    // spiralSettings.textureTarget = GL_TEXTURE_RECTANGLE_ARB;
    spiralSettings.numSamples = 0;
    
    innerNoiseTime = 0.0f;
    outerNoiseTime = 0.0f;
    overallBlurRadius = 1.0f;
    
    // load shaders
    spiralBlur.load("shaders/blur");
    fboSpiralBlur.allocate(spiralSettings);
    
    ofAddListener(ofEvents().mousePressed, this, &ofApp::onMousePressed);
    
    oceanFbo.allocate(CONTROL_WIDTH, CONTROL_HEIGHT, GL_RGBA);
    fboSpiral.allocate(PROJECTOR_WIDTH, PROJECTOR_HEIGHT, GL_RGBA);

    ocean.setActive(0);
    setupWarpers();
}

void ofApp::setupWarpers() {
    setupWarper(innerWarper, PROJECTOR_WIDTH, PROJECTOR_HEIGHT);
    if (!DEV_MODE) loadWarp("innerWarper.xml", innerWarper);
    innerWarper.hide();
    innerWarper.disableKeyboardShortcuts();
}

void ofApp::setupGui() {
    guiActive = false;
    
    // main gui setup
    gui.setup("m/f spirals");
    gui.setSize(140, 12);
    gui.setPosition(10, 10);
    gui.setDefaultWidth(120);
    gui.setDefaultHeight(12);

    // general gui settings
    gui.add(ocean.numberParticles.set("number", 2000, 0, 5000));
    gui.add(ocean.influenceRadius.set("influence radius", 5.0, 0.5, 75.0));
    gui.add(ocean.timeScalar.set("time scalar", 1.0, 0.25, 4.0));
    gui.add(ocean.gravityMultiplier.set("gravity multiplier", 0.0, 0.0, 5.0));
    
    // graphic gui settings
    gui.add(ocean.connectionRadius.set("connection radius", 0, 0, 200.0));
    gui.add(ocean.drawMode.set("draw mode", 0, 0, 5));
    gui.add(ocean.velocityCurve.set("velocity curve", 1.0, 0.0, 3.0));
    gui.add(ocean.minVelocity.set("min velocity", 0.0, 0.0, 100.0));
    gui.add(ocean.maxVelocity.set("max velocity", 10.0, 0.0, 25.0));
    gui.add(ocean.minSize.set("min size", 2.0, 0.0, 25.0));
    gui.add(ocean.maxSize.set("max size", 10.0, 0.0, 25.0));
    
    colors.setup("colors");
    colors.setSize(140, 12);
    colors.setPosition(10, 220);
    colors.setDefaultWidth(120);
    colors.setDefaultHeight(12);
    colors.add(hotColor.setup(ofColor::pink, 120, 12));
    colors.add(coolColor.setup(ofColor::red, 120, 12));
    
    simulationSettings.setName("sim settings");
    simulationSettings.add(ocean.targetDensity.set("density", 1.0, 0.125, 3.0));
    simulationSettings.add(ocean.pressureMultiplier.set("pressure", 100, 0, 1000.0));
    simulationSettings.add(ocean.nearPressureMultiplier.set("near pressure", 100, 0.0, 1000.0));
    gui.add(simulationSettings);
    // gui.loadFromFile("settings.xml");
    
    spiralGui.setup("spiral");
    spiralGui.setSize(150, 12);
    spiralGui.setPosition(160, 10);
    spiralGui.setDefaultWidth(120);
    spiralGui.setDefaultHeight(12);
    spiralGui.add(spiral.numberUnfoldings.set("unfoldings", 3, 0, 15));
    spiralGui.add(spiral.numberWavies.set("wavies", 0, 0, 250));
    spiralGui.add(spiral.rotation.set("rotation", 0, 0, TWO_PI));
    spiralGui.add(spiral.innerRadius.set("inner radius", 15, 0, 25));
    spiralGui.add(spiral.outerRadius.set("outer radius", 100, 0, 250));
    spiralGui.add(spiral.thickness.set("thickness", 30, 0, 300));
    spiralGui.add(spiral.arcDistance.set("arc distance", PI, 0.0, TWO_PI * 2));
    spiralGui.add(spiral.minArcDistance.set("min arc distance", 0.25, 0.25, 1.0));
    spiralGui.add(spiral.octave.set("octave", 1.0, 0.25, 50.0));
    spiralGui.add(spiralBlurAmount.set("blur", 1.0, 0.0, 1.0));
}

//--------------------------------------------------------------
void ofApp::update() {
    rotation = ofLerp(rotation, targetRotation, 0.1);
    
    updateOsc();
    ocean.checkFootfalls(footfalls);
    ocean.update();
    footfalls.update();
    leds.update();
    shadow.update();
    spiral.update();
    
    oceanFbo.begin();
    ofClear(0);
    ocean.draw();
    footfalls.draw();
    shadow.draw();
    leds.draw();
    leds.setOceanFbo(oceanFbo);
    oceanFbo.end();

    fboSpiral.begin();
    ofClear(0.0f, 0.0f, 0.0f, 0.0f);
    ofSetColor(255, 255, 255);
    ofPushMatrix();
    ofTranslate(PROJECTOR_WIDTH / 2.0, PROJECTOR_HEIGHT / 2.0, 0);
    ofRotateRad(rotation);
    spiral.draw();
    ofPopMatrix();
    fboSpiral.end();
    
    fboSpiralBlur.begin();
    ofClear(0.0f, 0.0f, 0.0f, 0.0f);
    ofSetColor(255, 255, 255);
    spiralBlur.begin();
    spiralBlur.setUniform1f("u_blurMix", spiralBlurAmount);
    // spiralBlur.setUniform1f("u_blurRadius", ofMap(spiralBlurAmount, 0.77, 1.0, 16.0, 64.0));
    spiralBlur.setUniform1f("u_blurRadius", 16);

    fboSpiral.draw(0, 0);
    spiralBlur.end();
    fboSpiralBlur.end();
}

void ofApp::drawFps() {
    std::stringstream strm;
    strm << std::setprecision(3) << "fps: " << ofGetFrameRate();
    ofSetWindowTitle(strm.str());
}

void ofApp::draw() {
    ofBackground(backgroundColor);
    fboSpiralBlur.draw(400, 10, 250, 250);
    
    //drawWarpPoints(innerWarper, innerWarper.getMatrix());
    
    oceanFbo.draw(0, 0);
    gui.draw();
    spiralGui.draw();
    colors.draw();
    drawFps();
    

}

void ofApp::drawDisplayWindow(ofEventArgs & args) {
    ofBackground(0);
    //ofMatrix4x4 innerMatrix = innerWarper.getMatrix();

    //ofPushMatrix();
    //ofMultMatrix(innerMatrix);
    //ofSetColor(ofColor::white);
    fboSpiralBlur.draw(0, 0);
    //ofPopMatrix();
    
    //drawWarpPoints(innerWarper, innerWarper.getMatrix());
}

void ofApp::exit() {
}

void ofApp::updateOsc() {
    while(oscReceiver.hasWaitingMessages()) {
        ofxOscMessage m;
        oscReceiver.getNextMessage(m);
        
        if (m.getAddress() == "/led") {
            int w = m.getArgAsInt(0);
            int l = m.getArgAsInt(1);
            int r = m.getArgAsInt(2);
            int g = m.getArgAsInt(3);
            int b = m.getArgAsInt(4);

            leds.setLed(w, l, r, g, b);
        }
        
        if (m.getAddress() == "/addDot") {
            float p = m.getArgAsFloat(0);
            float d = m.getArgAsFloat(1);
            float r = m.getArgAsFloat(2);
            
            spiral.addDot(p, d, r);

        }
        
        if (m.getAddress() == "/numberUnfoldings") {
            int n = m.getArgAsInt(0);
            spiral.numberUnfoldings.set(n);
        }
       
        if (m.getAddress() == "/numberWavies") {
            int n = m.getArgAsInt(0);
            spiral.numberWavies.set(n);
        }
        
        if (m.getAddress() == "/arcDistance") {
            int d = m.getArgAsInt(0);
            spiral.arcDistance.set(d);
        }
        
        
        if (m.getAddress() == "/rotation") {
            targetRotation = m.getArgAsFloat(0);
        }
        
        if (m.getAddress() == "/spiralRotation") {
            float r = m.getArgAsFloat(0);
            spiral.rotation.set(r);
        }
        
        if (m.getAddress() == "/innerRadius") {
            float r = m.getArgAsFloat(0);
            spiral.innerRadius.set(r);
        }
        
        if (m.getAddress() == "/outerRadius") {
            float r = m.getArgAsFloat(0);
            spiral.outerRadius.set(r);
        }
        
        if (m.getAddress() == "/thickness") {
            float t = m.getArgAsFloat(0);
            spiral.thickness.set(t);
        }
        
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
        
        if (m.getAddress() == "/clear") {
            footfalls.clear();
        }
        
        if (m.getAddress() == "/lightFootfall") {
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
        
        if (m.getAddress() == "/octave") {
            float p = m.getArgAsFloat(0);
            spiral.octave.set(p);
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
        
        if (m.getAddress() == "/drawLines") {
            int n = m.getArgAsInt(0);
            
            bool state = false;
            if (n == 1) {
                state = true;
            }

            spiral.setIsDrawingLines(state);
        }
        
        if (m.getAddress() == "/drawSpiral") {
            int n = m.getArgAsInt(0);
            
            bool state = false;
            if (n == 1) {
                state = true;
            }

            spiral.setTendrilsActive(state);
        }
        
        if (m.getAddress() == "/hotColor") {
            int r = m.getArgAsFloat(0);
            int g = m.getArgAsFloat(1);
            int b = m.getArgAsFloat(2);

            ofColor c = ofColor(r, g, b);
            c.setSaturation(200);
            footfalls.setPrimaryColor(c);
            
            hotColor = ofColor(r, g, b);
            ocean.setHotColor(hotColor);
            spiral.setHotColor(hotColor);
        }
        
        if (m.getAddress() == "/coolColor") {
            int r = m.getArgAsFloat(0);
            int g = m.getArgAsFloat(1);
            int b = m.getArgAsFloat(2);
            
            ofColor c = ofColor(r, g, b);
            c.setSaturation(200);
            footfalls.setSecondaryColor(c);

            coolColor = ofColor(r, g, b);
            ocean.setCoolColor(coolColor);
            spiral.setCoolColor(coolColor);
        }
    }
}

void ofApp::keyPressed(int key) {
    switch(key) {
        case 'l':
            loadWarp("innerWarper.xml", innerWarper);
            //gui.loadFromFile("settings.xml");
            break;
        case 's':
            saveWarp("innerWarper.xml", innerWarper);
            //gui.saveToFile("settings.xml");
            break;
        case 'i':
            innerWarper.enableKeyboardShortcuts();
            innerWarper.show();
            break;
        case 'o':
            innerWarper.disableKeyboardShortcuts();
            innerWarper.hide();
            break;
        case 'h':
            innerWarper.disableKeyboardShortcuts();
            innerWarper.hide();
            break;
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

void ofApp::setupWarper(ofxQuadWarp warper, int width, int height) {
    float halfWidth = width * 0.5;
    float halfHeight = height * 0.5;
    
    ofPoint center = ofPoint(ofGetWidth() * 0.5, ofGetWidth() * 0.5);
    
    // top left, top right, bottom left, bottom right
    ofPoint p1 = center + ofPoint(-halfWidth, -halfHeight);
    ofPoint p2 = center + ofPoint(halfWidth, -halfHeight);
    ofPoint p3 = center + ofPoint(-halfWidth, halfHeight);
    ofPoint p4 = center + ofPoint(halfWidth, halfHeight);
    
    warper.setSourceRect(ofRectangle(0, 0, width, height));
    warper.setTopLeftCornerPosition(p1);
    warper.setTopRightCornerPosition(p2);
    warper.setBottomLeftCornerPosition(p3);
    warper.setBottomRightCornerPosition(p4);
    
    warper.setup();
}

void ofApp::drawWarpPoints(ofxQuadWarp& warper, ofMatrix4x4 warpMatrix) {
    ofSetLineWidth(2);
    ofSetColor(ofColor::cyan);
    
    for(int i = 0; i < 9; i++) {
        int j = i + 1;
        
        ofVec3f p1 = warpMatrix.preMult(ofVec3f(points[i].x, points[i].y, 0));
        ofVec3f p2 = warpMatrix.preMult(ofVec3f(points[j].x, points[j].y, 0));
        
        ofDrawLine(p1.x, p1.y, p2.x, p2.y);
    }
    
    ofSetColor(ofColor::magenta);
    warper.drawQuadOutline();
    
    ofSetColor(ofColor::yellow);
    warper.drawCorners();
    
    ofSetColor(ofColor::magenta);
    warper.drawHighlightedCorner();
    
    ofSetColor(ofColor::red);
    warper.drawSelectedCorner();
}

//----------------------------------------------------- save / load.
void ofApp::saveWarp(const string& path, ofxQuadWarp warper) {
    ofXml xml;
    xml.appendChild("quadwarp");
    
    ofXml src = xml.getChild("quadwarp").appendChild("src");
    for (int i = 0; i < 4; i++) {
        auto t = src.appendChild("point");
        t.setAttribute("x", ofToString(warper.srcPoints[i].x));
        t.setAttribute("y", ofToString(warper.srcPoints[i].y));
    }
    
    ofXml dst = xml.getChild("quadwarp").appendChild("dst");
    for (int i = 0; i < 4; i++) {
        auto t = dst.appendChild("point");
        t.setAttribute("x", ofToString(warper.dstPoints[i].x));
        t.setAttribute("y", ofToString(warper.dstPoints[i].y));
    }
    
    xml.save(path);
}

void ofApp::loadWarp(const string& path, ofxQuadWarp &warper) {
    ofXml xml;
    if (!xml.load(path)) return;
    
    auto src = xml.getChild("quadwarp").getChild("src");
    int i = 0;
    for (auto it = src.getChildren().begin(); it != src.getChildren().end(); it++) {
        warper.srcPoints[i].x = it->getAttribute("x").getFloatValue();
        warper.srcPoints[i].y = it->getAttribute("y").getFloatValue();
        i++;
    }
    
    auto dst = xml.getChild("quadwarp").getChild("dst");
    i = 0;
    for (auto it = dst.getChildren().begin(); it != dst.getChildren().end(); it++) {
        warper.dstPoints[i].x = it->getAttribute("x").getFloatValue();
        warper.dstPoints[i].y = it->getAttribute("y").getFloatValue();
        i++;
    }
}
