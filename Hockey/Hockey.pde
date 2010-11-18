int x;
int y;
int rx;
int ry;
int bx;
int by;

void setup() {
  size(640, 480);
}
void draw() {
  x = mouseX;
  y = mouseY;
  button();
    background(255);
    stroke(0, 0, 255);
    strokeWeight(1);
    fill(0, 0, 255);
  ellipse(rx, ry, 50, 50);
  stroke(255, 0, 0);
  strokeWeight(1);
  fill(255, 0, 0);
  ellipse(bx, by, 50, 50);
  stroke(0);
  fill(0);
  ellipse(rx, ry , 25, 25);
  ellipse(bx, by , 25, 25);
}
void button() {
  if( x > 0 && x < (width/2)-25 && y > 0 && y < height ){
    stroke(0, 0, 255);
  strokeWeight(5);
  point(x, y);
  bx = mouseX;
  by = mouseY;
}
  if( x > (width/2)+25 && x < width && y > 0 && y < height ){
    stroke(255, 0, 0);
  strokeWeight(5);
  point(x, y);
  
  rx = mouseX;
  ry = mouseY;
  }
  println(rx + " " + ry);

}


  
