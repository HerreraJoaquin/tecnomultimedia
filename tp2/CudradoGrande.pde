void dibujaCuadradoGrande(float cantidad_) {
  
    for (int i = 0; i<cantidad_; i++) {
    float x = map(i, 0, cantidad_, 0, 51);
    float y = map(i, 0, cantidad_, 0, 61);
    float tam = map( i, 0, 12, 400, 150);
    float sat3 = map(i, 0, cantidad_, 255, 10);
    float bri3 = map(i, 0, cantidad_, 0, 255);
    fill(150,sat3,bri3);
    rect(x, y, tam, tam );
    rotate(calculaModulo((radians(vel)),cantidad_));
  }
  

}
