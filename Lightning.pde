int x = 0;
int y = 0;
int z = 0;
boolean lightTrig = false;

void setup()
{
  background(91, 175, 178);
  size(600,700);
  fill(205, 193, 146);
  ellipse(300,0,100,100);
  img = loadImage("https://raw.githubusercontent.com/User-N-prime/Lightning/refs/heads/master/Kendrick.jpg");
}
void draw() {
  if (lightTrig == true) {
    int lightStartX = (int)(Math.random() * 600);
    int lightStartY = 0;
    for (int i = 200; i >= 1; i -= 5) {
      int lightChangeX = (int)(Math.random() * 18 - 9);
      int lightChangeY = (int)(Math.random() * 8 + 9);
      strokeWeight(i / 10);
      stroke(255, 255, 255, i);
      line(lightStartX, lightStartY, lightStartX + lightChangeX, lightStartY + lightChangeY);
      lightStartX += lightChangeX;
      lightStartY += lightChangeY;
      fill(255, 255, 255, 200/i);
      rect(0, 0, 600, 700);
      float centerX = width/2;
      float centerY = height/2;
      image(img, centerX - img.width/2, centerY - img.height/2);
      text("you've summoned fear, precursor to wrath of all man. endure.", 0, 0);
      }
  }
}
void mousePressed() {
  if (Math.random() * 50 > 1) {
    if (mouseButton == LEFT) {
      stroke(x, y, z);
      strokeWeight(1);
      int hairStartX = (int)(Math.random() * 50 + 225);
      int hairStartY = 0;
      while (hairStartY < 700) {
        int hairChangeX = (int)(Math.random() * 18 - 9);
        int hairChangeY = (int)(Math.random() * 8 + 9);
        line(hairStartX, hairStartY, hairStartX + hairChangeX, hairStartY + hairChangeY);
        hairStartX += hairChangeX;
        hairStartY += hairChangeY;
      }
    }
    
    if (mouseButton == RIGHT) {
      int c = (int)(Math.random() * 3 + 0.5);
      if (c == 1) {
        x = 231;
        y = 199;
        z = 66;
      }
      else if (c == 2) {
        x = 110;
        y = 71;
        z = 57;
      }
      else if (c == 0) {
        x = 110;
        y = 195;
        z = 190;
      }
      else if (c == 3)
        x = 255;
        y = 0;
        z = 0;
    }
  }
  
  else {
    lightTrig = true;
    }
}
