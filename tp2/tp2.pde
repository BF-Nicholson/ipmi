
//Antes de comenzar, quiero mencionar que el trabajo en si esta incompleto
//Por falta de tiempo no pude dedicarle lo que merecia. Si bien logre
//realizar una secuencia de imagenes, y hacer que el boton funcione
//lo considero -y estoy seguro que usted profe tambien-, bastante pedante
//en mecanicas, como animaciones, variables, textos, prolijidad etc...
//por eso prefiero entregar esto que tengo ahora, y darlo todo en el recuperatorio
//No voy a decepcionar.

//El objetivo de esta presentacion es mostrar como iniciar partida del juego desde
//la pantalla inicial de este.

PImage imagen1; 
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PFont  fuentefachera;




void setup () {
size(640,480);
background(0);

imagen1 = loadImage("imagen1.jpg");
imagen2 = loadImage("imagen2.jpg");
imagen3 = loadImage("imagen3.jpg");
imagen4 = loadImage("imagen4.jpg");
imagen5 = loadImage("imagen5.jpg");

fuentefachera = loadFont("forsaking.vlw");
textFont(fuentefachera);



}


void draw () {
  
 
  
  
  println(mouseX, mouseY);
  println(frameCount/60);
  
  
  // imagen 1, presentacion del juegoo, introduccion.
  
 if(frameCount/60 >=0 && frameCount/60 <=7) {
  image( imagen1, 0-80, 0); 
  textSize(25);
    text( "Buenos dias!\nEsta presentacion, se va a tratar de como iniciar una\npartida en el juego Devil May Cry", 0, 400);

 }
  
  //inicio del juego en la pantalla de carga...
  
  if(frameCount/60 >=7 && frameCount/60 <= 14) {
    image( imagen2, -80, 0);
  }
  
  //menu principal de jueg, seleccion de modo de juego, -"bloody palace" en este caso-
  
 if (frameCount/60 >=14 && frameCount/60 <= 21){
   image( imagen3, -80, 0);
}

  //inicio de partida, o personalizacion de atributos de personaje
if (frameCount/60 >=21 && frameCount/60 <28){
   image( imagen4, -80, 0);
}

  //dentro del juego.
if (frameCount/60 >=36){
   image( imagen5, -80, 0);
   fill(200, 10, 10);
  noStroke();
  circle (560, 360, 100);
  }
}

void mousePressed () {
  
    float d1 = dist( mouseX, mouseY, 560, 360);
    int r1 = 100/2;
    
  if ( d1 < r1 ) {
    frameCount = 0;
     }
  
}



 
  //imagen numero 1
  //void mousePressed () {
    
  

  

      //image( imagen2, 400, 0);
     // image( imagen3, 0, 300);
    // image( imagen4, 0, 0);
    //  image( imagen5, 0, 0);
