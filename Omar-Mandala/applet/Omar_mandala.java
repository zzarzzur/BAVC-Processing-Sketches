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

public class Omar_mandala extends PApplet {

/*

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

int bubbling_Density = 50; // Change This 
public void setup() { 
  size(600, 600); 
  smooth(); 
  frameRate(1);
} 

public void draw() { 
PlaygonP();
} 

public void polygon(int _x, int _y, int sides, float radius) { 
  if (sides <= 0) 
    sides = 1; 
  beginShape(); 
  for ( int i = 0; i < 360; i += (360 / sides) ) { 
    float x = _x + sin(radians(i)) * radius; 
    float y = _y + cos(radians(i)) * radius; 
    vertex(x, y); 
//    ellipse(x, y, 2, 2); 
  } 

  endShape(); 
}
public void PlaygonP() {
    background(PApplet.parseInt(random(255)), PApplet.parseInt(random(255)) , PApplet.parseInt(random(255)) , 125); 
  noStroke(); 
  fill(255); 
  translate(width/2, height/2); 
  rotate(radians(random(50)));
  fill(PApplet.parseInt(random(255)), PApplet.parseInt(random(255)) , PApplet.parseInt(random(255)) , 125); 
  polygon(0, 0, PApplet.parseInt(random(25)), PApplet.parseInt(random(100))); 
  rotate(radians(random(50))); 
  fill(PApplet.parseInt(random(255)), PApplet.parseInt(random(255)) , PApplet.parseInt(random(255)) , 125); 
  polygon(0, 0, 5, PApplet.parseInt(random(250))); 
  rotate(radians(random(50))); 
  fill(PApplet.parseInt(random(255)), PApplet.parseInt(random(255)) , PApplet.parseInt(random(255)) , 125); 
  polygon(0, 0, 8, PApplet.parseInt(random(250))); 
  rotate(radians(random(50))); 
  fill(PApplet.parseInt(random(255)), PApplet.parseInt(random(255)) , PApplet.parseInt(random(255)) , 125); 
  polygon(0, 0, 7, PApplet.parseInt(random(250))); 
  rotate(radians(random(50))); 
  fill(PApplet.parseInt(random(255)), PApplet.parseInt(random(255)) , PApplet.parseInt(random(255)) , 125); 
  polygon(0, 0, 3, PApplet.parseInt(random(250))); 
 rotate(radians(random(50))); 
 fill(PApplet.parseInt(random(255)), PApplet.parseInt(random(255)) , PApplet.parseInt(random(255)) , 125); 
  polygon(0, 0, 8, PApplet.parseInt(random(250)));
  
}
public void keyPressed() {
  if(key == 'f') {
    frameRate(1);
  }
  if(key == 's') {
    frameRate(9999999);
  }
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "Omar_mandala" });
  }
}
