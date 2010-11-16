/* This Is Where The Controls Are





*/
// The Torso Info
int torsoXIncrease = 5;
int torsoYIncrease = 5;

void Variables() {

 
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

