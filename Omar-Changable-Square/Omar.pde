/*
Code Syntaxes
point(<- X-Coordinate ->, < -Y-Coordinate ->);
line(<- X-Start-Coordinate ->, <- Y-Start-Coordinate ->, <- X-End-Coordinate ->, <- Y-End-Coordinate ->);
background(<- RGB Color Value ->);
size(<- Width ->, <- Haight ->);
ellipse
triangle
rect
fill
smooth();
nosmooth();
strokeWeight(<- width of pixels ->);
*/
// pre loaders
void setup (){
size(640, 480);
background(0, 245, 255);
noCursor();
smooth();
}
// start of variables
int wid = 5;
int roadY = 400;
int roadXst = 0;
int roadXend = width;
// Click on the image to give it focus,
// and then press any key

int value = 0;

// Click on the window to give it focus
// and press the 'B' key

void draw() {
  if (key == CODED) {
    if (keyCode == UP) {
    }
  }  
  if(keyPressed) {
    // Q is for black
    if (key == 'q') {
      fill(0);
    }
  }
  rect(25, 25, wid, 50);


  if(keyPressed) {
    // W is For Turquise
    if (key == 'w') {
      fill(0, 245, 255);
    }
  }
  rect(25, 25, 50, 50);


  if(keyPressed) {
    // E is for green
    if (key == 'e') {
      fill(50, 205, 50);
      print("you have selected");
    }
  }
  rect(25, 25, 50, 50);



  if(keyPressed) {
    // R is for red
    if (key == 'r') {
      fill(255, 48, 48);
      print("you have selected RED as the rectangles color");
    }
  }
  rect(25, 25, 50, 50);



  if(keyPressed) {
    // T is for yellow
    if (key == 't') {
      fill(255, 255, 0);
      print("you have selected YELLOW as the rectangles color");
    }
  }
  rect(25, 25, 50, 50);
}







