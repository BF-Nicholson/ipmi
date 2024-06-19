void oasisLetras() {
  pushStyle();
  color(255);
  textFont(oasisFont);
  textSize(107);
  text("oasis", 438, 233);
  popStyle();
}

void oasis() {
  //fondo
  pushStyle();
  fill(0);
  rect(400, 0, 400, 400);
  popStyle();
  //marco
  pushStyle();
  fill(R, G, B);
  rect(420-5, 122, 367, 157);
  popStyle();
  //relleno
  pushStyle();
  fill(0);
  rect(425, 131, 345, 137);
  popStyle();
}

void efectoArcoiris() {
  // > borde izquierdo: mouseX > 415
  // < borde derecho: mouseX < 415+367
  // > borde superior: mouseY > 122
  // < borde inferior: mouseY < 122+157
  if ( estoyDentroDelMarco ) {
    float angulo = radians(PI/4);
    float distancia = frameCount;
    float x = distancia * cos(angulo);
    float y = distancia * sin(angulo);
    
  
    
    for (int X=1; X<40; X+=10) {
      push();
      colorMode(HSB, 359, 100, 100 );
      rectMode(CENTER);
      noFill();
      stroke(random(0,233), random(0, 244), random(0,255));
      strokeWeight(10);
      rect(599, 200, 372+X, 150+Y);
      pop();
      
      for(int Y=1; Y<35; Y++){
      
      }
    }
    R = (int)random(100, 240);
    G = (int)random(100, 240);
    B = (int)random(100, 240);
  } else if (estoyFueraDelMarco) {
    grosormarco= 0;
    R = 255;
    G = 255;
    B = 255;
  }
}

//void keyPressed() {


//  if (key == 'j') {
//    for ( int x=400; x<width; x+=40) {
//      stroke(R, G, B);
//      rect(x, 0, 40, 40);
//      for ( int y= 0; y<height; y+=40) {
//        rect(x, y, 40, 40);
//      }
//    }
//  }
//}

//void pruebaForRotateTranslateytodoelresto() {
//  push();

//    // rotacion y velocidad de rotacion
//    float angulo = radians(frameCount);
//    float distancia = frameCount/8;
//    float x = distancia * cos(angulo);
//    float y = distancia * sin(angulo);

//    rectMode(CENTER);
//    translate(600, 200);
//    rotate(map(mouseY, 0, height, PI/2, PI/4));
//    fill(255);
//    rect(x, y, 150, 150);



//    pop();
//}
