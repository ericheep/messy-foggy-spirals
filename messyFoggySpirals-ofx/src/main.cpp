#include "ofMain.h"
#include "ofApp.h"

//========================================================================
int main( ){
    ofGLFWWindowSettings settings;
    settings.setGLVersion(4,1);
    
    settings.setSize(CONTROL_WIDTH, CONTROL_HEIGHT);
    settings.windowMode = OF_WINDOW;
    settings.visible = true;

    shared_ptr<ofAppBaseWindow> controlWindow = ofCreateWindow(settings);
    
    settings.setSize(PROJECTOR_WIDTH, PROJECTOR_HEIGHT);
    settings.setPosition(glm::vec2(1920, 0));
    settings.windowMode = OF_FULLSCREEN;
    settings.shareContextWith = controlWindow;
    settings.visible = true;
    
    shared_ptr<ofAppBaseWindow> displayWindow = ofCreateWindow(settings);
    
    shared_ptr<ofApp> mainApp(new ofApp);
    ofAddListener(displayWindow->events().draw, mainApp.get(), &ofApp::drawDisplayWindow);
    ofRunApp(controlWindow, mainApp);

    ofRunMainLoop();
}
