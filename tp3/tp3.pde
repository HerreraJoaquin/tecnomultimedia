//Herrera Joaquin, 92721/4
//Comisión 3
//tp2
//Video: https://youtu.be/ow61va43r2c



PImage[] fondos;
String[] textos;
int cantImagenes = 32;
int estado;


void setup() {
  size(600, 600);

 
  fondos = new PImage[32];
  
  for ( int i=0; i<cantImagenes; i++ ) {
    fondos[i] = loadImage("fondo_"+nf(i, 2)+".jpg");

    
  }

  
  textos = new String[28];
  
  textos[0] = "Hace mucho tiempo tres cerditos decidieron hacer sus casas,\n el menor hizo una casa de paja, el del medio una de madera y el mayor una de ladrillo";
  textos[1] = "Pero de repente llega un lobo feroz para comerse a los cerditos, a lo que estos deciden esconderse en sus casas";
  textos[2] = "El lobo se encontraba frente a la casa de paja, ahora solo tenía que hacer salir al cerdito. Estaba entre soplar la casa y volar todo por los aires o quemarla y acorralar al cerdito";
  textos[3] = "Y el lobo sopló y sopló y la casa derribó";
  textos[4] = "El menor de los cerditos fue corriendo a buscar refugio con su hermano en la casa de madera";
  textos[5] = "El lobo se encontraba frente a la casa de madera. Para sacarlos estaba entre soplar la casa y volar todo por los aires o lanzar un frasco con termitas que se comerían toda la casa";
  textos[6] = "Y el lobo sopló y sopló y la casa derribó";
  textos[7] = "Entonces los cerditos decidieron refugiarse con su hermano mayor en la casa de ladrillos";
  textos[8] = "El lobo se encontraba frente a la casa de ladrillos. Para sacarlos estaba entre soplar la casa, cavar un túnel para entrar en la casa o solo esperar a que los cerditos se rindieran y salieran por su cuenta ";
  textos[9] = "Y el lobo sopló y sopló y la casa no derribó";
  textos[10] = "El lobo optó por entrar por la chimenea ";
  textos[11] = "Lo que no esperaba es que los cerditos ya venían venir esto, así que le pusieron una olla con agua hirviendo bajo la chimenea";
  textos[12] = "El lobo corrió hacia el bosque lleno de dolor por las quemaduras y nunca más volvió a molestar a esos astutos cerditos. \n FIN";
  textos[13] = "El lobo quemó la casa de paja, esperando afuera al cerdito para comérselo en cuanto saliera y en cuanto el cerdito apareció...";
  textos[14] = "¡ZAAASSS! un cerdito menos y un poco menos de hambre tenía el lobo";
  textos[15] = "El lobo se encontraba frente a la casa de madera. Para sacarlos estaba entre soplar la casa y volar todo por los aires o lanzar un frasco con termitas que se comerían toda la casa";
  textos[16] = "El lobo opto por usar un frasco de termitas que casualmente siempre lleva consigo para ocasiones como esta";
  textos[17] = "Cuando las termitas se comieron todas las paredes y ya no había lugar donde esconderse la única opción para los cerditos era escapar";
  textos[18] = "Cuando las termitas se comieron todas las paredes y ya no había lugar donde esconderse la única opción para el cerdito era escapar";
  textos[19] = "Entonces el cerdito decidió refugiarse con su hermano mayor en la casa de ladrillos";
  textos[20] = "El lobo decidió esperar a que los cerditos salieran, pero contrario a lo que esperaba estos no tenían miedo, sino que estaban armados de valor y entonces...";
  textos[21] = "LOS CERDITOS MOLIERON A PALOS AL LOBO CON TODA LA IRA QUE TENÍAN";
  textos[22] = "De esa manera los cerditos ganaron y consiguieron una nueva alfombra de piel de lobo";
  textos[23] = "De esa manera los cerditos ganaron y consiguieron una nueva alfombra de piel de lobo... Pero ya no tenían a su hermano menor con ellos";
  textos[24] = "Y el lobo cavó y cavó";
  textos[25] = "Y una vez ya adentro de la casa el lobo no les dio la oportunidad a los cerditos para escapar y entonces...";
  textos[26] = "¡ZAAASSS! ahora el lobo ya no tenía hambre";
  textos[27] = "Gracias por jugar, reinicia y toma otro camino para ver un final diferente";
}

void draw() {
  
 
  if ( estado == 0 ) {
    dibujaPantalla( fondos[0], textos[0] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
  } else  if ( estado == 1 ) {
    dibujaPantalla( fondos[1], textos[1] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
 
  } else  if ( estado == 2 ) {
    dibujaPantalla( fondos[2], textos[2] );
    dibujaBotonCircular( 550,550,50, "SOPLAR");
    dibujaBotonCircular( 300,550,50, "QUEMAR\nCASA");
    
  } else  if ( estado == 3 ) {
    dibujaPantalla( fondos[3], textos[3] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 4 ) {
    dibujaPantalla( fondos[4], textos[4] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 5 ) {
    dibujaPantalla( fondos[5], textos[5] );
    dibujaBotonCircular( 550,550,50, "SOPLAR");
    dibujaBotonCircular( 300,550,50, "LANZAR\nTERMITAS");
    
  } else  if ( estado == 6 ) {
    dibujaPantalla( fondos[6], textos[6] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 7 ) {
    dibujaPantalla( fondos[7], textos[7] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 8 ) {
    dibujaPantalla( fondos[8], textos[8] );
    dibujaBotonCircular( 550,550,50, "SOPLAR");
    dibujaBotonCircular( 300,550,50, "CAVAR\nTUNEL");
    dibujaBotonCircular( 50,550,50, "ESPERAR");
    
  } else  if ( estado == 9 ) {
    dibujaPantalla( fondos[9], textos[9] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 10 ) {
    dibujaPantalla( fondos[10], textos[10] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 11 ) {
    dibujaPantalla( fondos[11], textos[11] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 12 ) {
    dibujaPantalla( fondos[12], textos[12] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 13 ) {
    dibujaPantalla( fondos[13], textos[13] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 14 ) {
    dibujaPantalla( fondos[14], textos[14] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 15 ) {
    dibujaPantalla( fondos[15], textos[15] );
    dibujaBotonCircular( 550,550,50, "SOPLAR");
    dibujaBotonCircular( 300,550,50, "LANZAR\nTERMITAS");
  } else  if ( estado == 16 ) {
    dibujaPantalla( fondos[16], textos[6] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 17 ) {
    dibujaPantalla( fondos[17], textos[19] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 18 ) {
    dibujaPantalla( fondos[18], textos[8] );
    dibujaBotonCircular( 550,550,50, "SOPLAR");
    dibujaBotonCircular( 300,550,50, "CAVAR\nTUNEL");
    dibujaBotonCircular( 50,550,50, "ESPERAR");
    
  } else  if ( estado == 19 ) {
    dibujaPantalla( fondos[19], textos[9] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 20 ) {
    dibujaPantalla( fondos[10], textos[10] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 21 ) {
    dibujaPantalla( fondos[11], textos[11] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 22 ) {
    dibujaPantalla( fondos[12], textos[12] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
  
  } else  if ( estado == 23 ) {
    dibujaPantalla( fondos[20], textos[16] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 24 ) {
    dibujaPantalla( fondos[21], textos[17] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 25 ) {
    dibujaPantalla( fondos[20], textos[16] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 26 ) {
    dibujaPantalla( fondos[22], textos[18] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 27 ) {
    dibujaPantalla( fondos[28], textos[24] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 28 ) {
    dibujaPantalla( fondos[30], textos[25] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 29 ) {
    dibujaPantalla( fondos[14], textos[26] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 30 ) {
    dibujaPantalla( fondos[23], textos[20] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 31 ) {
    dibujaPantalla( fondos[24], textos[21] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 32 ) {
    dibujaPantalla( fondos[25], textos[22] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 33 ) {
    dibujaPantalla( fondos[26], textos[20] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 34 ) {
    dibujaPantalla( fondos[24], textos[21] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 35 ) {
    dibujaPantalla( fondos[27], textos[22] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 36 ) {
    dibujaPantalla( fondos[28], textos[24] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 37 ) {
    dibujaPantalla( fondos[29], textos[25] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 38 ) {
    dibujaPantalla( fondos[14], textos[26] );
    dibujaBotonCircular( 550,550,50, "SIGUIENTE");
    
  } else  if ( estado == 39 ) {
    dibujaPantalla( fondos[31], textos[27] );
    dibujaBotonCircular( 550,550,50, "REINICIAR");
    
  } 

}
