//Ferron Nicholson Bautista
//Comision 2
//Prof: Matias Jauregui
//imagen: F_42
//https://youtu.be/pqKYHEG5X5Q

//Declaraciones

PImage imagen;
int cant = 10;
int tam;
float colors= map(mouseY, 0, height, 0, random(0, 255));
float colorinador = 0;
float colorinador2 = 255;
float flashador;
float grosor;


void setup() {
  size(800, 400);
  background(0);
  imagen = loadImage("imagen.jpg");

  tam = 400/cant;
}

void draw() {
  //funciones declaradas en el draw
  image (imagen, 0, 0);
  cuadrados();
  circulos();
  Detener("Posicion X: ", mouseX, "Posicion Y: ", mouseY);
}
