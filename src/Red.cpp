/*
 *  Red.cpp
 *  swarm
 *
 *  Created by Or Zubalsky on 10/9/11.
 *  Copyright 2011 __MyCompanyName__. All rights reserved.
 *
 */

#include "Red.h"

Red::Red(Agent* allOtherAgents[], int totalNumOfAgent) {
	
	radius = ofRandom(20,40);
	
	color.r = ofRandom(200,255);
	color.g = ofRandom(0,25);
	color.b = ofRandom(0,25);
	color.a = 200;
	
    allAgents = allOtherAgents;
    totalAgents = totalNumOfAgent;
	
	rCoh = 220;
	rSep = radius;
	rAli = 80;	
	
	mCoh = 2;
	mSep = 5;
	mAli = 2;
}

