class Casa {
 
  constructor() {
    this.x = 475;
    this.y = 350;
    this.tam = 200; 
  }
  
  actualizar() {
    this.dibujar();
  }
  
  
  dibujar() {
   push();
    translate(this.x, this.y);
    fill(90,39,5);
    image(casaImage,0,0,this.tam,this.tam);
   pop() 
  }
  
}
