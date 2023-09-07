function lose() {
  background (255, 0, 0);
  stroke(0);
  noFill();
  strokeWeight(3);
  rect(width/2, height/2, width, height);
  noStroke();

  fill(0);
  textSize(50);
  text("PERDISTE", width/2, height/2);
  textSize(15);
  text("Que mal, acabas de perder, si quieres volver a intentarlo preciona r para reiniciar el juego ", width/2, height/2+50);
  
}
