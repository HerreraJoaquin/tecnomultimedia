void dibujaCuadradoChico(float cantidad_) {
  
  for (int i = 0; i<cantidad_; i++) {
    
    float x = map(i, 0, cantidad_+3, 10, 46);
    float y = map(i, 0, cantidad_+3, 19, 56);
    float tam = map( i, 0, 3, 90, 50);
    float col1 = map(i, 0, cantidad_+3, 45, 255);
    float bri1 = map(i, 0, cantidad_+3, 200, 0);
    float sat1 = map(i, 0, cantidad_+3, 215, 157);
    fill(sat1,col1,bri1);
    rect(x, y, tam, tam );
    rotate(calculaModulo((radians(vel)),cantidad_));
  }
  
 
  
}
