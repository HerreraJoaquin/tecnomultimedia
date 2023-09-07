function win() {
  background (0, 255, 0);
  stroke(0);
  noFill();
  strokeWeight(3);
  rect(width/2, height/2, width, height);
  noStroke();


  fill(0);
  textSize(50);
  text("GANASTE", width/2, height/2);
  textSize(15);
  text("felicidades, acabas de ganar, si quieres volver a jugar preciona r para reiniciar el juego ", width/2, height/2+50);
}
