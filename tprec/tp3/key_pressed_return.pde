void keyPressed() { //teclas para movimiento

 //para todo pero en un punto al azar
  if (key == 's') {
    velocidad = 0;
  }
  
  //gira hacia la izquierda... creo (dislexia no estes presente ahora
  else if (key == 'a') {
    velocidad = 1;
    movD = false;
  }
  
  // comienza a funcionar todo de forma al azar
  else if (key == 'w') {
    velocidad = 1;
  }
  
 //gira en teoria hacia la derecha
  else if (key == 'd') {
    movD = true;
    velocidad = 1;
  }
  
   // parar pero de forma recta
  else if (key =='q') {
    velocidad = 0;
    ang = 0;
  }
  
  // reseteo completo
  else if (key == 'r') {
    resetear(true);
  } 
  
  // reseteo sin color
  else if (key == 'e') {
    resetear(false);
  }
  
  // fiuuuum
  else if (key == '+') {
    velocidad = 5;
  }  
  
  //tortuga
  else if (key == '-') {
    velocidad = 1;
  }
}

void mousePressed() {
 
  if (mousePressed) {
    movX = true;
  } 
}

void resetear(boolean resetColor) {
  velocidad = 1;
  ang = 0;
  movD = true;
  if (resetColor) {
    movX = false;
  }
}
