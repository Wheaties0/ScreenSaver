class Lines {
  //class variables
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;

  //constructor
  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    pointCount = tempLength;
  }
  //display
  void display() {
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
      stroke(24, 177, 255);
    } else {
      if (random(100)>70) {
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, pointCount);
      } else if (random(100)>65) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, pointCount);
      } else if (random(100)>55) {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, pointCount);
      } else {
        strokeWeight(strokeW);
        moveRight(xpos, ypos, pointCount);
      }
    }
  }

  //move methods

  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX + i;
      ypos = startY;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX - i;
      ypos = startY;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      xpos = startX;
      ypos = startY - i;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      xpos = startX;
      ypos = startY + i;
    }
  }
}
