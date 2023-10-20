//Nombre: Joaquin Herrera
//Legajo: 92721/4
//Comision: 3
//Video: https: //youtu.be/peta6LlyS5c


let juego; //mi primer variable = primer objeto (algo que se crea basandose en una clase)

function setup() {
 createCanvas(600,600);
  juego = new Juego();//declarando un objeto juego
}


function draw() {
 juego.actualizar();//estoy llamando desde el programa principal al objeto de la clase juego a que se actualice  
}

function keyPressed(){
 juego.keyPressed(); 
}

function preload() {

  casaImage = loadImage("./datan't/casademadera2.0.png");
  loboImage = loadImage("./datan't/lobocorriendo2.0.png");
  cerdoImage = loadImage("./datan't/cerditocorriendo2.0.png");
  fondoImage = loadImage("./datan't/fondo.png");
}
