int x = 0;
int y = 0;
int z = 0;
boolean lightTrig = false;
float fadeEffect = 0;
int leftClicks = 0;
int rightClicks = 0;

void setup() {
  // goated kendrick
  img = loadImage("https://raw.githubusercontent.com/User-N-prime/Lightning/refs/heads/master/Kendrick.jpg");

  size(600, 600);
  background(91, 175, 178);
  fill(205, 193, 146);
  ellipse(300, 10, 100, 100);
  fill(0);
  ellipse(330, 10, 7, 7);
}

void draw() {
  if (lightTrig == true) {
    // makes fade effect
    fadeEffect += 1;
    fadeEffect = constrain(fadeEffect, 0, 255);

    // cool lightning
    int lightStartX = (int)(random(600));
    int lightStartY = 0;
    for (int i = 100; i >= 1; i -= 5) {
      int lightChangeX = (int)(random(18) - 9);
      int lightChangeY = (int)(random(8) + 9);
      strokeWeight(i / 20);
      stroke(255, 255, 255, i);
      line(lightStartX, lightStartY, lightStartX + lightChangeX, lightStartY + lightChangeY);
      lightStartX += lightChangeX;
      lightStartY += lightChangeY;
    }
    
    // applies the fade
    fill(255, 255, 255, fadeEffect);
    rect(0, 0, 600, 700);

    // goated kendrick
    if (frameCount > 120) {
      float centerX = width/2;
      float centerY = height/2;
      image(img, centerX - img.width/2, centerY - img.height/2, fadeEffect);
    }

    // Display the text
    fill(0);
    textSize(16);
    text("you have incurred FEAR, precursor to all of man's wrath. endure.", 0, 15);
  }
}

void mousePressed() {
  if (Math.random() * 50 > 1) {
    if (lightTrig == false) {
      if (mouseButton == LEFT) {
        leftClicks++;
        // nice hair
        stroke(x, y, z);
        strokeWeight(1);
        int hairStartX = (int)(Math.random() * 50 + 250);
        int hairStartY = 0;
        while (hairStartY < 700) {
          int hairChangeX = (int)(Math.random() * 18 - 9);
          int hairChangeY = (int)(Math.random() * 8 + 9);
          line(hairStartX, hairStartY, hairStartX + hairChangeX, hairStartY + hairChangeY);
          hairStartX += hairChangeX;
          hairStartY += hairChangeY;
        }
          
        fill(255);
        rect(0, width - 50, 250, 50);
        if (leftClicks < 30) {
          fill(0);
          textSize(20);
          text("Current Emotion: Sad", 10, height - 17);
        }
        else if (leftClicks < 100) {
          fill(0);
          textSize(20);
          text("Current Emotion: Miffed", 10, height - 17);
        }
        else if (leftClicks < 150) {
          fill(0);
          textSize(20);
          text("Current Emotion: Whelmed", 10, height - 17);
        }
        else if (leftClicks < 200) {
          fill(0);
          textSize(20);
          text("Current Emotion: Content", 10, height - 17);
        }
        else {
          fill(0);
          textSize(20);
          text("Current Emotion: HAPPY!", 10, height - 17);
        }
      }
      
      // different nice hairs
      if (mouseButton == RIGHT) {
        rightClicks++;
        if (rightClicks % 4 == 1) {
          x = 231;
          y = 199;
          z = 66;
        }
        else if (rightClicks % 4 == 2) {
          x = 110;
          y = 71;
          z = 57;
        }
        else if (rightClicks % 4 == 3) {
          x = 110;
          y = 195;
          z = 190;
        }
        else {
          x = 255;
          y = 0;
          z = 0;
        }
      }
    }
  }
  else {
    lightTrig = true;
  }
}
