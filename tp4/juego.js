function juego() {
  
  updateNave();
  ellipse(mouseX, mouseY, 20, 20);
  background (0); //fondo negro
  
  push();
  stroke(0, 255, 0);
  line(0,477,600,477);
  pop();
  
  rockets();

  stroke(0, 255, 0); //verde
  noFill();
  strokeWeight(3);
  rect(width/2, height/2, width, height);
  noStroke();
  fill(0, 255, 0);
  rect(width/2, 25, width, 50);
  
  // dibujar jugador
  noStroke();
  fill(0, 0, 255);
  image(playerImage, p1x, p1y, pWidth, pHeight);



  dibujaAliens();
  checkearColisiones();
  updateRect();

  //barra estado
  fill(0);
  textSize(25);
  text("Score:", 50, 35);
  text(score, 100, 35);
}
