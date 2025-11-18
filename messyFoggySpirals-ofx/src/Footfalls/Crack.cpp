//
//  Crack.cpp
//  waveVagrants
//

#include "Crack.hpp"

Crack::Crack(float _x, float _y, float _width, float _height, float _footfallTimer, float oceanWidth, float _alpha, ofColor primaryColor, ofColor secondaryColor) {
    primaryColor = ofColor::white;
    secondaryColor = ofColor::peachPuff;
    crackWidth = 0.0;
    targetCrackWidth = _width;
    totalLifetime = ofRandom(1.5, 2.0);
    lifetime = 0.0;
    alpha = _alpha;
    height = _height;
    isAlive = true;
    x = _x;
    y = _y;
    
    crackColor = primaryColor.getLerped(secondaryColor, ofRandom(0.0, 1.0));
}

void Crack::update(float lastFrameTime) {
    crackWidth = ofLerp(crackWidth, targetCrackWidth, 0.3);
    
    lifetime += lastFrameTime;
    
    float minWidth = crackWidth / 4.0;
    float maxWidth = crackWidth;

    float scalar = lifetime / totalLifetime;
    float w = ofMap(scalar, 0.0, 1.0, minWidth, maxWidth);
    
    float a = ofMap(pow(scalar, 3.0), 0.0, 1.0, 255.0, 0.0);
    crackColor.a = a * alpha;
    
    rect.setFromCenter(x, y, w, height);
    if (lifetime > totalLifetime) isAlive = false;
}

void Crack::draw() {
    ofSetColor(crackColor);
    ofDrawRectangle(rect);
}

void Crack::setPrimaryColor(ofColor _primaryColor) {
    primaryColor = _primaryColor;
}

void Crack::setSecondaryColor(ofColor _secondaryColor) {
    secondaryColor = _secondaryColor;
}
