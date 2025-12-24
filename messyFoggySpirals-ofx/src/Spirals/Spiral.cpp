//
//  Spiral.cpp
//  messyFoggySpirals-ofx
//

#include "Spiral.hpp"

Spiral::Spiral() {
    numberUnfoldings.addListener(this, &Spiral::setNumberUnfoldings);
    rotation.addListener(this, &Spiral::setRotation);
    innerRadius.addListener(this, &Spiral::setInnerRadius);
    outerRadius.addListener(this, &Spiral::setOuterRadius);
    thickness.addListener(this, &Spiral::setThickness);
    numberWavies.addListener(this, &Spiral::setNumberWavies);
    arcDistance.addListener(this, &Spiral::setArcDistance);
    minArcDistance.addListener(this, &Spiral::setMinArcDistance);
    octave.addListener(this, &Spiral::setOctave);
    
    isDrawingLines = false;
    isTendrilsActive = false;
    
    int n = numberUnfoldings;
    setNumberUnfoldings(n);
}

void Spiral::setNumberUnfoldings(int& numberUnfoldings) {
    while (unfoldings.size() < numberUnfoldings) {
        addUnfolding();
    }
    while (unfoldings.size() > numberUnfoldings) {
        unfoldings.pop_back();
    }

    float r = rotation;
    setRotation(r);
}

void Spiral::setNumberWavies(int& numberWavies) {
    for (int i = 0; i < unfoldings.size(); i++) {
        unfoldings[i].setNumberWavies(numberWavies);
    }
}

void Spiral::setInnerRadius(float& innerRadius) {
    for (int i = 0; i < unfoldings.size(); i++) {
        unfoldings[i].setInnerRadius(innerRadius);
    }
}

void Spiral::setThickness(float& thickness) {
    for (int i = 0; i < unfoldings.size(); i++) {
        unfoldings[i].setThickness(thickness);
    }
}

void Spiral::setRotation(float& rotation) {
    for (int i = 0; i < unfoldings.size(); i++) {
        float theta = ofMap(i, 0, unfoldings.size(), 0, TWO_PI);
        unfoldings[i].setTheta(theta + rotation);
    }
}

void Spiral::setOuterRadius(float& outerRadius) {
    for (int i = 0; i < unfoldings.size(); i++) {
        unfoldings[i].setOuterRadius(outerRadius);
    }
}

void Spiral::setArcDistance(float& arcDistance) {
    for (int i = 0; i < unfoldings.size(); i++) {
        unfoldings[i].setArcDistance(arcDistance);
    }
}

void Spiral::setMinArcDistance(float& minArcDistance) {
    for (int i = 0; i < unfoldings.size(); i++) {
        unfoldings[i].setMinArcDistance(minArcDistance);
    }
}

void Spiral::setOctave(float& octave) {
    for (int i = 0; i < unfoldings.size(); i++) {
        unfoldings[i].setOctave(octave);
    }
}

void Spiral::setHotColor(ofColor _hotColor) {
    targetHotColor = _hotColor;
}

void Spiral::setCoolColor(ofColor _coolColor) {
    targetCoolColor = _coolColor;
}

void Spiral::setTendrilsActive(bool _state) {
    isTendrilsActive = _state;
}

void Spiral::addUnfolding() {
    Unfolding u = Unfolding();
    u.setInnerRadius(innerRadius);
    u.setOuterRadius(outerRadius);
    u.setOctave(octave);
    u.setThickness(thickness);
    u.setHotColor(hotColor);
    u.setCoolColor(coolColor);
    u.setNumberWavies(numberWavies);
    u.setArcDistance(arcDistance);
    u.setMinArcDistance(minArcDistance);
    u.setIsDrawingLines(isDrawingLines);

    unfoldings.push_back(u);
}

void Spiral::addDot(float position, float direction, float radius) {
    for (int i = 0; i < unfoldings.size(); i++) {
        unfoldings[i].addDot(position, direction, radius);
    }
}

void Spiral::setIsDrawingLines(bool _isDrawingLines) {
    isDrawingLines = _isDrawingLines;
    for (int i = 0; i < unfoldings.size(); i++) {
        unfoldings[i].setIsDrawingLines(isDrawingLines);
    }
}

void Spiral::update() {
    hotColor = hotColor.getLerped(targetHotColor, 0.01);
    coolColor = coolColor.getLerped(targetCoolColor, 0.01);

    //if (isTendrilsActive) {
        for (int i = 0; i < unfoldings.size(); i++) {
            unfoldings[i].update();
            unfoldings[i].setOctave(octave);
            unfoldings[i].setHotColor(hotColor);
            unfoldings[i].setCoolColor(coolColor);
        }
    //}
}

void Spiral::draw() {
    if (isTendrilsActive) {
        for (int i = 0; i < unfoldings.size(); i++) {
            unfoldings[i].draw();
        }
    }
}
