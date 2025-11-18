//
//  Presence.cpp
//  waveVagrants
//

#include "Presence.hpp"

Presence::Presence() {
    isAlive = true;
    totalLifetime = 0.1;
}

void Presence::setLastFrameTime(float _lastFrameTime) {
    lastFrameTime = _lastFrameTime;
}

void Presence::setPresence(float _x, float _y, float _blobWidth, float _blobHeight) {
    x = _x;
    y = _y;
    blobWidth = _blobWidth;
    blobHeight = _blobHeight;
    
    lifetime = 0;
}

void Presence::update() {
    lifetime += lastFrameTime;
    
    if (lifetime > totalLifetime) {
        isAlive = false;
    }
}

