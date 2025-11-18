//
//  Sliver.cpp
//  waveVagrants
//

#include "Sliver.hpp"

Sliver::Sliver(float _x, float _y, float _width, float _height, float _footfallTimer, float oceanWidth, float _alpha, ofColor primaryColor, ofColor secondaryColor) {
    x = _x;
    y = _y;
    width = _width;
    height = _height;
    alpha = _alpha;
    
    lifetime = 0.0;
    totalLifetime = ofRandom(3.5, 6.5);
    sliverColor = primaryColor.getLerped(secondaryColor, ofRandom(0.0, 1.0));

    if (ofRandom(1.0) > 0.5) {
        direction = 1;
    } else {
        direction = -1;
    }
    
    footfallTimer = _footfallTimer;
    isAlive = true;
}

void Sliver::update(float lastFrameTime) {
    lifetime += lastFrameTime;

    float scalar = lifetime / totalLifetime;
    float maxWidth = ofMap(footfallTimer, 0.0, 90.0, width / 2.0, width * 9);
    float sliverWidth = ofMap(scalar, 0.0, 1.0, width / 8.0, 0.0);
    
    float a = ofMap(pow(scalar, 2.0), 0.0, 1.0, 255.0, 0.0);
    sliverColor.a = a * alpha;
    
    float sliverX = ofMap(scalar, 0.0, 1.0, x, x + maxWidth * direction);
    
    rect.setFromCenter(sliverX, y, sliverWidth, height);
    if (lifetime > totalLifetime) isAlive = false;
}

void Sliver::setAlpha(float _alpha) {
    alpha = _alpha;
}

void Sliver::draw() {
    ofFill();
    ofSetColor(sliverColor);
    ofDrawRectangle(rect);
}

void Sliver::setPrimaryColor(ofColor _primaryColor) {
    primaryColor = _primaryColor;
}

void Sliver::setSecondaryColor(ofColor _secondaryColor) {
    secondaryColor = _secondaryColor;
}
