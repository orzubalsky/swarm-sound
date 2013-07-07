#pragma once

#include "ofMain.h"
#include "ofxOsc.h"
#include "Agent.h"
#include "Predator.h"


class testApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();

		void keyPressed  (int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
	
		#define NUM_AGENTS 200
		Agent *agents[NUM_AGENTS];	
	
		#define NUM_PREDATORS 6
		Predator *predators[NUM_PREDATORS];
		
		#define HOST "127.0.0.1"
		#define PORT 9444
		ofxOscSender sender;

	
	
		
};
