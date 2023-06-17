//Herrera Joaquin, 92721/4
//Comisión 3
//tp2
//Video: https://youtu.be/iRF_0b0zoyY


PImage img;
String estado = "inicio";
float vel;
float acc;






void setup() {
  size(800, 400);
  colorMode(HSB);
  img = loadImage("reytey-va1967-1969.jpg");
  vel=0;
  acc=0;
  
  
  
  
}

void draw() {
  background(0);
  image(img,0,0,400,400); 
  //println(mouseX,mouseY);
  translate( 600, height/2);
  
  vel = vel + acc;

  

  noStroke();
   
  rectMode(CENTER); 
 if ( estado.equals("inicio") ) {

 dibujaCuadradoGrande(9);
 dibujaCuadradoMedio(7);  
 dibujaCuadradoChico(6);
  vel = 0;
  acc=0;
 
 }
  
  if ( estado.equals("movimiento+1") ) {
 dibujaCuadradoGrande(9);
 dibujaCuadradoMedio(7);  
 dibujaCuadradoChico(6);
 acc = +1;
  }

if ( estado.equals("movimiento-1") ) {
 dibujaCuadradoGrande(9);
 dibujaCuadradoMedio(7);  
 dibujaCuadradoChico(6);
 acc = -1;
  }


}


void mouseClicked() {
  if (estado.equals("inicio")) {
    estado= "movimiento+1";
  } else if (estado.equals("movimiento+1")){
    estado="movimiento-1";
  }
  else {
  estado= "movimiento+1";
  } 
}

void keyPressed() { 
  if (estado.equals("movimiento+1")) { 
  estado= "inicio";
  }else if (estado.equals("movimiento-1")){
    estado="inicio";
  }
}






 
