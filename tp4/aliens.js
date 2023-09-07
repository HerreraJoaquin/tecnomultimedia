function dibujaAliens() {

  // Dibujar alien
  fill(255);

  var contador = 0;
  for (x=0; x<9; x++){   //Va de 0 a 8 como esta ordenado el array
    for (y=0; y<2; y++){ //Va de 0 a 1 como esta ordenado el array
      if (avivo[contador]){ //Si el alien esta vivo lo dibuja, sino no
        image(alienImage, apx[x]+movalposx, apy[y]+movalposy, aWidth, aHeight);
      }
      contador ++;
      
    } 
  }
}

function checkearColisiones(){

  
  //Checkear Colisiones V2
  var contador = 0;
  for (x=0; x<9; x++){   //Va de 0 a 8 como esta ordenado el array
    for (y=0; y<2; y++){ //Va de 0 a 2 como esta ordenado el array
      if (avivo[contador]){ //Si el alien esta vivo checkea, sino no
        if (r1x >= apx[x]+movalposx - aWidth/2 && r1x <= apx[x]+movalposx + aWidth/2 && r1y >= apy[y]+movalposy - aHeight/2 && r1y <= apy[y]+movalposy + aHeight/2){
          score += 1;
          avivo[contador] = false;
          r1Position = 2;
        }
      }
      contador ++;
    }
  }
  
}

function updateRect(){
  movalposx += velx;
  if ((movalposx<=aWidth*0.5 && velx<0) || (movalposx>=width-movalWidth+aWidth*0.5 && velx>0)){
    movalposy+=aHeight;
    velx *= -1;
  }
}


function reset(){
  for (i=0; i<18; i++){
    avivo[i] = true;
  }
  movalposx = 50;
  movalposy = 100;
}
