//
//  Footfall.cpp
//  waveVagrants
//

#include "Footfall.hpp"

Footfall::Footfall() {
    isActive = false;
    isCrackActive = false;
    isLightActive = false;
    randomIndex = -1;
    sliverInterval = 0.1;
    sliverTimer = 0.0;
    crackInterval = 0.1;
    crackTimer = 0.0;
    footfallTimer = 0.0;
    alpha = 1.0;
    scalarWidth = 0.25;
    movement = 0.0;
    direction = 1.0;
    
    primaryColor = ofColor::white;
    secondaryColor = ofColor::white;
}

void Footfall::setOceanSize(float width, float height) {
    oceanWidth = width;
    oceanHeight = height;
}

void Footfall::setFill(ofColor _fillColor) {
    fillColor = _fillColor;
    isFillActive = true;
}

void Footfall::setNoFill() {
    isFillActive = false;
}

void Footfall::setAlpha(float _alpha) {
    for (auto& sliver : slivers) {
        sliver.setAlpha(_alpha);
        alpha = _alpha;
    }
}

void Footfall::setMovement(float _movement) {
    movement = _movement;
}

void Footfall::isClicked(float x, float y) {
    if (buttonRect.inside(x, y)) {
        isActive = !isActive;
        // isLightActive = !isLightActive;
        isCrackActive = !isCrackActive;
        
        if (isActive) {
            if (ofRandom(1.0) > 0.5) {
                direction = 1;
            } else {
                direction = -1;
            }
            sliverTimer = 0.0;
            footfallTimer = 0.0;
        }
    }
}

void Footfall::setScalarWidth(float _scalarWidth) {
    scalarWidth = _scalarWidth;
}

void Footfall::setFootfallActive(int state) {
    if (state == 1) {
        isCrackActive = true;
        isActive = true;
        addCrack();
        
        if (ofRandom(1.0) > 0.5) {
            direction = 1;
        } else {
            direction = -1;
        }
    } else {
        isCrackActive = false;
        isActive = false;
    }
}

void Footfall::setLightFoolfallActive(int state) {
    if (state == 1) {
        isCrackActive = true;
        isLightActive = true;
        isActive = true;
        addSliver();

        if (ofRandom(1.0) > 0.5) {
            direction = 1;
        } else {
            direction = -1;
        }
    } else {
        isCrackActive = false;
        isLightActive = false;
        isActive = false;
    }
}

void Footfall::addCrack() {
    float w = rect.width * scalarWidth;
    
    cracks.push_back(Crack(rect.x + rect.width / 2.0, ofGetHeight() / 2.0, w, oceanHeight, footfallTimer, oceanWidth, alpha, primaryColor, secondaryColor));
}

void Footfall::addSliver() {
    float w = rect.width * scalarWidth;

    slivers.push_back(Sliver(rect.x + rect.width / 2.0, ofGetHeight() / 2.0, w, oceanHeight, footfallTimer, oceanWidth, alpha, primaryColor, secondaryColor));
}

void Footfall::update(float lastFrameTime) {
    if (!isActive) {
        footfallTimer = 0.0;
    } else {
        footfallTimer += lastFrameTime;
        
        if (isCrackActive) {
            crackTimer += lastFrameTime;
            if (crackTimer > crackInterval) {
                crackTimer -= crackInterval;
                addCrack();
            }
        }
        
        if (isLightActive) {
            sliverTimer += lastFrameTime;
            if (sliverTimer > sliverInterval) {
                sliverTimer -= sliverInterval;
                addSliver();
            }
        }
    }
    
    for (auto& sliver : slivers) {
        sliver.update(lastFrameTime);
        sliver.setPrimaryColor(primaryColor);
        sliver.setSecondaryColor(secondaryColor);
    }
    
    for (auto& crack : cracks) {
        crack.update(lastFrameTime);
        crack.setPrimaryColor(primaryColor);
        crack.setSecondaryColor(secondaryColor);
    }
    
    slivers.erase(std::remove_if(slivers.begin(), slivers.end(), [](Sliver& sliver) {
        return !sliver.isAlive;
    }), slivers.end());
    
    cracks.erase(std::remove_if(cracks.begin(), cracks.end(), [](Crack& crack) {
        return !crack.isAlive;
    }), cracks.end());
    
    float movementSpeed = ofMap(movement, 0.0, 1.0, 0.0, 0.5);
    rect.x = rect.x + movementSpeed * direction;
    
    if (rect.x > ofGetWidth() / 2.0 + oceanWidth / 2.0 - rect.width / 2.0) {
        rect.x = ofGetWidth() / 2.0 - oceanWidth / 2.0 - rect.width / 2.0;
    }
    
    if (rect.x < ofGetWidth() / 2.0 - oceanWidth / 2.0 - rect.width / 2.0) {
        rect.x = ofGetWidth() / 2.0 + oceanWidth / 2.0 - rect.width / 2.0;;
    }
}

void Footfall::draw() {
    ofSetColor(ofColor::white);
    
    if (isActive) {
        ofFill();
    } else {
        ofNoFill();
    }
    
    if (isFillActive) {
        ofFill();
    }
    
    ofDrawRectangle(buttonRect);
    
    ofFill();
    for (auto& sliver : slivers) {
        sliver.draw();
    }
    
    for (auto& crack : cracks) {
        crack.draw();
    }
    
    
}

void Footfall::set(float x, float y, float width, float height) {
    rect.setFromCenter(x, y, width, height);
    buttonRect.setFromCenter(x, y, width, height);
}

void Footfall::setPrimaryColor(ofColor _primaryColor) {
    primaryColor = _primaryColor;
}

void Footfall::setSecondaryColor(ofColor _secondaryColor) {
    secondaryColor = _secondaryColor;
}
