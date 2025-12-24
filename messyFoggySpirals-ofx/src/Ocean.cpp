//
//  Ocean.cpp
//  messyFoggySpirals
//

#include "Ocean.hpp"

Ocean::Ocean() {
    numberParticles.addListener(this, &Ocean::setNumberParticles);
    influenceRadius.addListener(this, &Ocean::setInfluenceRadius);
    timeScalar.addListener(this, &Ocean::setTimeScalar);
    gravityMultiplier.addListener(this, &Ocean::setGravityMultiplier);
    connectionRadius.addListener(this, &Ocean::setConnectionRadius);
    drawMode.addListener(this, &Ocean::setDrawMode);
    velocityCurve.addListener(this, &Ocean::setVelocityCurve);
    minVelocity.addListener(this, &Ocean::setMinVelocity);
    maxVelocity.addListener(this, &Ocean::setMaxVelocity);
    minSize.addListener(this, &Ocean::setMinSize);
    maxSize.addListener(this, &Ocean::setMaxSize);
    targetDensity.addListener(this, &Ocean::setTargetDensity);
    pressureMultiplier.addListener(this, &Ocean::setPressureMultiplier);
    nearPressureMultiplier.addListener(this, &Ocean::setNearPressureMultiplier);
    gravityTheta.addListener(this, &Ocean::setGravityTheta);
    
    // simulation settings
    fluidSystem.setCenter(width * 0.5, height * 0.5);
    fluidSystem.setCollisionDamping(0.5);
    fluidSystem.setViscosityStrength(0.25);
    fluidSystem.setMode(0);
    fluidSystem.setNumberParticles(numberParticles);
    fluidSystem.setHotColor(ofColor::red);
    fluidSystem.setCoolColor(ofColor::white);
        
    presences.resize(0);
}

void Ocean::update() {
    float lastFrameTime = ofGetLastFrameTime();
    
    for (auto &presence : presences) {
        presence.setLastFrameTime(lastFrameTime);
        presence.update();
    }

    presences.erase(std::remove_if(presences.begin(), presences.end(), [](Presence& presence) {
        return !presence.isAlive;
    }), presences.end());

    fluidSystem.updatePresences(presences);
    fluidSystem.updateFluidSystem();
    fluidSystem.updateParticleSystem();
    fluidSystem.setHotColor(hotColor);
    fluidSystem.setCoolColor(coolColor);
}

void Ocean::draw() {    
    fluidSystem.draw();
}

void Ocean::setActive(int state) {
    if (state) {
        fluidSystem.setNumberParticles(numberParticles);
    } else {
        fluidSystem.setNumberParticles(0);
    }
}

void Ocean::setSkew(float _leftBoundsScale, float _rightBoundsScale, float _backBoundsScale, float _frontBoundsScale) {
    leftBoundsScale = _leftBoundsScale;
    rightBoundsScale = _rightBoundsScale;
    backBoundsScale = _backBoundsScale;
    frontBoundsScale = _frontBoundsScale;
}

void Ocean::setPresence(int index, float x, float y, float blobWidth, float blobHeight) {
    
    int vectorIndex = getPresenceVectorIndex(index);

    if (vectorIndex >= 0) {
        presences[vectorIndex].setPresence(x, y, blobWidth, blobHeight);
    } else {
        addPresence(index, x, y, blobWidth, blobHeight);
    }
}

void Ocean::addPresence(int index, float x, float y, float blobWidth, float blobHeight) {
    Presence presence;
    presence.index = index;
    presence.x = x;
    presence.y = y;
    presence.blobWidth = blobWidth;
    presence.blobHeight = blobHeight;

    presences.push_back(presence);
}

int Ocean::getPresenceVectorIndex(int index) {
    for (int i = 0; i < presences.size(); i++) {
        if (presences[i].index == index) return i;
    }
    
    return -1;
}

void Ocean::setSystemSize(float _width, float _height) {
    systemWidth = _width;
    systemHeight = _height;
}

void Ocean::setSize(float _width, float _height) {
    width = _width;
    height = _height;
    fluidSystem.setWidth(width);
    fluidSystem.setHeight(height);
    fluidSystem.setBoundsSize(ofVec3f(width, height, 0));
    
    float halfWidth = width / 2.0;
    float halfHeight = height / 2.0;
    
    ofVec2f center = ofVec2f(systemWidth / 2.0, systemHeight / 2.0);
    
    fluidSystem.setBounds(ofVec2f(center.x - halfWidth, center.x + halfWidth), ofVec2f(center.y - halfHeight, center.y + halfHeight));
}

void Ocean::setRectangle(float _x, float _y, float _width, float  _height) {
    width = _width;
    height = _height;
    systemWidth = width;
    systemHeight = height;
    
    fluidSystem.setWidth(width);
    fluidSystem.setHeight(height);
    fluidSystem.setBoundsSize(ofVec3f(width, height, 0));
    
    fluidSystem.setBounds(ofVec2f(_x, _x + width), ofVec2f(_y, _y + height));
}

void Ocean::setDrawMode(int & drawMode) {
    // 0 = circles
    // 1 = rectangles
    // 2 = vectors
    // 3 = lines
    // 4 = points
    
    fluidSystem.setMode(drawMode);
}

void Ocean::setNumberParticles(int & numberParticles) {
    fluidSystem.setNumberParticles(numberParticles);
}

void Ocean::setTimeScalar(float& timeScalar) {
    fluidSystem.setDeltaTime(1.0 / 60.0 / timeScalar);
}

void Ocean::setInfluenceRadius(float& influenceRadius) {
    fluidSystem.setInfluenceRadius(influenceRadius);
}

void Ocean::setGravityMultiplier(float & gravityMultiplier) {
    fluidSystem.setGravityMultiplier(gravityMultiplier);
}

void Ocean::setTargetDensity(float & targetDensity) {
    fluidSystem.setTargetDensity(targetDensity);
}

void Ocean::setPressureMultiplier(float & pressureMultiplier) {
    fluidSystem.setPressureMultiplier(pressureMultiplier);
}

void Ocean::setNearPressureMultiplier(float & nearPressureMultiplier) {
    fluidSystem.setNearPressureMultiplier(nearPressureMultiplier);
}

void Ocean::setVelocityCurve(float & velocityCurve) {
    fluidSystem.setVelocityCurve(velocityCurve);
}

void Ocean::setMinVelocity(float & minVelocity) {
    fluidSystem.setMinVelocity(minVelocity);
}

void Ocean::setMaxVelocity(float & maxVelocity) {
    fluidSystem.setMaxVelocity(maxVelocity);
}

void Ocean::setMinSize(float& minSize) {
    fluidSystem.setMinSize(minSize);
}

void Ocean::setMaxSize(float& maxSize) {
    fluidSystem.setMaxSize(maxSize);
}

void Ocean::setConnectionRadius(float& connectionRadius) {
    fluidSystem.setConnectionRadius(connectionRadius);
}

void Ocean::setGravityTheta(float& gravityTheta) {
    fluidSystem.setGravityTheta(gravityTheta);
}

void Ocean::setBoundaryState(int _boundaryState) {
    fluidSystem.boundaryState = _boundaryState;
}

void Ocean::checkFootfalls(Footfalls& footfalls) {
    for (int i = 0; i < footfalls.footfalls.size(); i++) {
        if (footfalls.footfalls[i].isActive) {
            ofRectangle rect = footfalls.footfalls[i].rect;
            
            float x = rect.x + rect.width / 2.0;
            float y = 385;
            setPresence(i, x, y, rect.width, 150);
        }
    }
}

void Ocean::setHotColor(ofColor _hotColor) {
    hotColor = _hotColor;
    fluidSystem.setHotColor(hotColor);
}

void Ocean::setCoolColor(ofColor _coolColor) {
    coolColor = _coolColor;
    fluidSystem.setCoolColor(coolColor);
}
