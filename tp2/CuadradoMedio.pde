void dibujaCuadradoMedio(float cantidad_) {
  
    for (int i = 0; i<cantidad_; i++) {
    
    float x = map(i, 0, cantidad_+2, 45, 3);
    float y = map(i, 0, cantidad_+2, 54, 11);
    float tam = map( i, 0, 4, 227, 150);
    float sat2 = map(i, 0, cantidad_+2, 150, 255);
    float bri2 = map(i, 0, cantidad_+2, 230, 0);
    float col2 = map(i, 0, cantidad_+2, 165, 180);
    fill(col2,sat2,bri2);
    rect(x, y, tam, tam );
    rotate(calculaModulo((radians(vel)),cantidad_));
  }
  
  
  
  
}
