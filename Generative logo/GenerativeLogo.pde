import processing.pdf.*;

void setup(){
  size(600,600);
  beginRecord(PDF, "logo.pdf");
  smooth();
  background(255);
  
  generateBeziers();
  colorMode(HSB, 360, 100, 100);
  
  endRecord();
}

  //First vertex
  float X1 = 80;
  float Y1 = 0;
  float X2 = 80;
  float Y2 = 75;
  float AnchorX = 30;
  float AnchorY = 100;
  
  //Second vertex
  float SX1 = 50;
  float SY1 = 80;
  float SX2 = 60;
  float SY2 = 25;
  float SAnchorX = 30;
  float SAnchorY = 20;
  
  float angle = 70;
  
  float vertexX = random(0,50);
  float vertexY = random(0,20);

 
void generateBeziers(){
  for(int i=0; i<21; i++){
    float H = random(20);
    float S = random(110, 130);
    float B = random(100, 120);
    
    pushMatrix();
    translate(200,200); 
      rotate(radians(angle)); 
      beginShape();
      fill(H, S, B);
      vertex(vertexX, vertexY);
      noStroke();      
      bezierVertex(X1, Y1, X2, Y2, AnchorX, AnchorY);
      bezierVertex(SX1, SY1, SX2, SY2, SAnchorX, SAnchorY);
      endShape();
    
    popMatrix();
    
    angle = angle + 50;
    
    println(vertexX);
    println(vertexY);
  }
}






