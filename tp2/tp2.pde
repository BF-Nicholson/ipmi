//Ferron Nicholson Bautista
//Comision 2
//Prof: Matias Jauregui

//declaraciones (con algunas asignaciones)
PImage imagenpresentacion;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PFont  fuentefachera;
String textopresentacion;
String buenosdias;
String texto1;
String texto2;
String texto3;
String texto4;
String texto5;
String texto6;
String texto7;
int relleno;
int relleno2;
boolean debug = false;
float prueba1 = 0;
float prueba2 = 0;
float prueba3 = 0;
float prueba4 = 0;
float prueba5 = 0;
float prueba6 = 0;
float Opacidad = 0;


void setup () {
  size(640, 480);
  background(0);


  //imagenes

  imagenpresentacion = loadImage("imagenpresentacion.jpg");
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  imagen4 = loadImage("imagen4.jpg");
  imagen5 = loadImage("imagen5.jpg");

  fuentefachera = loadFont("forsaking.vlw");
  textFont(fuentefachera);

  relleno = color(200);
 
  //textos

  textopresentacion =  "Esta presentacion\nse va a tratar \nde como iniciar una \npartida en el\njuego Devil May Cry";
  buenosdias = "Buenos dias!";
  texto1 = "Este es el menú\nde inicio";
  texto2 = "Para iniciar\nuna nueva partida\ndebe darle al\nboton New Game";
  texto3 = "Si quiere iniciar una partida ya\nexistente seleccione el boton Load Game";
  texto4 = "En este caso elegimos la opcion Load Game,\nseleccione la partida que desee jugar";
  texto5 = "En esta pantalla podemos elegir el modo de juego,\nHistoria y Bloody Palace.\nComo tambien revisar estadisticas y demas funciones";
  texto6 = "En este caso elegimos el modo de juego Bloody Palace,\nahora tenemos la opcion de personalizar el equipo e\niniciar partida.";
  texto7 = "Felicidades!\nEsta dentro del juego, ahora elimine a tantos enemigos como pueda\ny derrote a jefes muy poderosos";
}


void draw () {

  println("Mouse X:" + mouseX, "Mouse Y:" + mouseY);
  println(frameCount/60);


  //dentro del juego / imagen 5:
  if ((frameCount/60 >=25)) {
    background(0);
    image( imagen5, 0, 0);
    noStroke();
    push();
    fill(random(200, 255), random(100, 200), random(100, 200));
    textoReutilizable(texto7, 25, 400);
    pop();
    pushStyle();
    strokeWeight(4);
    stroke(0);
    fill(255, 0, 0);
    circle(558, 312, 40);
    popStyle();

    //imagen 4:
  } else if ((frameCount/60 >=20) && (frameCount/60 <25)) {
    background(0);
    image( imagen4, -20, 0);
    textoReutilizable(texto6, 25, 400 + prueba6);
    animacion5();
    println("Prueba 6:" + prueba6);

    //imagen 3:
  } else if ((frameCount/60 >=15) && (frameCount/60 <= 20)) {
    background(0);
    fill(255, Opacidad);
    image(imagen3, -20, 0);
    textoReutilizable(texto5, 25 + prueba5, 350  + prueba4);
    animacion4 ();
    println("Prueba 4:" + prueba4);
    //imagen 2:
  } else if ((frameCount/60 >=10) && (frameCount/60 <= 15)) {
    background(0);
    image( imagen2, -40, 0);
    textSize(15);
    textoReutilizable(texto4, 25 + prueba3, 400);
    animacion3();
    println("Prueba 3:" + prueba3);

    //imagen 1:
  } else if ((frameCount/60 >=5) && (frameCount/60 <=10)) {
    background(0);
    image( imagen1, -10, 0);
    pushStyle();
    textSize(20);
    //text(texto1, 475, 70);
    textoReutilizable(texto1, 475, 70);
    popStyle();
    pushStyle();
    textSize(15);
    text(texto2, 475, 130);
    popStyle();
    textSize(15);
    text(texto3, 680 - prueba2, 400);
    println("Prueba 2:" + prueba2);
    animacion2();

    //imagenpresentacion:
  } else if ((frameCount/60 >=0) && (frameCount/60 <=5)) {
    background(0);
    image(imagenpresentacion, -20, 0);
    pushStyle();
    textSize(25);
    text(buenosdias, 20, 100);
    pushStyle();
    textSize(20);
    text(textopresentacion, 20, 150+prueba1);
    animacion1();
  }
}

//boton de reinicio: 

void mousePressed() {
 
  float d = dist(mouseX, mouseY, 558, 312);
  float r = 40 / 2;
  if ( d<r ) {
    frameCount = 0;
    prueba1 = 0;
    prueba2 = 0;
    prueba3 = 0;
    prueba4 = 0;
    prueba5 = 0;
    prueba6 = 0;
  }
}
