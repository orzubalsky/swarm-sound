/*
 *  Predator.h
 *  swarm
 *
 *  Created by Or Zubalsky on 10/9/11.
 *  Copyright 2011 __MyCompanyName__. All rights reserved.
 *
 */


#pragma once
#include "ofMain.h"

class Predator {
	
private:
	
	ofColor color;
		
public:
	ofPoint position;
	ofPoint velocity;
	ofPoint maxVelocity;
	int radius;

	Predator();
	
	void update();
	void draw();
	void boundPosition();
};