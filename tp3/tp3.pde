//https://youtu.be/X1ZdaBuFvt4

void setup () {
  
  size (800, 400);
  cant =6;
  tam = height/6;
  rectMode(CENTER);

  imagenR = loadImage ("referencia.jpeg");
  rad = 3;
}
void draw () {


  float angulo= map(mouseX, mouseY, 100, 100, 255);

  background(255, angulo);

  //movimiento de los cuadrados
  if (movD == true) {
    ang += velocidad;
  } else if (movD == false) {
    ang-= velocidad;
  }

  //cambio de color de todo

  if (movX == true) {
    background(200, 0, 60);
    fill( random(250), 0, 230);
  } else if (movX == false) {
    background(255);
    fill(255);
  }


  pantallas();
}

void pantallas() {

  for (int x= 0; x<cant; x++) {
    for (int y=0; y<cant; y++) {

      push();
      
      float centroX = 400 + x * tam + tam;
      float centroY = y * tam + tam;

      translate(centroX, centroY);
      rotate(radians(ang));

      strokeWeight(3);


      rect(0, 0, tam*2, tam*2);
      rect(0, 0, 60*2, 60*2, rad);
      rect(0, 0, 52*2, 52*2, rad);
      rect(0, 0, 44*2, 44*2, rad);
      rect(0, 0, 36*2, 36*2, rad);


      pop();

      image (imagenR, 0, 0);
    }
  }
}
