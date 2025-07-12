// https://youtu.be/FNvVOrQ-Zbg

void setup () {
  size(800, 400);
  cant = 6;
  tam = height / cant;
  rectMode(CENTER);
  imagenR = loadImage("referencia.jpeg");
  rad = 3;
}

void draw () {
  float anguloFondo = map(mouseX, mouseY, 100, 100, 255);
  
  background(255, anguloFondo);

 //movimiento de los cuadrados
 
  if (movD) {
    ang += velocidad;
  } else {
    ang -= velocidad;
  }

  //cambio de color de todo
  
  if (movX) {
    background(200, 0, 60);
    fill(random(250), 0, 230);
  } else {
    background(255);
    fill(255);
  }

  pantallas();
}

// Funcion con parametro y retornable
float calcularAng(float x, float y) {
  float d = dist(x, y, width, height);
  float maxD = dist(0, 0, width, height);
  return map(d, 0, maxD, 1, 5);
}

void pantallas() {
  
  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      
      push();

      float centroX = 400 + x * tam + tam;
      float centroY = y * tam + tam;

      translate(centroX, centroY);
      
      float a = calcularAng(mouseX, mouseY);
      
      rotate(radians(ang * a));
      strokeWeight(3);

      rect(0, 0, tam * 2, tam * 2);
      rect(0, 0, 60 * 2, 60 * 2, rad);
      rect(0, 0, 52 * 2, 52 * 2, rad);
      rect(0, 0, 44 * 2, 44 * 2, rad);
      rect(0, 0, 36 * 2, 36 * 2, rad);

      pop();

      image(imagenR, 0, 0);
    }
  }
}
