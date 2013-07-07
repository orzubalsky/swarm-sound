/*
 *  Agent.h
 *  swarm
 *
 *  Created by Or Zubalsky on 10/8/11.
 *  Copyright 2011 __MyCompanyName__. All rights reserved.
 *
 */

#pragma once
#include "ofMain.h"
#include "Predator.h"

class Agent {
	
private:
	
	ofPoint velocity;
	ofPoint maxVelocity;
	ofColor color;
	int radius;
	
	bool hovered;
	
	Agent** allAgents;
	int totalAgents;
		
	ofPoint agentsCenter;
	ofPoint agentsVelocity;
	
public:
	ofPoint position;
	
	Agent(Agent* allOtherAgents[], int totalNumOfAgent);

	void update();
	void draw();
	
	
	// swarm rules
	ofPoint cohesion();	
	ofPoint seperation();
	ofPoint alignment();
	void avoidPredators(Predator* predators[]);
	void changeColor();
	
	// rules radius
	int rCoh;
	int rSep;
	int rAli;
	
	// rules multipliers
	int mCoh;
	int mSep;
	int mAli;
	
	void boundPosition();
	void limitVelocity();
	int getDistance(ofPoint positionB);
	void mouseIsHovering(int x, int y, float radius);
	
};