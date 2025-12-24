//
//  LED.cpp
//  messyFoggySpirals
//

#include "LED.hpp"

LED::LED() {
    ledColor = ofColor::black;
    ledTargetColor = ofColor::black;
    maxColor = ofColor::black;
}

void LED::update() {
    ledColor.lerp(ledTargetColor, 0.9);
}

void LED::draw() {
    ofSetColor(ledColor);
    ofFill();
    ofDrawRectangle(rect);
}

void LED::setSubsection(float x, float y, float width, float height) {
    subsectionRect.setFromCenter(x, y, width, height);
}

void LED::set(float x, float y, float width, float height) {
    rect.setFromCenter(x, y, width, height);
}
