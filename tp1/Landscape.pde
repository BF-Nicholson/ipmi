PImage landscape;
//
void setup () {
  background(0, 100, 200);
  size(800, 400);
  landscape=loadImage("landscape.jpg");
  
}
void mousePressed(){
  println("X Y");
  println(mouseX,mouseY);
}
//
void draw() {
  image(landscape, 0, 0);
  rect(400, 280, 400, 200);
  noStroke();
  fill(5, 80, 30);
  
  beginShape();
  vertex(764, 225);
  vertex(800, 241);
  vertex(764, 239);
  endShape();
  
  quad(724, 263, 740, 240, 800, 240, 800, 263); 
  arc(763, 240, 45, 50, PI, TWO_PI);
  rect(759, 279, 42, 18);
  rect(723, 263, 80,17); 
  rect(700, 263, 24, 17);
  rect(675, 258, 25, 22);
  rect(616, 263, 60, 17);
  rect(587, 268, 30, 12);
  rect(569, 263, 18, 17);
  rect(513, 263, 17, 17);
  rect(501, 272, 6, 7);
  rect(445, 273, 20, 7);
  rect(429, 270, 10, 10);
  noStroke();
  fill(70, 130, 70);
  
  beginShape();
  vertex(737, 295);
  vertex(759, 282);
  vertex(759, 295);
  endShape();
  
  
  
  
  
}
