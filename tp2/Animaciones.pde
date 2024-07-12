//En esta pestaña decidi hacer uso de todo lo que logré aprender a lo largo de la cursada,
//por eso decidi hacer animaciones diferentes, una con respecto a otra...
//Utilize funciones propias, y una reutilizable para facilitarme el trabajo :)

void animacion1() {
  if (prueba1 >= 125) {
    prueba1= 125 ;
  } else if (prueba1 >= 0) {
    prueba1 = prueba1 + 0.7;
  }
}


void animacion2() {
  if (prueba2 < 25) {
    prueba2 = 25 ;
  } else if ((prueba2 <= 650) && (frameCount/60 >=6)) {
    prueba2 = prueba2 + 8;
  }
}

void animacion3() {
  if ((prueba3 >= 0) && (frameCount/60 >= 13)) {
    prueba3 = prueba3 + 3.5;
  }
}

void animacion4() {

  if (frameCount/60 >= 17) {
    prueba5 = prueba5 + 3.5;
  }
  if (frameCount/60 >= 16) {
    prueba4 = prueba4 + 0;
    Opacidad = Opacidad + 0;
  } else if (prueba4 >= 0) {
    prueba4 = prueba4 + 0.7;
    Opacidad = Opacidad + 5;
  }
}

void animacion5() {
  prueba6 = prueba6 + 0.7;

  if (frameCount/60 == 24) {
    prueba6 = 0;
  } else if ((frameCount/60 >=22) && (frameCount/60 <24)) {
    prueba6 = prueba6 - 1.4;
  }
}



void textoReutilizable(String text, float x, float y) {

  text(text, x, y);
}
