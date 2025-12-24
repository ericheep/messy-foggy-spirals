//
//  Dots.cpp
//  messyFoggySpirals-ofx
//

#include "Dots.hpp"

Dots::Dots() {
    
}

void Dots::draw() {
    for (int i = 0; i < dots.size(); i++) {
        dots[i].draw();
    }
}

void Dots::update() {
    for (int i = 0; i < dots.size(); i++) {
        dots[i].update();
    }
    
    dots.erase(std::remove_if(dots.begin(), dots.end(), [](Dot& dot) {
        return !dot.isAlive;
    }), dots.end());
}

void Dots::setColor(ofColor _color) {
    color = _color;
}

void Dots::addDot(float position, float direction, float radius, ofPolyline& polyline) {
    Dot dot = Dot(position, direction, radius);
    dot.updatePolyline(polyline);
    dot.setColor(color);
    dots.push_back(dot);
}
