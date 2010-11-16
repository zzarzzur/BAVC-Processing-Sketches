PShape s;
boolean developerMode = true;
void setup() {
  size(640, 640);
  svg();
}
void draw() {
}
void svg() {
  PShape s;
  s = loadShape("/Network/Servers/instructors.bavc-int.org/Volumes/Storage/BAVClabs/Instructor Shared Blue/Open Source/Christian + Omar/Person2.svg");
  smooth();
  shape(s, 10, 10, width, height);
  if ( developerMode == true ) {
    noStroke();
    fill(45, 86, 254, 75);
    ellipse(373, 124, 45, 50);
    ellipse(237, 81, 50, 50);
    ellipse(264, 367, 50, 50);
    ellipse(335, 576, 50, 50);
    ellipse(460, 374, 50, 50);
    ellipse(348, 239, 50, 50);
    fill(86, 48, 12, 75);
    rect(5, 5, 50, 50);
    
  }
  
}
void mousePressed() {
  println(mouseX + "  " + mouseY);
}
