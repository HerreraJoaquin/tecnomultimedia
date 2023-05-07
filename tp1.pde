//Joaquín Herrera
//comisión 3
//tp1


//variariable estado para la transición de la pantalla
String estado = "inicio";
//variable para que las pantallas puedan cambiar de manera automatica utilizando los fps
int cuentaFotograma = 0;
//2 variables diferentes para el movimiento de dos textos diferentes
float x = 0;
float x2 = 0;
//variable para el tipo de caligrafia
PFont fuenteNueva;
//tres variables para cargar las imagenes 
PImage img1;
PImage img2;
PImage img3;



void setup(){
 size(640,480); 
 //cantidad de frames por segundo = 30
 frameRate(30);

 
 //determino las imagenes con sus correspindientes variables 
 img1 = loadImage("6153.jpg");
 img2 = loadImage("6150.jpg");
 img3 = loadImage("10555.jpg");
 //determino el tipo de caligrafia a usar con la variable PFont
 fuenteNueva = loadFont("Georgia.vlw");

}

void draw(){

background(255,171,3);
//utilizo la caligrafia elegida con todas las pantallas 
textFont(fuenteNueva);

if ( estado.equals("inicio") ) {
//si estado equivale a la pantalla de inicio las caracteristicas que contiene son las siguientes
noStroke();
fill(255);
rect(20,20,600,440);
fill(255,0,0);
fill(0);
//tamaño de la letra
textSize(20);
//el texto se encuentra centrado
textAlign(CENTER);
text("Joaquín Herrera" ,540, 424); 
text( "comisión 3",570,442);
//los valores cambian solo entre pushStyle y popStyle, luego vuelven a los anteriores
pushStyle();
textSize(50);
text("Graffiti Nature", width/2, height/2);
textSize(30);
popStyle();
//boton para iniciar la presentación
pushStyle();
textSize(20);
fill(255,0,0);
rect(245,300,150,100);
fill(0);
textSize(15);
text("click para iniciar",width/2,350);
popStyle();
//posición en la cual se va a encontrar x al inicio del estado pantalla 1
x = -260;


}
else if (estado.equals("pantalla 1")) {
//en caso de que estado equivale a pantalla 1 las caracteristicas que contiene son las siguientes
noStroke();
fill(255);
rect(20,20,600,440);
fill(255,0,0);
fill(0);
image(img1,180,280,280,175);



textAlign(CENTER);
textSize(15);

//reemplazo la posición de x por la variable ya establecida
text("Graffiti Nature es una instalación digital  ", x, 50);
text("interactiva creada originalmente por el grupo", x, 70);
text("teamLab en 2016 (f. 2001) el cual es un ", x, 90);
text("colectivo de arte internacional originario de Japon. ",x,110);
text("Su práctica colaborativa busca navegar la ", x, 130);
text("confluencia del arte, la ciencia, la tecnología y ", x, 150);
text("el mundo natural. A través del arte, el grupo   ", x, 170);
text("interdisciplinario de especialistas, que incluye ", x, 190);
text("artistas, programadores, ingenieros, animadores CG,  ", x, 210);
text("matemáticos y arquitectos, tiene como objetivo",x,230);
text("explorar la relación entre el yo y el mundo, y nuevas", x,250);
text("formas de percepción.",x,270);






pushStyle();
textSize(15);
text(cuentaFotograma, 40, 40);
popStyle();
//velocidad a la que se movera x
x+=6;

//si x es menor o igual a 320, el movimiento va a parar
if (x>=320){
 x=320; 
}

//los numeros del contador irán en aumento (tambien se puede usar cuentaFotograma+=1)
cuentaFotograma = cuentaFotograma + 1;

//si el numero de fotogramas llega a 800 el estado cambia a la pantalla 2
if (cuentaFotograma  >= 800 ) {
  estado = "pantalla 2";
  cuentaFotograma = 0;
  x = -260;
  //posición en la cual se va a encontrar x2 al inicio del estado pantalla 2 
  x2 =-330;
}


}


else if (estado.equals("pantalla 2")) {
//en caso de que estado equivale a pantalla 2 las caracteristicas que contiene son las siguientes
noStroke();
fill(255);
rect(20,20,600,440);
fill(255,0,0);
fill(0);
image(img2,365,30,250,200);


textAlign(CENTER);
textSize(15);
text("Concebida originalmente en 2016 la instalación  ", x, 70);
text("invita al público a recorrer el espacio y a  ", x, 85);
text("crear ellos mismos los elementos", x, 100);
text(" -animales y flores- con los cuales interactuarán.",x,115);
text("El funcionamiento es simple: antes de entrar ", x, 130);
text("a la sala principal, debes agarrar unas", x, 145);
text("plantillas con animales o flores y colorearlas  ", x, 160);
text("a tu gusto, luego éstas se escanean, digitalizan", x, 175);
text("y comienzan a aparecer proyectadas por todo el ", x, 190);
text("lugar como si fuesen reales.",x,210);



textAlign(CENTER);
textSize(17);
//reemplaso la posición de x por x2 que es la segunda variable para que el texto se mueva 
text("Los animales se comen entre sí y cuando lo hacen la población ", x2, 300);
text("aumenta, las flores crecen cada vez que  ", x2, 320);
text("las tocas y si hay las suficientes atraen miles de mariposas.", x2, 340);
text("Todo es parte de un ecosistema mágico donde todos somos creadores. ", x2, 360);



pushStyle();
textSize(15);
text(cuentaFotograma, 40, 40);
popStyle();
x+=6;
//ambas variables se mueven a la misma velocidad
x2+=6;
//cuando x llegue a 192 el movimiento se detiene
if (x>=192){
 x=192; 
}
//cuando x2 llegue a 320 el movimiento se detiene
if (x2>=320){
 x2=320; 
}

cuentaFotograma = cuentaFotograma + 1;


if (cuentaFotograma  >= 800 ) {
  estado = "pantalla 3";
  cuentaFotograma = 0;
  x=-260;
  
}
}

else if (estado.equals("pantalla 3")) {
//en caso de que estado equivale a la pantalla 3 las caracteristicas que contiene son las siguientes
noStroke();
fill(255);
rect(20,20,600,440);
fill(255,0,0);
fill(0);
image(img3,410,30,200,400);
//boton de reinicio
pushStyle();
fill(255,0,0);
rect(50,300,150,100);
fill(0);
textSize(15);
text("click para reiniciar",60,350);
popStyle();

//la posición del texto está alineada a la izquierda
textAlign(LEFT);
textSize(17);
text("Los algoritmos de programación con los que", x, 70);
text("trabaja TeamLab son tan complejos que ninguna", x, 85);
text("secuencia es igual a la siguiente", x, 100);
text("y todo puede cambiar en un pestañeo.", x, 115);
text(" <<En general nuestros proyectos giran todos", x, 170);
text("en torno a la naturaleza, nos gusta porque no ", x, 185);
text("hay política de por medio, todos amamos y nos", x, 200);
text("sentimos cómodos con la naturaleza, es un tema", x, 215);
text("universal>>, comenta la arquitecta japonesa",x,230);
text(" Shizuka Sasaki, parte de TeamLab.",x,245);

pushStyle();
textSize(15);
text(cuentaFotograma, 40, 40);
popStyle();
x+=6;
//si x llega a 25 el movimiento se detiene
if (x>=25){
 x=25; 
}

cuentaFotograma = cuentaFotograma + 1;


}

}
//si presiono con el boton del mouse 
void mousePressed () {
  //cuando estado equivale a inicio
  if (estado.equals("inicio")) {
    //cuando el mouse esta dentro de estos parametros y clickeo
    if (mouseX >= 245 && mouseY >= 300 && mouseX <= 395 && mouseY <= 400){
 //estado pasa a pantalla 1
      estado = "pantalla 1";
      cuentaFotograma = 0;

}
  } 
  //si estado equivale a pantalla 3
  else if (estado.equals("pantalla 3")) {
   //cuando el mouse esta en estos parametros y clickeo 
    if (mouseX >= 50 && mouseY >= 300 && mouseX <= 200 && mouseY <= 400){
 //estado pasa a pantalla de inicio
      estado = "inicio";
}
  }
  
  
}
