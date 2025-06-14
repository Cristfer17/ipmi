

void keyPressed() {

  push(); //teclas para movimiento

  //para todo pero en un punto al azar
  if (key == 's' ) {
    velocidad = 0;
  }
    //gira hacia la izquierda... creo (dislexia no estes presente ahora
  else if (key == 'a') {
    velocidad =1;
    movD = false;
  }

  // comienza a funcionar todo de forma al azar
  else if (key == 'w') {
    velocidad = 1;
  }



  //gira en teoria hacia la derecha
  else if (key == 'd') {
    movD= true;
    velocidad = 1;
  }

  // parar pero de forma recta
  else if (key =='q') {
    velocidad = 0;
    ang = 0;
  }
  
  else if (key == 'r'){
   
   velocidad =1;
   ang = 0;
   movX = false;
  }
 
 /*formula utilizada para todo 
        if (key == 'letra seleccionada'){
         velocidad = tiempo
         ang = cambiar posicionamiento 
         *variable booleana la cual cambio segun true o false
        }
*/

 else if (key == 'e'){
   velocidad =0;
   ang = 0;
   movX = false;
  }
 
 else if (key == '-'){
  
 }
 
  else if (key == '+'){
   velocidad = 5;
 }
  pop();
}

//cambio de color 

void mousePressed() {
  
  if (mousePressed) {
    movX = true;
  } 
}
