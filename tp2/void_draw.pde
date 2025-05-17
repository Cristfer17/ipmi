//tp 2 ipmi
//cristofer fernandez

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

//yo todo el trabajo "AAAAA.jpeg"
