/**
 * Getting Started with Capture.
 * 
 * Reading and displaying an image from an attached Capture device. 
 */ 
 
import processing.video.*;

Capture cam;


boolean cheatScreen;

// All ASCII characters, sorted according to their visual density
String letterOrder =
  "." +
  ".";
char[] letters;

float[] bright;
char[] chars;

PFont font;
float fontSize = 1.5;

void setup() {
  size(1200, 1200);

  // If no device is specified, will just use the default.
  cam = new Capture(this, 400, 400);

  // To use another device (i.e. if the default device causes an error),  
  // list all available capture devices to the console to find your camera.
  //String[] devices = Capture.list();
  //println(devices);
  
  // Change devices[0] to the proper index for your camera.
  //cam = new Capture(this, width, height, devices[0]);

  // Opens the settings page for this capture device.
  //camera.settings();
    font = loadFont("UniversLTStd-Light-48.vlw");
int count = cam.width * cam.height;
  // for the 256 levels of brightness, distribute the letters across
  // the an array of 256 elements to use for the lookup
  letters = new char[256];
  for (int i = 0; i < 256; i++) {
    int index = int(map(i, 0, 256, 0, letterOrder.length()));
    letters[i] = letterOrder.charAt(index);
  }

  // current characters for each position in the cam
  chars = new char[count];

  // current brightness for each point
  bright = new float[count];
  for (int i = 0; i < count; i++) {
    // set each brightness at the midpoint to start
    bright[i] = 128;
}
}



void draw() {
  if (cam.available() == true) {
    cam.read();
    image(cam, 0, 0);
    // The following does the same, and is faster when just drawing the image
    // without any additional resizing, transformations, or tint.
    //set(160, 100, cam);
  }
    pushMatrix();

  float hgap = width / float(cam.width);
  float vgap = height / float(cam.height);

  scale(max(hgap, vgap) * fontSize);
  textFont(font, fontSize);

  int index = 0;
  for (int y = 1; y < cam.height; y++) {

    // Move down for next line
    translate(0,  1.0 / fontSize);

    pushMatrix();
    for (int x = 0; x < cam.width; x++) {
      int pixelColor = cam.pixels[index];
      // Faster method of calculating r, g, b than red(), green(), blue() 
      int r = (pixelColor >> 16) & 0xff;
      int g = (pixelColor >> 8) & 0xff;
      int b = pixelColor & 0xff;

      // Another option would be to properly calculate brightness as luminance:
      // luminance = 0.3*red + 0.59*green + 0.11*blue
      // Or you could instead red + green + blue, and make the the values[] array
      // 256*3 elements long instead of just 256.
      int pixelBright = max(r, g, b);

      // The 0.1 value is used to damp the changes so that letters flicker less
      float diff = pixelBright - bright[index];
      bright[index] += diff * 0.1;

      fill(pixelColor);
      int num = int(bright[index]);
      text(letters[num], 0, 0);
      
      // Move to the next pixel
      index++;

      // Move over for next character
      translate(1.0 / fontSize, 0);
    }
    popMatrix();
  }
  popMatrix();

  if (cheatScreen) {
    //image(cam, 0, height - cam.height);
    // set() is faster than image() when drawing untransformed images
    set(0, height - cam.height, cam);
  }
} 
