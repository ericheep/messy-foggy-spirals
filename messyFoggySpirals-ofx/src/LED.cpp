//
//  LED.cpp
//  waveVagrants
//

#include "LED.hpp"

LED::LED() {
    downsampleFbo.allocate(1, 1, GL_RGBA);
}

void LED::setOceanFbo(ofFbo& oceanFbo) {
    downsampleFbo.begin();
    ofClear(0, 0, 0, 255);
    
    oceanFbo.getTexture().drawSubsection(
           0, 0, 1, 1,
           subsectionRect.x, subsectionRect.y,
           subsectionRect.width, subsectionRect.height
    );
    
    downsampleFbo.end();
}

void LED::update() {
    ofPixels pixel;
    downsampleFbo.readToPixels(pixel);
    if (pixel.isAllocated()) {
        ledTargetColor = pixel.getColor(0, 0);
    }
    
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
