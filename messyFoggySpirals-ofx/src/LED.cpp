//
//  LED.cpp
//  messyFoggySpirals
//

#include "LED.hpp"

LED::LED() {
}

void LED::update() {
    ledColor.lerp(ledTargetColor, 0.3);
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
