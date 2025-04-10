PImage objJoaquin;

void setup (){
    size(800,400);
    background(245);
    objJoaquin=loadImage("joaquin.jpg");
}
    void mouseClicked(){
      println(mouseX+","+mouseY);
  }
void draw(){
image(objJoaquin, 0, 0, 400, 400);


fill(#623927);
noStroke();
quad(400,291 ,400,400  ,800,400 ,800,291 );

   fill(#6AADAF);
   noStroke();
 //patas
 quad(620,290 , 620,360, 740,360 , 740,290);
 //espinas
 triangle(742,271 , 740,360 ,  620, 360);
 triangle(620,200 , 620,360 ,460,360 );
 triangle(623,53  , 609,86  , 660,73);
 triangle(570,82  , 609,86  , 570,122);
 triangle(531,127 , 583,112 , 550,168);
 triangle(517,189 , 550,168 , 541,223); 
 triangle(515,251 , 541,223 , 548,276);
 triangle(511,276 , 548,277 , 515,307);
 triangle(485,304 , 515,306 , 483,338
);
//cuerpo
ellipse(630,230  , 178,260);
 ellipse(660,148  , 180,150);
     noFill();
    
    //brazo
     stroke(19,137,129);
     strokeWeight(2);
   quad(612,218 , 597,229 , 607,242 , 663,249);
     noStroke();
   //ojo y cachete
   fill(0);
   ellipse(680,140, 10,10);
   noFill();
   fill(#A01013);
   stroke(#A01013);
    ellipse(674,158, 20,20);
    noFill();

}
