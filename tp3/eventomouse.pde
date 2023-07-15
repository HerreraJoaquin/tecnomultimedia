void mousePressed() {
  if ( estado == 0 ) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 0 -> 1");
      estado = 1;
    }
  } else if ( estado == 1 ) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 1 -> 2");
      estado = 2;
    }
    
  } else if ( estado==2) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 2 -> 3");
      estado = 3;
    }
    
    if ( colisionConBotonCircular(300,550,50) ) {
      println("CLICK en boton de la izquierda (flujo de estado 2 -> 13");
      estado = 13;
    }
    } else if ( estado==3) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 3 -> 4");
      estado = 4;
    }
    
  } else if ( estado==4) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 4 -> 5");
      estado = 5;
    }
    
  } else if ( estado==5) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 5 -> 6");
      estado = 6;
    }
    
    if ( colisionConBotonCircular(300,550,50) ) {
      println("CLICK en boton de la izquierda (flujo de estado 5 -> 21");
      estado = 23;
    }
  } else if ( estado==6) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 6 -> 7");
      estado = 7;
    }
    
  } else if ( estado==7) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 7 -> 8");
      estado = 8;
    }
   
  } else if ( estado==8) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 8 -> 9");
      estado = 9;
    }
    if ( colisionConBotonCircular(50,550,50) ) {
      println("CLICK en boton de la izquierda (flujo de estado 9 -> 8");
      estado = 30;
    }
    if ( colisionConBotonCircular(300,550,50) ) {
      println("CLICK en boton de la izquierda (flujo de estado 9 -> 8");
      estado = 36;
    }
  } else if ( estado==9) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 9 -> 10");
      estado = 10;
    }
    
  } else if ( estado==10) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 10 -> 11");
      estado = 11;
    }
    
  } else if ( estado==11) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 11 -> 12");
      estado = 12;
    }
    
  } else if ( estado==12) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 12 -> 0");
      estado = 0;
    }
    
  } else if ( estado==13) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 13 -> 14");
      estado = 14;
    }
    
  } else if ( estado==14) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 14 -> 15");
      estado = 15;
    }
    
  } else if ( estado==15) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 15 -> 16");
      estado = 16;
    }
    
    if ( colisionConBotonCircular(300,550,50) ) {
      println("CLICK en boton de la izquierda (flujo de estado 15 -> 26");
      estado = 25;
    }
  } else if ( estado==16) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 16 -> 17");
      estado = 17;
    }
    
  } else if ( estado==17) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 17 -> 18");
      estado = 18;
    }
    
   } else if ( estado==18) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 18 -> 19");
      estado = 19;
    }
    if ( colisionConBotonCircular(50,550,50) ) {
      println("CLICK en boton de la izquierda (flujo de estado 9 -> 8");
      estado = 33;
    }
    if ( colisionConBotonCircular(300,550,50) ) {
      println("CLICK en boton de la izquierda (flujo de estado 9 -> 8");
      estado = 27;
    }
   } else if ( estado==19) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 19 -> 20");
      estado = 20;
    }
    
   } else if ( estado==20) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 20 -> 21");
      estado = 21;
    }
    
   } else if ( estado==21) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 21 -> 22");
      estado = 22;
    }
    
   } else if ( estado==22) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 22 -> 00");
      estado = 0;
    }
    
   } else if ( estado==23) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 23 -> 24");
      estado = 24;
    }
    
   } else if ( estado==24) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 24 -> 25");
      estado = 7;
    }
    
   } else if ( estado==25) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 24 -> 25");
      estado = 26;
    }
    
   } else if ( estado==26) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 26 -> 17");
      estado = 17;
    }
    
   } else if ( estado==27) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 26 -> 17");
      estado = 28;
    }
    
   } else if ( estado==28) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 26 -> 17");
      estado = 29;
    }
    
   } else if ( estado==29) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 26 -> 17");
      estado = 0;
    }
    
   } else if ( estado==30) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 30 -> 31");
      estado = 31;
    }
    
   } else if ( estado==31) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 30 -> 31");
      estado = 32;
    }
    
   } else if ( estado==32) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 30 -> 31");
      estado = 0;
    }
    
   } else if ( estado==33) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 30 -> 31");
      estado = 34;
    }
    
   } else if ( estado==34) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 30 -> 31");
      estado = 35;
    }
    
   } else if ( estado==35) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 30 -> 31");
      estado = 0;
    }
    
   } else if ( estado==36) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 30 -> 31");
      estado = 37;
    }
    
   } else if ( estado==37) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 30 -> 31");
      estado = 38;
    }
    
   } else if ( estado==38) {
    if ( colisionConBotonCircular(550,550,50) ) {
      println("flujo de estado 30 -> 31");
      estado = 0;
    }
    
   }
}
