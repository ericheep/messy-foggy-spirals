//
//  Shadow.hpp
//  waveVagrants
//

#ifndef Shadow_hpp
#define Shadow_hpp

#include <stdio.h>
#include "ofMain.h"

class Shadow {
public:
    Shadow();
    void update();
    void draw();
    void set(float y, float width, float height);
    void setShadowActive(int state);
    ofRectangle rect;
    
    bool isActive;
    float oceanWidth, oceanHeight;
    
    bool switchDirection;
    int direction;
    
    float startX, endX;
};

#endif /* Shadow_hpp */
