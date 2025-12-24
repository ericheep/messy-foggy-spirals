//
//  Dot.cpp
//  messyFoggySpirals-ofx
//

#include "Dot.hpp"

Dot::Dot(float _position, float _direction, float _radius) {
    //cout << _position << " " << _direction << " " << _radius << endl;
    position = _position;
    
    totalLife = abs(_direction);
    lifeLeft = totalLife;
    direction = ((1.0 / _direction) / 60.0);
    radius = _radius;
    
    isAlive = true;
}

void Dot::updatePolyline(ofPolyline& _polyline) {
    polyline = &_polyline;
}

void Dot::setColor(ofColor _color) {
    color = _color;
}

void Dot::update() {
    position += direction;
    targetPos = polyline->getPointAtPercent(position);
    pos.interpolate(targetPos, 0.25);
    lifeLeft -= 1.0 / 60.0;

    if (position < 0.0 || position > 1.0) {
        isAlive = false;
    }
}

void Dot::draw() {
    float alpha = ofMap(lifeLeft, totalLife, 0.0, 1.0, 0.0);
    alpha = pow(alpha, 0.25) * 255.0;
    ofSetColor(ofColor(color.r, color.g, color.b, alpha));
    ofDrawCircle(pos.x, pos.y, radius);
}
