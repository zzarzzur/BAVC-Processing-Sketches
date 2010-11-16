/**
 * Brick Tower
 * by Ira Greenberg. 
 * 
 * 3D castle tower constructed out of individual bricks.
 * Uses the PVector and Cube classes. 
 */

float bricksPerLayer = 16.0;
float brickLayers = 18.0;
Cube brick;
float brickWidth = 60, brickHeight = 25, brickDepth = 25;
float radius = 175.0;
float angle = 0;
int cex = 0;
int cey = 0;
int cez = 0;
int ccx = 0;
int ccy = 0;
int ccz = 0;

void setup(){
  size(640, 360, P3D);
  brick = new Cube(brickWidth, brickHeight, brickDepth);
}

void draw(){
  background(0);
  float tempX = 0, tempY = 0, tempZ = 0;
  fill(182, 62, 29);
  noStroke();
  // Add basic light setup
  lights();
  translate(width/2, height*1.2, -380);
  // Tip tower to see inside
  rotateX(radians(-45));
  // Slowly rotate tower
  rotateY(frameCount * PI/600);
  for (int i = 0; i < brickLayers; i++){
    // Increment rows
    tempY-=brickHeight;
    // Alternate brick seams
    angle = 360.0 / bricksPerLayer * i/2;
    for (int j = 0; j < bricksPerLayer; j++){
      tempZ = cos(radians(angle))*radius;
      tempX = sin(radians(angle))*radius;
      pushMatrix();
      translate(tempX, tempY, tempZ);
      rotateY(radians(angle));
      // Add crenelation
      if (i==brickLayers-1){
        if (j%2 == 0){
          brick.create();
        }
      }
      // Create main tower
      else {
        brick.create();
      }
      popMatrix();
      angle += 360.0/bricksPerLayer;
    }
  }
}

void keyPressed() {
  if (keyCode == UP) {
    cex--;
    camera(cex, cey, cez, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         0.0, 1.0, 0.0); // upX, upY, upZ
  }
  if ( keyCode == DOWN ) {
     cex++;
    camera(cex, cey, cez, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         0.0, 1.0, 0.0); // upX, upY, upZ
  }
