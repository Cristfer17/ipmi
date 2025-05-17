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
