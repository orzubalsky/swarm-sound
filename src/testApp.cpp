#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
	
	ofSetFrameRate(24);
	ofSetWindowShape(1024,768);	
	ofBackground(0);
	
	// open an outgoing connection to HOST:PORT
	sender.setup( HOST, PORT );
	
	
	
	// send window configuration with osc
	ofxOscMessage wm;	
	wm.setAddress("/window/size");
	wm.addIntArg(ofGetWidth());
	wm.addIntArg(ofGetHeight());
	sender.sendMessage(wm);
	
	// send number of agents with osc
	ofxOscMessage am;		
	am.setAddress("/agents/size");
	am.addIntArg(NUM_AGENTS);
	sender.sendMessage(am);
	
	// instantiate agents
	for(int i=0; i<NUM_AGENTS; i++) {
        agents[i] = new Agent(agents, NUM_AGENTS);
	}
	
	// instantiate predetors	
	for (int i=0; i<NUM_PREDATORS; i++) {
		predators[i] = new Predator();
	}
	
	
}

//--------------------------------------------------------------
void testApp::update(){
	
	// agents vectors
	for(int i=0; i<NUM_AGENTS; i++) {
        agents[i]->update();
		agents[i]->avoidPredators(predators);
		agents[i]->mouseIsHovering(mouseX, mouseY, 100);
		
		// send each agent's index and position
		ofxOscMessage m;	
		m.setAddress("/agent/position" );
		m.addIntArg(i);		
		m.addIntArg(agents[i]->position.x);
		m.addIntArg(agents[i]->position.y);
		sender.sendMessage(m);
	}
	
	// move predators
	for (int i=0; i<NUM_PREDATORS; i++) {
		predators[i]->update();
	}	
		
}

//--------------------------------------------------------------
void testApp::draw(){

	for(int i=0; i<NUM_AGENTS; i++) {
        agents[i]->draw();
	}
	
	for (int i=0; i<NUM_PREDATORS; i++) {
		predators[i]->draw();
	}	
	
	
}

//--------------------------------------------------------------
void testApp::keyPressed(int key){

}

//--------------------------------------------------------------
void testApp::keyReleased(int key){

}

//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void testApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){
	
	// test negating agents' cohestion method
	for(int i=0; i<NUM_AGENTS; i++) {
		agents[i]->mCoh *= -1;
	}
	
}

//--------------------------------------------------------------
void testApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void testApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void testApp::dragEvent(ofDragInfo dragInfo){ 

}