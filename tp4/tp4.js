//Herrera Joaquin, 92721/4
//Comisión 3
//tp3
//Video: https://youtu.be/79_2fMi3ZgU





//personaje

var p1x = 300;
var p1y = 550;
var pWidth = 50;
var pHeight = 30;
var pSpeed = 4.5;
var derecha = false;
var izquierda = false;




//Aliens 
//var apx = [50,110,170,230,290,350,410,470,530]; //Posicion de aliens en X
//var apy = [150,210];                            //Posicion de aliens en y
//Estos estan con las posiciones en relacion al rectangulo
var apx = [0,60,120,180,240,300,360,420,480]; //Posicion de aliens en X
var apy = [0,60];                            //Posicion de aliens en y
var avivo = [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true] //Condicion de vida de los aliens. Va de 0 a 17
var aWidth = 40;
var aHeight = 40;


//Rectangulo que define el movimiento de los aliens
var movalposx = 50;
var movalposy = 100;
var velx = 0.8;

var movalWidth = 520; //Width  del rectangulo = 530+40-50 (posX del ultimo alien + width de los aliens - posX del primer alien)  
var movalHeight = 100;//Height  del rectangulo = 210+40-150 (posY del ultimo alien + height de los aliens - posY del primer alien)  

//rocket
var r1x = p1x;
var r1y = p1y;
var r1Position = 0;
var rWidth = 5;
var rHeight = 15;
var rSpeed = 9;
var fire = false;

//contador
var score = 0;

//multimedia
var playerImage;
var alienImage;


//estados
var estado = 0;



function setup() {
  createCanvas(600, 600);
  rectMode(CENTER);
  textAlign(CENTER);
  imageMode(CENTER);
} //close setup


function draw() {

  if (estado == 0) {
    inicio();
  } else if (estado == 1) {
    juego();
  } else if (estado == 2) {
    lose();
  } else if (estado == 3) {
    win();
  }





  if (estado == 0) {
    score = 0;
    reset();
    p1x = 300;
    p1y = 550;
    r1Position = 0;

    
  } else if ( estado == 1 ) {
    if (score >= 18) {
      estado = 3;
    } else if ( estado == 1 ) {
    if (movalposy >= 500) {
      estado = 2;
    }
  }
  }
} // close draw


function keyPressed() {

  if (keyCode == LEFT_ARROW) {
    
    izquierda = true;
  }

  if (keyCode == RIGHT_ARROW) {
    
    derecha = true;
  }
  
  if (key == "s") {
    fire = true;
  }
  
  if (estado == 0 && key == "i") {
    estado = 1;
  }
  
  if (estado == 2 && key == "r") {
    estado = 0;
  }
  
  if (estado == 3 && key == "r") {
    estado = 0;
  }
}

function keyReleased() {

  if (keyCode == LEFT_ARROW) {
    
    izquierda = false;
  }

  if (keyCode == RIGHT_ARROW) {
   
    derecha = false;
  }
  
  if (key == "s") {
    fire = false;
  }
}

function updateNave(){
  if (izquierda){
    p1x -= pSpeed;
  }
  if (derecha){
    p1x += pSpeed;
  }
}

function preload() {

  playerImage = loadImage("./datan't/nave.png");
  alienImage = loadImage("./datan't/alien.png");
}
