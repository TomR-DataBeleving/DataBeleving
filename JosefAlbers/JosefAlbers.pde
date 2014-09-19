import processing.pdf.*;

void setup(){
  size(600,600);
  beginRecord(PDF, "squares.pdf");
  smooth();
  background(255);
  
  generateSquares();
  colorMode(HSB, 360, 100, 100);
  
  endRecord();
}

void generateSquares(){

for(int i=0; i<1; i++){
  // Define specs for first square
  float H = random(360);
  float squareSize = random(300, 320);
  float squareX = width/2 - squareSize/1.3;
  float squareY = height/2 - squareSize/1.3;
  
  // Define random specs for overlaying squares
    for(int j=0; j<3; j++){
      float S = random(30, 70);
      float B = random(30, 70);
      
      //Displace square random per loop
      squareX = squareX + random(50, 90);
      squareY = squareY + random(50, 90);
      fill(H, S, B);
      noStroke();
      rect(squareX, squareY, squareSize, squareSize);
      
      //Decrease square width per loop
      squareSize -= random(90, 120); 
    }
 }
}
