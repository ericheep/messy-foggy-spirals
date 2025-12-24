//
//  Unfolding.cpp
//  messyFoggySpirals-ofx
//

#include "Unfolding.hpp"

Unfolding::Unfolding() {
    numberAnchors = 250;
    octave = 1.0;
    tendril = Tendril(numberAnchors);
}

void Unfolding::addWavy() {
    Wavy w = Wavy(numberAnchors);
    w.setTheta(theta);
    w.setInnerRadius(innerRadius);
    w.setOuterRadius(outerRadius);
    wavies.push_back(w);
}

void Unfolding::addDot(float position, float direction, float radius) {
    for (int i = 0; i < wavies.size(); i++) {
        wavies[i].addDot(position, direction, radius);
    }
}

void Unfolding::setNumberWavies(int _numberWavies) {
    numberWavies = _numberWavies;
    while (wavies.size() < numberWavies) {
        addWavy();
    }
    while (wavies.size() > numberWavies) {
        wavies.pop_back();
    }
    
    setThickness(thickness);
    setArcDistance(arcDistance);
    setMinArcDistance(minArcDistance);
    setTheta(theta);
    setInnerRadius(innerRadius);
    setOuterRadius(outerRadius);
    setHotColor(hotColor);
    setCoolColor(coolColor);
    setOctave(octave);
}

void Unfolding::setNumAnchors(int _numberAnchors) {
    numberAnchors = _numberAnchors;
    setNumberWavies(numberWavies);
}

void Unfolding::setInnerRadius(float _innerRadius) {
    innerRadius = _innerRadius;
    tendril.setInnerRadius(innerRadius);
    for (int i = 0; i < wavies.size(); i++) {
        wavies[i].setInnerRadius(innerRadius);
    }
}

void Unfolding::setOuterRadius(float _outerRadius) {
    outerRadius = _outerRadius;
    tendril.setOuterRadius(outerRadius);
    for (int i = 0; i < wavies.size(); i++) {
        wavies[i].setOuterRadius(outerRadius);
    }
}

void Unfolding::setTheta(float _theta) {
    theta = _theta;
    tendril.setTheta(theta);
    for (int i = 0; i < wavies.size(); i++) {
        wavies[i].setTheta(theta);
    }
}

void Unfolding::setDirection(float _direction) {
    direction = int(_direction);
    direction = 1;
    tendril.setDirection(direction);
    for (int i = 0; i < wavies.size(); i++) {
        wavies[i].setDirection(direction);
    }
}

void Unfolding::setOctave(float _octave) {
    octave = _octave;
    tendril.setOctave(octave);
    for (int i = 0; i < wavies.size(); i++) {
        wavies[i].setOctaveMultiplier(octave);
    }
}

void Unfolding::setThickness(float _thickness) {
    thickness = _thickness;
    tendril.setThickness(thickness);
    for (int i = 0; i < wavies.size(); i++) {
        float wavyThickness = ofMap(i, 0, numberWavies - 1, 10, thickness);
        wavies[i].setThickness(wavyThickness);
    }
}

void Unfolding::setMinArcDistance(float _minArcDistance) {
    minArcDistance = _minArcDistance;
    tendril.setArcDistance(arcDistance);
    for (int i = 0; i < wavies.size(); i++) {
        float s = ofMap(i, 0, numberWavies - 1, minArcDistance, 1.0);
        float wavyArcDistance = s * arcDistance;
        wavies[i].setArcDistance(wavyArcDistance);
    }
}

void Unfolding::setArcDistance(float _arcDistance) {
    arcDistance = _arcDistance;
    tendril.setArcDistance(arcDistance);
    for (int i = 0; i < wavies.size(); i++) {
        float s = ofMap(i, 0, numberWavies - 1, minArcDistance, 1.0);
        float wavyArcDistance = s * arcDistance;
        wavies[i].setArcDistance(wavyArcDistance);
    }
}

void Unfolding::setHotColor(ofColor _hotColor) {
    hotColor = _hotColor;
    tendril.setColor(hotColor, coolColor);
    for (int i = 0; i < wavies.size(); i++) {
        float l = ofMap(i, 0, wavies.size() - 1, 0.0, 1.0);
        ofColor c = hotColor.getLerped(coolColor, l);
        wavies[i].setColor(c);
    }
}

void Unfolding::setCoolColor(ofColor _coolColor) {
    coolColor = _coolColor;
    tendril.setColor(hotColor, coolColor);
    for (int i = 0; i < wavies.size(); i++) {
        float l = ofMap(i, 0, wavies.size() - 1, 0.0, 1.0);
        ofColor c = hotColor.getLerped(coolColor, l);
        wavies[i].setColor(c);
    }
}

void Unfolding::setIsDrawingLines(bool _isDrawingLines) {
    isDrawingLines = _isDrawingLines;
}

void Unfolding::update() {
    tendril.update();
    for (int i = 0; i < wavies.size(); i++) {
        // wavies[i].update();
    }
}
 
void Unfolding::draw() {
    tendril.draw();
    for (int i = 0; i < wavies.size(); i++) {
        if (isDrawingLines) {
            //wavies[i].draw();
        }
        //wavies[i].drawDots();
    }
}
