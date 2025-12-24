//
//  LEDs.hpp
//  messyFoggySpirals
//

#ifndef LEDs_hpp
#define LEDs_hpp

#include <stdio.h>
#include "ofMain.h"
#include "LED.hpp"
#include "ofxNetwork.h"

#define NUM_TEENSY_LEDs 81
#define NUM_TOTAL_LEDs 648
#define UDP_BUFFER_SIZE 245

class LEDs {
public:
    LEDs();
    
    void update();
    void draw();
    void sendUdp();
    
    void setLed(int whichBrick, int whichLed, int r, int g, int b);
    void setRectangle(float x, float y, float width, float height);
    void setSystemSize(float width, float height);
    void setSize(float width, float height);
    void setOceanFbo(ofFbo& oceanFbo);
    void analyzeSubscreen();
    void packTeensyUdp(int whichTeensy, u_int8_t data[]);
    
    float systemWidth, systemHeight;
    float width, height;
    float LEDSpacing;
    
    ofFbo ledSamplerFbo;
    vector<glm::ivec2> regionPos;
    glm::ivec2 regionSize;

    ofShader averageShader;
    ofPixels ledPixels;
    
    vector <LED> leds;
    u_int8_t data1[UDP_BUFFER_SIZE];
    u_int8_t data2[UDP_BUFFER_SIZE];
    u_int8_t data3[UDP_BUFFER_SIZE];
    u_int8_t data4[UDP_BUFFER_SIZE];
    u_int8_t data5[UDP_BUFFER_SIZE];
    u_int8_t data6[UDP_BUFFER_SIZE];
    u_int8_t data7[UDP_BUFFER_SIZE];
    u_int8_t data8[UDP_BUFFER_SIZE];
    
    ofxUDPManager udpConnection1;
    ofxUDPManager udpConnection2;
    ofxUDPManager udpConnection3;
    ofxUDPManager udpConnection4;
    ofxUDPManager udpConnection5;
    ofxUDPManager udpConnection6;
    ofxUDPManager udpConnection7;
    ofxUDPManager udpConnection8;
};

#endif /* LEDs_hpp */
