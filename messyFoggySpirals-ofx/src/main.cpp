#include "ofMain.h"
#include "ofApp.h"

//========================================================================
int main( ){
    ofGLFWWindowSettings settings;
    settings.setGLVersion(4,1);

    int smallWidth = 1600;
    int smallHeight = 500;
    
    settings.setSize(smallWidth, smallHeight);
    settings.windowMode = OF_WINDOW;

    auto window = ofCreateWindow(settings);
    
    ofRunApp(window, make_shared<ofApp>());
    ofRunMainLoop();
}
