/*
 *  Agent.cpp
 *  swarm
 *
 *  Created by Or Zubalsky on 10/8/11.
 *  Copyright 2011 __MyCompanyName__. All rights reserved.
 *
 */

#include "Agent.h"
#include "Predator.h"
#include "testApp.h"

Agent::Agent(Agent* allOtherAgents[], int totalNumOfAgent) {
		
	// assign random position in window
	position.x = ofRandom(0,ofGetWidth());
	position.y = ofRandom(0,ofGetHeight());
	
	// set maximum velocity
	maxVelocity.x = 10;
	maxVelocity.y = 10;
	
	// set starting velocity
	velocity.x = ofRandom(-10, 10);
	velocity.y = ofRandom(-10, 10);
	
	// set radius
	radius = ofRandom(2,4);
	
	// set color
	color.r = ofRandom(20,155);
	color.g = ofRandom(180,225);
	color.b = ofRandom(200,255);
	color.a = 170;

	// reference other agents
    allAgents = allOtherAgents;
    totalAgents = totalNumOfAgent;
	
	// radius for basic rules - edit to change swarm behavior
	rCoh = 180;
	rSep = radius*2;
	rAli = 40;	
	
	// multipliers for basic rules - edit to change swarm behavior
	mCoh = 5;
	mSep = 5;
	mAli = 2;
}


void Agent::update() {
			
	// velocity is calculated according to the three basic rules and their multipliers
	velocity += cohesion()*mCoh + seperation()*mSep + alignment()*mAli;
	
	// velocity can't exceed max velocity
	limitVelocity();
	
	// add random shakiness
	position += velocity + ofRandom(-5,5);	
	
	// bound agent in window
	boundPosition();
	
}


void Agent::draw() {

	ofPushMatrix();
		ofTranslate(position.x, position.y);
		ofEnableAlphaBlending();
		ofSetColor(color.r, color.g, color.b, color.a);
		ofCircle(0, 0, radius);
		ofDisableAlphaBlending();
	ofPopMatrix();
}



/**
 ** agents try to move towards the center of all agents
 **	@return ofPoint vector offset
 **
 */
ofPoint Agent::cohesion() {

	
	int neighborAgents = 0;
	
	// calculate the agent's percieved center of neighbor agents 	
	for (int i=0; i < totalAgents; i++) {
		int distance = getDistance(allAgents[i]->position);
		
		if (this != allAgents[i] && distance > rSep && distance < rCoh) {
			agentsCenter += allAgents[i]->position;
			neighborAgents++;
		}
	}
		
	agentsCenter /= neighborAgents;
		
	return (agentsCenter - position) / 100;
}




/**
 ** agents try to keep a distance from other neighboring agents
 **	@return ofPoint vector offset
 **
 */
ofPoint Agent::seperation() {

	int neighborAgents = 0;	
	ofPoint c;
	
	for (int i=0; i < totalAgents; i++) {
		int distance = getDistance(allAgents[i]->position);
		
		if (this != allAgents[i] && distance < rSep) {
			neighborAgents++;
			c = (position - allAgents[i]->position);
		}
	}
	
	return c;
	
}



/**
 ** agents try to match velocity with other agents
 **	@return ofPoint vector offset
 **
 */
ofPoint Agent::alignment() {

	int neighborAgents = 0;	
	
	// calculate the agent's percieved velocity of neighbor agents 
	for (int i=0; i < totalAgents; i++) {
		int distance = getDistance(allAgents[i]->position);
		
		if (this != allAgents[i] && distance < rAli) {
			neighborAgents++;
			agentsVelocity += allAgents[i]->velocity;
			
		}
	}
	
	agentsVelocity /= neighborAgents;
	
	float l = sqrt(agentsVelocity.x * agentsVelocity.x + agentsVelocity.y * agentsVelocity.y);
	agentsVelocity /= l;
	return agentsVelocity;
	
}


/**
 ** agents negate cohesion multiplies when in close proximity with a predator
 **	@return ofPoint vector offset
 **
 */
void Agent::avoidPredators(Predator* predators[]) {
	
	for(int i=0; i<NUM_PREDATORS; i++) {
	
		if (getDistance(predators[i]->position) < predators[i]->radius * 3) {
			mCoh = -2;
			velocity += (predators[i]->position - position) / 10 * -1;
		} else {
			mCoh = 2;
			velocity += 0;
		}
	}
}



/**
 ** agents stay within the window boundaries
 **
 */
void Agent::boundPosition() {
	
	velocity.x *= (position.x > ofGetWidth()-radius) ? -0.8 : 1;
	position.x = (position.x > ofGetWidth()-radius) ? ofGetWidth()-radius : position.x;
	
	velocity.y *= (position.y > ofGetHeight()-radius) ? -0.8 : 1;		
	position.y = (position.y > ofGetHeight()-radius) ? ofGetHeight()-radius : position.y;
	
	
	velocity.x *= (position.x < radius) ? -0.8 : 1;
	position.x = (position.x < radius) ? radius : position.x;		
	
	velocity.y *= (position.y < radius) ? -0.8 : 1;		
	position.y = (position.y < radius) ? radius : position.y;
	
}




/**
 ** limit velocity after applying swarm rules
 **
 */
void Agent::limitVelocity() {
	
	velocity.x = (ABS(velocity.x) > maxVelocity.x) ? velocity.x / ABS(velocity.x) * maxVelocity.x : velocity.x;
	velocity.y = (ABS(velocity.y) > maxVelocity.y) ? velocity.y / ABS(velocity.y) * maxVelocity.y : velocity.y;
		
}



/**
 ** calculate distance between the agent and another point
 ** @param ofPoint
 ** @return int
 **
 */
int Agent::getDistance(ofPoint positionB) {
	
	return ofDist(position.x, position.y, positionB.x, positionB.y);
	
}



void Agent::mouseIsHovering(int mouseX, int mouseY, float radius){
	hovered = (ofDist(position.x, position.y, mouseX, mouseY) < radius) ? true : false;
}