//clase juego (molde que me va a permitir crear objetos)

class Juego {
  
//constructors (metodo que define las particularidades del juego) 
  constructor(){
  this.cerdo = new Cerdo(); //declarando un objeto cerdo 
  this.lobo = new Lobo(); //declarando un objeto lobo 
  this.casa = new Casa(); //declarando un objeto casa 
  this.estado = 0;
  this.espera = millis()+3*1000;
 
}

//metodos (definir acciones del juego)

actualizar(){
  
    if ( this.estado == 0) {
      background(28, 194, 252);
      textAlign(CENTER, CENTER);
      push();
      textSize(25);
      text("Bienvenido a corre del Lobo, las reglas son simples,", width/2, height/2-50);
      text("debes apretar varias teclas para que el cerdito,", width/2, height/2-25);
      text("corra del lobo, si llegas a la casa antes de que", width/2, height/2);
      text("el lobo te atrape, ganas, si te alcanza antes... pierdes.", width/2, height/2+25);
      text("Presiona I para comenzar.", width/2, height/2+75);
      pop();
      textSize(17);
      text("juego hecho por herrera joaquín inspirado en el cuento de los tres cerditos.", width/2, height-20);
    
  } else if ( this.estado == 1 ) {
      //fondo...
      image(fondoImage,0,0,600,600);
      if ( millis() > this.espera ) {
       
       this.casa.actualizar();  
       this.cerdo.actualizar(); 
       this.lobo.actualizar(); 
       if(this.lobo.agarroCerdo(this.cerdo)){
       this.estado = 3;
       }
       if(this.cerdo.x >= 500){
       this.estado = 2;
       }
         
      } else {
        push();
        textSize(25);
        textAlign(CENTER, CENTER);
        text("preparados!", width/2, height/2);
        let falta = this.espera-millis();
        text(round(falta/1000), width/2, height/2+100);
        pop();
      }
      
    } else if ( this.estado == 2 ) {
      //gane...
      background(0,255,0);
      push();
        textSize(25);
        textAlign(CENTER, CENTER);
        text("Bien hecho acabas de escapar del Lobo,", width/2, height/2);
        text("si quieres jugar de nuevo presiona R", width/2,height/2+25);
        pop();
      
    } else if ( this.estado == 3 ) {
      //perdi...
      background(255,0,0);
      push();
        textSize(25);
        textAlign(CENTER, CENTER);
        text("Que mal, te atrapo el Lobo,",width/2,height/2-25);
        text("vuelve a intentarlo la proxima,", width/2, height/2);
        text("si quieres jugar de nuevo presiona R", width/2,height/2+25);
        pop();
    }
  }


keyPressed() {
  
   
    if (this.estado == 0 && key == "i") {
    this.estado = 1;
    this.espera = millis()+3*1000;
    this.cerdo.x = 200;
    this.cerdo.vel = 0;
    this.lobo.x = 50;
  }else if (this.estado == 1 && millis() > this.espera) {
      this.cerdo.keyPressed();
  }else if (this.estado == 2 && key == "r") {
    this.estado = 0;
  }else if (this.estado == 3 && key == "r") {
    this.estado = 0;
   
  }
  }  
 }
