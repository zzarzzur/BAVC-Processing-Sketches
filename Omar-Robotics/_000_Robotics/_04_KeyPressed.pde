
void keyPressed() {
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

