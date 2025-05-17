//tp 2 ipmi
//cristofer fernandez
color N = color(0);
color R = color (209, 40, 51);
color B = color (255);

int e;
int pant;
int tamanoT = 1;
int mov;
int mov1;
int pant1;
int pnat2;
int pant3;
int tiempo = 0;


String textoA1 = "Cult of the Lamb es un juego de accion, \naventuras y mazmorras. Desarrollado por el \nestudio indie Massive Monster, publicado \npor Devolver Digital. \n \n Cult Of The Lamb invoca a los jugadores \na sumergirse en un rpg sobre el ultimo cordero \nque existe este es atrapado y sacrificado, pero \nun ente misterioso lo salva y ahora para poder \npagar su deuda debera crear un culto que alabe \nal misterioso y sospechoso ente salvador";
String textoA2 = "Comienza tu propio culto en una tierra de falsos profetas, aventurandote en diversas y misteriosas regiones para construir una comunidad leal de discipulos, asi como esparcir tu palabra para convertirte en el unico culto verdadero. Reune y usa recursos para construir estructuras, llevar a cabo rituales oscuros que agraden a los dioses, y dar sermones para reforzar la fe de tu rebaño. ";
String textoA3 = "Aunque parece un juego donde lo que mas importa es la accion, en realidad posee un gran balance entre la pelea y un juego de simulación de vida aunque de una forma mas tétrica. estos son seres que se unen a la secta, te acompañaran y ayudaran a avanzar. algunas de las cosas que hacen son: \n- Recolectar recursos.\n- crear fertilizante para los cultivos. \n- Adorar ,la energia resultante puede ser utilizada para desbloquear nuevos objetos para tu secta.";

String estado;

PImage imagenc1;

PImage imagenb1;
PImage imagenb2;

PImage imagena1;
PImage imagena2;
PImage imagena3;
PImage imagena4;
PImage imagena5;
PImage imagena6;
PImage imagena7;
PImage imagena8;
PImage imagena9;

PImage imagenfinal;


void setup() {
  background (N);
  size(640, 480);
  textAlign (300, -50);
  
 

  imagenc1 = loadImage ("Cult of the Lamb.jpeg");

  imagenb1 = loadImage ("segundonecesito.jpeg");
  imagenb2 = loadImage ("imagen2.jpg");

  imagena1 = loadImage ("Forma_Ajolote_1.png");
  imagena2 = loadImage ("Forma_Armadillo.png");
  imagena3 = loadImage ("Forma_Cerdo_1.png");
  imagena4 = loadImage ("Forma_Ciervo.png");
  imagena5 = loadImage ("Forma_Monstruo.png");
  imagena6 = loadImage ("Forma_Pez.png");
  imagena7 = loadImage ("Forma_Perro.png");
  imagena8 = loadImage ("Forma_Tortuga.png");
  imagena9 = loadImage ("Forma_Mono.png");
  
  imagenfinal = loadImage ("fin.jpeg");

  mov =0;
  mov1 = 0;
  e = 0;
  pant = 0;
 
} 
void draw () {
  e = e+1;
  tiempo++ ;
  if (e > 0 && e < 960) {
    pant =0;
  } else if ( e > 960 && e < 1630) {
    pant = 1;
  } else if (e > 1630 && e < 2100) {
    pant = 2;
  } else if (e  >2100 && e < 2200) {
    pant = 3;
  }

  fill (250);
  noStroke();
  rect( 0, 0, width, height );

  println(frameCount);

  mov = mov +1;

  //------------ primer pantalla jeje... enloquesco

  if (pant == 0) {
    background (R);
    if (tamanoT <= 16) {
      tamanoT = tamanoT + 1;
    }


    image (imagenc1, 0, 0, 290, 480);
    textSize( tamanoT );
    fill (0);
    text(textoA1, 300, 60, 480, 480);
  }

  //------------ segunda pantalla aaaaaahhh maldita sea lloro.

  else if (pant == 1) {

    background (R);


    image (imagenb1, 300, 250, 368, 245);
    image(imagenb2, 300, 0, 368, 245);

    mov = tiempo/2;


    textSize (tamanoT);
    fill(0);
    text (textoA2, 40, 800 - mov, 250, 500);
  }

  //------------  maldito processing porque no existe la n~... putos
  else if (pant == 2) {

    background (R);

    mov1 =tiempo/2;

    image (imagena1, 490, 380 - mov );
    image (imagena2, 490, 500 - mov );
    image (imagena3, 490, 620 - mov );
    image (imagena4, 490, 740 - mov );
    image (imagena5, 490, 860 - mov );
    image (imagena6, 490, 1000 - mov );
    image (imagena7, 490, 1130 - mov );
    image (imagena8, 490, 1250 - mov );
    image (imagena9, 490, 1390 - mov );


    textSize (tamanoT);
    fill(0);
    text (textoA3, 30, 30, 390, 500);
  } else if (pant ==3) {
    background (B);
    noStroke ();
    fill(R);
    rect (250,210, 140, 60 );
    fill(0);
    text("REINICIAR", 290, 245 );
    
    image (imagenfinal,540, 400);
  }
}
void mousePressed () {

  if (pant == 3) {
    if  (mouseX > 250 && mouseX < 390 && mouseY > 210 && mouseY < 270) {
      pant = 0;
      mov = 0;
      mov1 = 0;
      e= 0;
      tamanoT = 1;
      tiempo =0;
    }
  }
}

void mouseClicked(){
      println(mouseX+","+mouseY);
}
//yo todo el trabajo "AAAAA.jpeg"
