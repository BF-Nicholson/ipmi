void cuadrados() {
  
  //decidi mapear la distancia del mouseX al grosor 
  //del Stroke para poder generar algo mas artistico con eso, hice lo mismo con los circulos.
  
  float distancia= dist(0, 0, mouseX, mouseY);
  float flashador= map(mouseX, 0, width, 8, 0);
  
  if (distancia < 50){
    return;
  }
  
  for (int x=0; x<cant; x++) {
    for (int y=0; y <cant; y++) {
      if ((x+y)%2==0) {
        fill(colorinador);
      } else {
        fill(colorinador2);
      }

      push();
      println(distancia);
      stroke(random(0, 200), random(0, 150), random(0, 150));
      strokeWeight(flashador);
      rect(x*tam+width/2, y*tam, tam, tam);
      pop();
    }
  }
}


void circulos () {
  for (int j = 0; j<cant; j++) {
    for (int m = 0; m<cant; m++) {
      if ((j+m)%2==0) {
        fill(255);
      } else {
        fill(0);
      }

      float grosor= map(mouseY, 0, height, 0, 10);
      float colors= map(mouseY, 0, height, 0, random(0, 255));
      push();
      translate(tam/2, tam/2);

      stroke(random(0, 100), colors, random(0, 255));
      strokeWeight(grosor);
      ellipse (j*tam+width/2, m*tam, tam/2*0.8, tam/2*0.8);
      pop();
    }
  }
}

void mouseDragged() {

  colorinador2= map(mouseX+mouseY, 0, width, 0, 255);
}

void keyPressed() {
  if (key == 'r') {
 
    
 colorinador = 0;
 colorinador2 = 255;

  }
}
