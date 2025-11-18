//
//  Footfalls.cpp
//  waveVagrants
//

#include "Footfalls.hpp"

Footfalls::Footfalls() {
    numFootfalls = 9;
    footfallHeight = 20;
    
    for (int i = 0; i < numFootfalls; i++) {
        Footfall footfall;
        footfalls.push_back(footfall);
    }
}

void Footfalls::setFill(int index, ofColor fillColor) {
    if (index >= 0 && index < numFootfalls) {
        footfalls[index].setFill(fillColor);
    }
}

void Footfalls::setNoFill(int index) {
    if (index >= 0 && index < numFootfalls) {
        footfalls[index].setNoFill();
    }
}

void Footfalls::setSystemSize(float _width, float _height) {
    systemWidth = _width;
    systemHeight = _height;
}

void Footfalls::setPrimaryColor(ofColor _primaryColor) {
    primaryColor = _primaryColor;
    for (auto& footfall : footfalls) {
        footfall.setPrimaryColor(primaryColor);
    }
}

void Footfalls::setSecondaryColor(ofColor _secondaryColor) {
    secondaryColor = _secondaryColor;
    for (auto& footfall : footfalls) {
        footfall.setSecondaryColor(secondaryColor);
    }
}

void Footfalls::setAlpha(float alpha) {
    for (auto& footfall : footfalls) {
        footfall.setAlpha(alpha);
    }
}

void Footfalls::setOceanSize(float _width, float _height) {
    oceanWidth = _width;
    oceanHeight = _height;
    
    for (int i = 0; i < numFootfalls; i++) {
        footfalls[i].setOceanSize(oceanWidth, oceanHeight);
    }
}

void Footfalls::setSize(float _width, float _height) {
    width = _width;
    height = _height;
    
    footfallWidth = width / numFootfalls;
    
    ofVec2f center = ofVec2f(systemWidth / 2.0, systemHeight / 2.0);
    ofVec2f startingPoint = ofVec2f(center.x - width / 2.0, center.y - 100);
    
    for (int i = 0; i < numFootfalls; i++) {
        // from center
        float x = startingPoint.x + width / numFootfalls * i + footfallWidth / 2.0;
        float y = startingPoint.y;
        
        footfalls[i].set(x, y, footfallWidth, footfallHeight);
    }
}

void Footfalls::isClicked(float x, float y) {
    for (int i = 0; i < numFootfalls; i++) {
        footfalls[i].isClicked(x, y);
    }
}

void Footfalls::setMovement(float _movement) {
    movement = _movement;
}

void Footfalls::update() {
    float lastFrameTime = ofGetLastFrameTime();

    for (int i = 0; i < numFootfalls; i++) {
        footfalls[i].update(lastFrameTime);
        footfalls[i].setScalarWidth(scalarWidth);
        footfalls[i].setMovement(movement);
    }
}

void Footfalls::setFootfallActive(int index, int state, float _scalarWidth) {
    scalarWidth = _scalarWidth;
    
    footfalls[index].setFootfallActive(state);
    footfalls[index].setScalarWidth(scalarWidth);

}

void Footfalls::setLightFootfallActive(int index, int state, float _scalarWidth) {
    scalarWidth = _scalarWidth;

    footfalls[index].setLightFoolfallActive(state);
    footfalls[index].setScalarWidth(scalarWidth);
}

void Footfalls::draw() {
    for (int i = 0; i < numFootfalls; i++) {
        footfalls[i].draw();
    }
}
