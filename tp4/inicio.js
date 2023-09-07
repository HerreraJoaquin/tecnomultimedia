function inicio() {
  background (0);
  stroke(0, 255, 0); //verde
  noFill();
  strokeWeight(3);
  rect(width/2, height/2, width, height);
  noStroke();
  fill(0, 255, 0);
  rect(width/2, 25, width, 50);
  noStroke();

  push();
  fill(0, 255, 0);
  textSize(30);
  text("SPACE INVADERS \n DE LA SALADA", width/2, height/4);
  pop();
  textSize(15);
  text("Objetivo: acaba con todos los aliens y ganarás el juego.\n No dejes que ningún alien de la fila superior supere la linea verde, si lo haces, pierdes. ", width/2, height/2);
  text("Instrucciones: para moverte usa las flechas izquierda y derecha.\n Dispara presionando la letra S.  ", width/2, height/2+50);
  text("Presiona la tecla I para comenzar.  ", width/2, height/2+100);
  text("Juego hecho por Herrera Joaquín \n comisión 3", width/2, height/2+150);
}
