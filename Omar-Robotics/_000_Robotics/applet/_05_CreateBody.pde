/* 
 
 This Is When The Body Is Created
 
 */

void CreateBody() {
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

