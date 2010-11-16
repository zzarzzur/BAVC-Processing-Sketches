import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class _000_Robotics extends PApplet {

/*

************************** Created By Omar Zarzur At BAVC Open Source *********************

The Tabs Are For The Different Functions

The One After This Controls Alot Of Stuff

Most of The Stuffs Location Is Controled By The Torso's Location


Program Name: Robotics
Version: 1.0

    Copyright (C) 2010  Omar Zouai

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.




*/
/* This Is Where The Controls Are





*/
// The Torso Info
int torsoXIncrease = 5;
int torsoYIncrease = 5;

public void Variables() {

 
drawTorso = true;
torsoFill = color(0, 0, 225, 255);
torsoStroke = color(0, 0, 0, 255);
torsoStrokeDensity = 1;
torsoX = 235 + torsoXIncrease;
torsoY = 172 + torsoYIncrease;
torsoW = 50;
torsoH = 150;
// Finish Torso Info

// Left Arm Info
drawLeftArm = true;
leftArmFill = torsoFill;
leftArmStroke = leftArmFill;
leftArmStrokeDensity = 1;
leftArmX = torsoX - 60;
leftArmY = torsoY + 15;
leftArmW = 60;
leftArmH = 15;
// Finish Left Arm info

// Right Arm info
drawRightArm = true;
rightArmFill = torsoFill;
rightArmStroke = rightArmFill;
rightArmStrokeDensity = 1;
rightArmX = (torsoX + torsoW);
rightArmY = torsoY + 15;
rightArmW = 60;
 rightArmH = 15;
// Finish Right Arm Info

// Head Info
drawHead = true;
headFill = color(0, 0, 0, 255);
headStroke = headFill;
headStrokeDensity = 1;
headX = torsoX + 25;
headY = torsoY - 5;
headW = 50;
headH = 50;
// Finish Head Info

// Chest Dots
drawChestDots = true;
chestDotsFill = color(44, 40, 49, 255);
chestDotsStroke = chestDotsFill;
chestDotsStrokeDensity = 1;
chestDots1X = (torsoX + torsoW) / 2;
chestDots1Y = torsoY ;
chestDots2X = chestDots1X;
chestDots2Y = torsoY;
// Finish Chest Dots Info

// Left Leg Info
drawLeg = true;
legFill = torsoFill;
legStroke = legFill;
legStrokeDensity = 1;
legX = torsoX + 12;
legY = torsoY + torsoH;
legH = 50;
legW = 25;
// Finish Left Leg Info
// Big left Eye Info
drawLeftEye = true;
leftEyeFill = color(53, 204, 63, 255);
leftEyeStroke = color(113, 111, 116, 255);
leftEyeStrokeDensity = 2;
leftEyeX = torsoX + 17;
leftEyeY = torsoY - 5;
leftEyeW = 20;
leftEyeH = 20;
// Finish Left Eye Info

// Right Top Eye Info
drawRightTopEye = true;
rightTopEyeFill = leftEyeFill;
rightTopEyeStroke = leftEyeStroke;
rightTopEyeStrokeDensity = 2;
rightTopEyeX = leftEyeX + 20;
rightTopEyeY = leftEyeY - 5;
rightTopEyeW = 10;
rightTopEyeH = 10;
// Finish Right Top Eye info
// Right Bottom Eye Info
drawRightBottomEye = true;
rightBottomEyeFill = leftEyeFill;
rightBottomEyeStroke = leftEyeStroke;
rightBottomEyeStrokeDensity = 2;
rightBottomEyeX = leftEyeX + 20;
rightBottomEyeY = leftEyeY + 10;
rightBottomEyeW = 10;
rightBottomEyeH = 10;
// Finish Right Bottom Eye info
}

/* This Is The Setup

*/
public void setup() {
  size(640, 480);
  smooth();
  Variables();
}
/*

This Is The Draw Phase

*/
public void draw() {
  CreateBody();
}
/*
This Is What Happens When The Mouse is Pressed
*/
public void mousePressed() {
  Explode();
}

public void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      torsoYIncrease--;
      CreateBody();
    }
    if (keyCode == DOWN) {
      torsoYIncrease++;
      CreateBody();
    }
    if (keyCode == RIGHT) {
      torsoXIncrease++;
    }
    if (keyCode == LEFT) {
      torsoXIncrease--;
    }
    else {
      println(key);
    }
  }
}

/* 
 
 This Is When The Body Is Created
 
 */

public void CreateBody() {
  Variables();
  background(255);
  if (drawTorso == true) {
    fill(torsoFill);
    stroke(torsoStroke);
    strokeWeight(torsoStrokeDensity);
    rect(torsoX, torsoY, torsoW, torsoH);
  }
  if (drawLeftArm == true) {
    fill(leftArmFill);
    stroke(leftArmStroke);
    strokeWeight(leftArmStrokeDensity);
    rect(leftArmX, leftArmY, leftArmW, leftArmH);
  }
  if (drawRightArm == true) {
    fill(rightArmFill);
    stroke(rightArmStroke);
    strokeWeight(rightArmStrokeDensity);
    rect(rightArmX, rightArmY, rightArmW, rightArmH);
  }
  if (drawHead == true) {
    fill(headFill);
    stroke(headStroke);
    strokeWeight(headStrokeDensity);
    ellipse(headX, headY, headW, headH);
  }
  if (drawLeg == true ) {
    fill(legFill);
    stroke(legFill);
    strokeWeight(legStrokeDensity);
    rect(legX, legY, legW, legH);
  }
  if (drawLeftEye == true) {
    fill(leftEyeFill);
    stroke(leftEyeStroke);
    strokeWeight(leftEyeStrokeDensity);
    ellipse(leftEyeX, leftEyeY, leftEyeW, leftEyeH);
  }
  if (drawRightTopEye == true) {
    fill(rightTopEyeFill);
    stroke(rightTopEyeStroke);
    strokeWeight(rightTopEyeStrokeDensity);
    ellipse(rightTopEyeX, rightTopEyeY, rightTopEyeW, rightTopEyeH);
  }
  if (drawRightBottomEye == true) {
    fill(rightBottomEyeFill);
    stroke(rightBottomEyeStroke);
    strokeWeight(rightBottomEyeStrokeDensity);
    ellipse(rightBottomEyeX, rightBottomEyeY, rightBottomEyeW, rightBottomEyeH);
  }
  if (drawChestDots == true) {
    fill(chestDotsFill);
    stroke(chestDotsStroke);
    strokeWeight(chestDotsStrokeDensity);
    line(chestDots1X, chestDots1Y, chestDots2X, chestDots2Y);
  }
  if (drawExplosion == true) {  
    if(explosionW < 1000 && explosionH < 1000) {  
      explosionW+=20;
      explosionH+=20;
    }
    if(explosionW >= 1000 && explosionH >= 1000) {
      drawExplosion = false;
      explosionW = 0;
      explosionH = 0;
    }    
    fill(255, 0, 0);
    stroke(255, 0, 0);
    strokeWeight(1);
    ellipse(  torsoX + ( torsoW / 2 ) , (headY + ( legY + legH ) ) /2, explosionW, explosionH);
  }

}

public void Explode() {
  drawExplosion = true;
}
  
// Torso Info
boolean drawTorso;
int torsoFill;
int torsoStroke;
int torsoStrokeDensity;
int torsoX;
int torsoY;
int torsoW;
int torsoH;
// Finish Torso Info

// Left Arm Info
boolean drawLeftArm;
int leftArmFill;
int leftArmStroke;
int leftArmStrokeDensity;
int leftArmX;
int leftArmY;
int leftArmW;
int leftArmH;
// Finish Left Arm info

// Right Arm info
boolean drawRightArm;
int rightArmFill;
int rightArmStroke;
int rightArmStrokeDensity;
int rightArmX;
int rightArmY;
int rightArmW;
int rightArmH;
// Finish Right Arm Info

// Head Info
boolean drawHead;
int headFill;
int headStroke;
int headStrokeDensity;
int headX;
int headY;
int headW;
int headH;
// Finish Head Info

// Chest Dots
boolean drawChestDots;
int chestDotsFill;
int chestDotsStroke;
int chestDotsStrokeDensity;
int chestDots1X;
int chestDots1Y;
int chestDots2X;
int chestDots2Y;
// Finish Chest Dots Info

// Leg Info
boolean drawLeg;
int legFill;
int legStroke;
int legStrokeDensity;
int legX;
int legY;
int legH;
int legW;
// Finish Leg Info

// Big left Eye Info
boolean drawLeftEye;
int leftEyeFill;
int leftEyeStroke;
int leftEyeStrokeDensity;
int leftEyeX;
int leftEyeY;
int leftEyeW;
int leftEyeH;
// Finish Left Eye Info

// Right Top Eye Info
boolean drawRightTopEye;
int rightTopEyeFill;
int rightTopEyeStroke;
int rightTopEyeStrokeDensity;
int rightTopEyeX;
int rightTopEyeY;
int rightTopEyeW;
int rightTopEyeH;
// Finish Right Top Eye info

// Right Bottom Eye info
boolean drawRightBottomEye;
int rightBottomEyeFill;
int rightBottomEyeStroke;
int rightBottomEyeStrokeDensity;
int rightBottomEyeX;
int rightBottomEyeY;
int rightBottomEyeW;
int rightBottomEyeH;
// Finish Right Bottom Eye Info

// Explosion
boolean drawExplosion;
int explosionW;
int explosionH;
// Finish Explosion info
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "_000_Robotics" });
  }
}
