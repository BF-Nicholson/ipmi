//Declaracion de variables

PImage oasis;
PFont oasisFont;
int grosormarco = 0;
int R;
int G;
int B;
boolean estoyDentroDelMarco;
boolean estoyFueraDelMarco;


void setup() {
  size(800, 400);
  oasis = loadImage( "oasis.jpg" );
  oasisFont = loadFont("oasisfont.vlw");
  rectMode(CORNER);

  //colores
  R = 255;
  G = 255;
  B = 255;
}

void draw() {
  estoyDentroDelMarco = ( mouseX > 415 && mouseY > 122 && mouseX < 415+367 && mouseY < 122+157 );
  estoyFueraDelMarco = ( mouseX > 0 && mouseY >0 && mouseX > 0 && mouseY > 0 );
  image(oasis, 0, 0);
  println("moouseX:"+mouseX, "mouseY:"+mouseY);

  //funciones

  oasis();

  oasisLetras();
  
efectoArcoiris();

  
}
