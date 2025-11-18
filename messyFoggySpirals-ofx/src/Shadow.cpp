//
//  Shadow.cpp
//  waveVagrants
//

#include "Shadow.hpp"

Shadow::Shadow() {
}

void Shadow::set(float y, float width, float height) {
    oceanWidth = width;
    oceanHeight = height;
    rect.setFromCenter(0, y, width / 4.0, height);
    
    switchDirection = false;
    
    startX = ofGetWidth() / 2.0 - oceanWidth / 2.0 - rect.width;
    endX = ofGetWidth() / 2.0 + oceanWidth / 2.0 + rect.width / 2.0;
}

void Shadow::update() {
    if (isActive) {
        rect.x = rect.x + 6.0 * direction;
        
        if (rect.x > endX + 1) {
            isActive = false;
        } else if (rect.x < startX - 1) {
            isActive = false;
        }
    }
}

void Shadow::setShadowActive(int state) {
    if (state == 1) {
        isActive = true;
        
        switchDirection = !switchDirection;
        if (switchDirection) {
            direction = 1;
            rect.x = startX;
        } else {
            direction = -1;
            rect.x = endX;
        }
    } else {
        isActive = false;
    }
}

void Shadow::draw() {
    if (isActive) {
        ofSetColor(ofColor::black);
        ofDrawRectangle(rect);
    }
}
