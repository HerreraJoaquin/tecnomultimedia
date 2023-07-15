void dibujaBotonCircular(float x, float y, float radio, String texto) {
  
  color fondo = color(200);
  color borde = color(100);
  color efectoOver = color(0, 200, 0);

  
  if ( colisionConBotonCircular(x, y, radio) ) {
    fill(efectoOver);
  } else {
    fill(fondo);
  }
  stroke(borde);
  rectMode(CENTER);
  circle(x, y, radio);

  
  fill(0); 
  textAlign(CENTER, CENTER); 
  textSize(10); 
  text(texto, x, y ); 
}

boolean colisionConBotonCircular(float x, float y, float radio ) {
  
  boolean colisiona;
  float d = dist(mouseX,mouseY,x,y);
  float r = radio/2;
  if ( d < r) {
    colisiona = true;
  } else {
    colisiona = false;
  }
  return colisiona;
}
