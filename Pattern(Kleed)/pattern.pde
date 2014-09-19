import processing.pdf.*;

void setup() {
  size(800, 800);
  beginRecord(PDF, "pattern.pdf");
  smooth();
  background(255);

  rects();
  endRecord();
}

int VposY = 0;
int VposY2 = 0;
int VposX = 0;

int HposY = 0;
int HposY2 = 0;


void rects() {
  for (int i=0; i<8; i++) {

    // Vertical paars - lichtblauw - orange (Onderste)
    for (VposX = 5; VposX<800; VposX=VposX+120) {
        fill(233, 121, 0);
        noStroke();
        rect(VposX + 65, VposY, 10, 100 );
  
        fill(144, 123, 185);
        noStroke();
        rect(VposX + 25, VposY, 10, 100 );
  
        fill(94, 196, 198);
        noStroke();
        rect(VposX + 105, VposY, 10, 100 );
  
        fill(229, 53, 24);
        noStroke();
        rect(VposX + 5, VposY, 10, 100 );
      }
      VposY = VposY + 100;
      
      // Horizontaal (onderste)
      for (int l=0; l<6; l++) {
         fill(229, 53, 24);
         noStroke();
         rect(0, HposY + 5, width, 10);
         
         fill(46, 70, 158);
         noStroke();
         rect(0, HposY + 45, width, 10);
         
         fill(91, 150, 7);
         noStroke();
         rect(0, HposY + 85, width, 10);
      }
      HposY = HposY + 100;
      
      
      //Verticaal (bovenste)
      for (VposX = 5; VposX<800; VposX=VposX+120) {
         fill(46, 70, 158);
         noStroke();
         rect(VposX + 45, VposY2, 10, 100 );
         
         fill(91, 150, 7);
         noStroke();
         rect(VposX + 85, VposY2, 10, 100 );
      }
      VposY2 = VposY2 + 100;
      
      
      // Horizontaal (Bovenste)
      for (int l=0; l<6; l++) {
         fill(198, 182, 219);
         noStroke();
         rect(0, HposY2 + 25, width, 10);
         
         fill(244, 206, 162);
         noStroke();
         rect(0, HposY2 + 65, width, 10);
         
         fill(188, 214, 214);
         noStroke();
         rect(0, HposY2 + 105, width, 10);
      }
      HposY2 = HposY2 + 100;
      
    }
}
