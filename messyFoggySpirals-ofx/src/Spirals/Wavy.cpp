//
//  Wavy.cpp
//  messyFoggySpirals-ofx
//

#include "Wavy.hpp"

Wavy::Wavy(int _numAnchors) {
    color = ofColor::red;
    numAnchors = _numAnchors;
    octaveMultiplier = 1.0;
    velocity = 0.0;
    totalTime = 0.0;
    scaledRadius = 0.0;
    arcDistance = PI;
    thickness = 150;
    innerRadius = 1.0;

    for (int i = 0; i < numAnchors; i++) {
        Anchor anchor = Anchor(numAnchors);
        anchors.push_back(anchor);
    }
    
    for (int i = 0; i < numAnchors * 3 + 4; i++) {
        targetValues.push_back(ofRandom(0.03, 0.15));
        targetPoints.push_back(ofVec2f::zero());
        currentPoints.push_back(ofVec2f::zero());
    }
        
    isFilled = false;
    isFlipped = false;
    
    setFollow(0.1, 0.2);
    setArcDistance(arcDistance);
    setInnerRadius(innerRadius);
}

void Wavy::update() {
    updateAnchors();
    dots.update();
}

void Wavy::updateAnchors() {
    float initialTheta = theta - arcDistance / 2.0;
    float splineDistance = arcDistance / anchors.size();
    float scaledThickness = thickness * outerRadius / 5.0;
    
    for (int i = 0; i < anchors.size(); i++) {
        float anchorTheta = initialTheta + splineDistance * (i + 1);
        
        float splay = ofMap(i, 0, numAnchors - 1, 0.0, 1.0);
        splay = pow(splay, 2);
        
        float anchorDeviation = sin(ofMap(i, -1, numAnchors - 1, -HALF_PI, TWO_PI - HALF_PI));
        anchorDeviation = ofMap(anchorDeviation, -1.0, 1.0, 0.0, 1.0);
        
        anchors[i].setSplay(splay);
        anchors[i].setTheta(anchorTheta);
        anchors[i].setDeviation(anchorDeviation);
        anchors[i].setThickness(scaledThickness);
    }
    
    initialPoint.set(1.0, 0.0);
    initialPoint.rotateRad(initialTheta);
    initialPoint *= scaledRadius;
    
    initialHeading.set(1.0, 0.0);
    initialHeading.rotateRad(initialTheta + HALF_PI);
    initialHeading *= velocity;
    
    int pointIndex = 0;
    targetPoints[pointIndex].set(initialPoint.x, initialPoint.y);
    pointIndex++;
    
    ofVec2f controlPoint1 = initialPoint + initialHeading;
    
    for (int i = 0; i < anchors.size(); i++) {
        anchors[i].setDirection(1);
        anchors[i].setNoiseTime(noiseTime);
        anchors[i].setOctaveMultiplier(octaveMultiplier);
        anchors[i].update();
        
        ofVec2f nextPoint = anchors[i].getPoint();
        ofVec2f nextHeading = anchors[i].getHeading();
        
        ofVec2f controlPoint2 = nextPoint - nextHeading;
        
        targetPoints[pointIndex].set(controlPoint1.x, controlPoint1.y);
        targetPoints[pointIndex + 1].set(controlPoint2.x, controlPoint2.y);
        targetPoints[pointIndex + 2].set(nextPoint.x, nextPoint.y);
        pointIndex += 3;
        
        controlPoint1 = nextPoint + nextHeading;
    }
    
    interpolatePoints();
}

void Wavy::drawDots() {
    dots.draw();
}

void Wavy::interpolatePoints() {
    int pointIndex = 0;
    
    for (int i = 0; i < currentPoints.size(); i++) {
        int index = i;
        if (isFlipped) index = (targetPoints.size() / 2 + i) % targetPoints.size();
        
        if (targetValues[i] < 1.0) {
            currentPoints[i].interpolate(targetPoints[index], targetValues[i]);
        } else {
            currentPoints[i] = targetPoints[index];
        }
    }
    
    wavyPolyline.clear();
    wavyPolyline.addVertex(currentPoints[pointIndex].x, currentPoints[pointIndex].y);
    pointIndex++;
    
    for (int i = 0; i < anchors.size(); i++) {
        wavyPolyline.bezierTo(                              currentPoints[pointIndex].x, currentPoints[pointIndex].y, currentPoints[pointIndex + 1].x, currentPoints[pointIndex + 1].y, currentPoints[pointIndex + 2].x, currentPoints[pointIndex + 2].y
        );
        
        pointIndex += 3;
    }
    
    //wavyPolyline.addVertex(currentPoints[pointIndex].x, currentPoints[pointIndex].y);
    //wavyPolyline.close();
    // wavyPolyline.simplify();
}

void Wavy::drawShape(ofPolyline& polygon) {
    ofFill();
    ofSetColor(color);
    ofBeginShape();
    
    auto vertices = polygon.getVertices();

    for( int i = 0; i < vertices.size(); i++) {
        ofVertex(vertices[i].x, vertices[i].y);
    }
    ofEndShape();
}

void Wavy::draw() {
    if (isFilled) {
        drawShape(wavyPolyline);
    } else {
        ofSetColor(color);
        wavyPolyline.draw();
    }
    dots.draw();
}

void Wavy::setInnerRadius(float _innerRadius) {
    innerRadius = _innerRadius;
    scaledRadius = innerRadius * outerRadius / 3.0;
    
    for (int i = 0; i < anchors.size(); i++) {
        anchors[i].setRadius(scaledRadius);
    }
}

void Wavy::setOuterRadius(float _outerRadius) {
    outerRadius = _outerRadius;
}

void Wavy::addDot(float position, float direction, float radius) {
    dots.addDot(position, direction, radius, wavyPolyline);
}

void Wavy::flip() {
    isFlipped = !isFlipped;
}

void Wavy::setTheta(float _theta) {
    theta = _theta;
}

void Wavy::setArcDistance(float _arcDistance) {
    arcDistance = _arcDistance;
    float initialTheta = theta - arcDistance / 2.0;
    float splineDistance = arcDistance / numAnchors;

    for (int i = 0; i < numAnchors; i++) {
        float anchorTheta = initialTheta + splineDistance * (i + 1);
        anchors[i].setTheta(anchorTheta);
    }
}

void Wavy::setThickness(float _thickness) {
    thickness = _thickness;
}

void Wavy::setNoiseTime(float _noiseTime) {
    noiseTime = _noiseTime;
}

void Wavy::setFill(bool _isFilled) {
    isFilled = _isFilled;
}

void Wavy::setColor(ofColor _color) {
    color = _color;
    dots.setColor(color);
}

void Wavy::setOctaveMultiplier(float _octaveMultiplier) {
    octaveMultiplier = _octaveMultiplier;
}

void Wavy::setFollow(float _minFollow, float _maxFollow) {
    for (int i = 0; i < targetValues.size(); i++) {
        targetValues[i] = ofRandom(_minFollow, _maxFollow);
    }
}
