//
//  Presence.hpp
//  waveVagrants
//

#ifndef Presence_hpp
#define Presence_hpp

#include <stdio.h>
#include "ofMain.h"

class Presence {
public:
    Presence();
    
    void update();
    void setLastFrameTime(float lastFrameTime);
    void setPresence(float x, float y, float width, float height);
    
    float x, y, blobWidth, blobHeight;
    int index;
    
    float lifetime, totalLifetime, lastFrameTime;
    bool isAlive;
};

#endif /* Presence_hpp */
