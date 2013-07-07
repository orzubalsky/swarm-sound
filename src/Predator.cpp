/*
 *  Predator.cpp
 *  swarm
 *
 *  Created by Or Zubalsky on 10/9/11.
 *  Copyright 2011 __MyCompanyName__. All rights reserved.
 *
 */

#include "Predator.h"

Predator::Predator() {
	
	position.x = ofRandom(0,ofGetWidth());
	position.y = ofRandom(0,ofGetHeight());
	
	maxVelocity.x = 2;
	maxVelocity.y = 2;
	
	velocity.x = ofRandom(-2, 2);
	velocity.y = ofRandom(-2, 2);
		
	radius = ofRandom(20,60);
	
	color.r = ofRandom(150,205);
	color.g = ofRandom(10,25);
	color.b = ofRandom(10,25);
	color.a = 200;
}


void Predator::update() {
	
	position += velocity;
	boundPosition();
	
}


void Predator::draw() {
	
	ofPushMatrix();
		ofTranslate(position.x, position.y);
		ofEnableAlphaBlending();
		ofSetColor(color.r, color.g, color.b, color.a);
		ofCircle(0, 0, radius);
		ofDisableAlphaBlending();
	
	ofPopMatrix();
}


void Predator::boundPosition() {
	

	velocity.x *= (position.x > ofGetWidth()-radius) ? -0.8 : 1;
	position.x = (position.x > ofGetWidth()-radius) ? ofGetWidth()-radius : position.x;
	
	velocity.y *= (position.y > ofGetHeight()-radius) ? -0.8 : 1;		
	position.y = (position.y > ofGetHeight()-radius) ? ofGetHeight()-radius : position.y;
	
	
	velocity.x *= (position.x < radius) ? -0.8 : 1;
	position.x = (position.x < radius) ? radius : position.x;		
	
	velocity.y *= (position.y < radius) ? -0.8 : 1;		
	position.y = (position.y < radius) ? radius : position.y;
	
	
}
