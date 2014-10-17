Table table;
String[] countryName = new String[0];
float[] Years = new float[0];
float[] Skill = new float[0];

color blue = color(0, 50, 100);
color pink = color(255, 50, 100);

int Country = 0;

float YearSmallX1 = 490;
float YearSmallY1 = 600;
float YearSmallX3 = 690;

float SkillSmallX1 = 310;
float SkillSmallY1 = 600;
float SkillSmallX3 = 510;

void setup() {
  size(1000, 1000, P2D);
  smooth();
  table = loadTable("study.csv", "header");
  loadCountries();
}

// Create array for every neccessary data subject
void loadCountries() {
  for (TableRow row : table.rows ()) {
      countryName = append(countryName, row.getString("country"));
      Skill = append(Skill, row.getFloat("StudentSkills"));
      Years = append(Years, row.getFloat("StudyYears"));
  }
}

void draw() {
  background(150);
  gradientTriangle(50, 50, blue, pink);
  TriangleBackgrounds();
  DataTriangles();
}

// Draw Gradient Triangle
void gradientTriangle(int x, int y, color c1, color c2) {
beginShape();
  fill(c2);
  noStroke();
  vertex(373, 280);
  vertex(627, 280);
  fill(c1);
  noStroke();
  vertex(500, 534);
endShape();
}

// Draw darkgrey background triangles. The size of these triangles indicate the max value for the overlaying triangles, which are variable
void TriangleBackgrounds() {
beginShape();
  fill(40);
  noStroke();
  triangle(210, 800, 410, 400, 610, 800);
  fill(50);
  noStroke();
  triangle(390, 800, 590, 400, 790, 800);
endShape();
}


void mousePressed() {
  if (mouseButton == LEFT) { Country++; } else { Country = 0; }
  
  //Press right mouse to go back to first country, if all countrys have shown, go back to first country
  if (Country >= countryName.length){Country=0;}
}

//Get country date per mouseclick
void DataTriangles() {
  float YearAmount = Years[Country];
  float SkillAmount = Skill[Country];
  
  //Calculate size for Year and  Skill Triangle
  float YearExpandFactor = (YearAmount - 14.1)*17.8;
  float SkillExpandFactor = (SkillAmount - 402)*0.7142857;
  
  //Calculate RGB values for Year and  Skill Triangle
  
  float RedsYears = 0-(YearAmount*45.5);
  float RedsYear = RedsYears + 896.35;
  
  float RedsSkill = (SkillAmount*1.82)-731.64;
  
  float StudyEffectiveFactor = (534 - ((RedsYear + RedsSkill)/2))+4;
  
  
  beginShape();
    fill(RedsSkill,0,100);
    noStroke();
    triangle(SkillSmallX1 - SkillExpandFactor, 800, 410, SkillSmallY1 - (SkillExpandFactor * 2), SkillExpandFactor+SkillSmallX3, 800);
  endShape();
    
  beginShape();
    fill(RedsYear,100,100);
    noStroke();
    triangle(YearSmallX1 - YearExpandFactor, 800, 590, YearSmallY1 - (YearExpandFactor * 2), YearExpandFactor+YearSmallX3, 800);
   endShape();
    
    //another identical triangle on top for opacity, explicity in overlapping part of triangles
  beginShape();
    fill(RedsSkill,0,100,125);
    noStroke();
    triangle(SkillSmallX1 - SkillExpandFactor, 800, 410, SkillSmallY1 - (SkillExpandFactor * 2), SkillExpandFactor+SkillSmallX3, 800);
  endShape();
  
  
  
    // Draw a line from mixed colors to the gradient triangle on top. The color from beginning and end of the line have to match
      //Line
      beginShape();
      fill(255);
      noStroke();
        vertex(499, StudyEffectiveFactor);
        vertex(501, StudyEffectiveFactor);
        vertex(501, 785);
        vertex(499, 785);
      endShape();
      
      //Little indicator
      noFill();
      stroke(255);
      strokeWeight(2);
      beginShape();
        vertex(495, 785);
        vertex(505, 785);
        vertex(500, 792);
        vertex(495, 785);
      endShape();
      
      //Little indicator
      noFill();
      stroke(255);
      strokeWeight(2);
      beginShape();
        vertex(495, StudyEffectiveFactor);
        vertex(505, StudyEffectiveFactor);
        vertex(500, StudyEffectiveFactor - 7);
        vertex(495, StudyEffectiveFactor);
      endShape();
      
      PFont font;
      font = loadFont("OstrichSans-Black-48.vlw");
      textFont(font, 48);
      fill(42);
      text(countryName[Country], 450, 900);
      
      println(RedsYears);
}









