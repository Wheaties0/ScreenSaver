Lines[] myLines = new Lines [20];

void setup() {
  background(0);
  //size(1000, 500);
  fullScreen();
  frameRate(20);
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width), random(height), random(2, 5), random(10, 20));
  }
}

void draw() {
  if (frameCount > 300) {
    background(0,255);
    frameCount = 0;
  } else {
    for (int i=0; i<myLines.length; i++) {
      Lines iLines = myLines[i];
      iLines.display();
    }
  }
}
