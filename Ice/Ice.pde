import processing.pdf.*;

void setup(){
  size(800,1000);
  beginRecord(PDF, "ice.pdf");
  smooth();
  background(255);
  drawIce();
  drawRect();
  drawHorn();
  endRecord();
}

  float posX = 400;
  int posY = 390;
  float w = 1;
  float h = 1;
  float opacity = 30;

void drawIce(){
  for(int i=0; i<139; i++){
    ellipse(posX, posY, w, h);
    noFill();
    stroke(0, 0, 0, opacity);
    w = w + 3;
    h = h + 3;
    opacity = opacity + 1;
  }
}

void drawRect(){
  fill(255);
  noStroke();
  rect(150, 450, 500, 210);
}

int pointOneX = 400;
int pointOneY = 900;
int pointTwoX = 200;
int pointTwoY = 450;
int pointThreeX = 600;
int pointThreeY = 450;
float TriangleOpacity = 100;

void drawHorn(){
  for(int i=0; i<100; i++){
    triangle(pointOneX, pointOneY, pointTwoX, pointTwoY, pointThreeX, pointThreeY);
    stroke(0, 0, 0, TriangleOpacity);
    pointOneX = pointOneX - 0;
    pointOneY = pointOneY - 3;
    pointTwoX = pointTwoX + 2;
    pointTwoY = pointTwoY + 1;
    pointThreeX = pointThreeX - 2;
    pointThreeY = pointThreeY + 1;
    
    TriangleOpacity = TriangleOpacity +1;
  }
}


 


