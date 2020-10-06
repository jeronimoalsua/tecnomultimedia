


//Tp 3

//DECLARO VARIABLES INICIALES 

import ddf.minim.*;
Minim minim;
AudioPlayer playM;


int numTextos = 4;
String[] textos = new String [numTextos];
int numimages = 21;
PImage[ ] image = new PImage [numimages];




//FUENTE
PFont miletra; 

//VARIABLES 
String estado; 
float posX1;
int RESET = 0;
int CANTIDAD_DE_MS = 3 * 1000;

void setup () {

  size (800, 600); 
  background (255); 
  textos ();
  for (int i = 0; i <numimages;i++){
    image [ i]= loadImage ( "img"+i+ ".png" );
    
    minim = new Minim(this);
    playM = minim.loadFile("sweet-dreams_.mp3");
  }

  miletra = createFont ("BebasNeue-Regular.ttf", 50);


  //VALORES INICIALES Y CARACTERISTICAS
  imageMode (CENTER); 
  textFont (miletra); 
  textAlign (CENTER, CENTER); 

  posX1= 0;
  estado = "delivery" ;
}

void draw () {

  background (255);

  // ciclo if para manejar estados 
  if (estado.equals ("delivery")) {

    image (image[0 ], 400, 300, 500, 500);
  } else if (estado.equals ("pizzeria") ) {

    image (image [ 1], 400, 300, 800, 600);
  } else if (estado.equals ("pizzeria2") ) {

    image (image[2 ], 400, 300, 800, 600);
  } else if (estado.equals ("calle") ) {
    image (image[ 3], 400, 300, 800, 600);
    image (image[ 4], 250, 400, 250, 250);
  } else if (estado.equals ("gps") ) {

    image (image[ 7], 400, 300, 250, 400);
    image (image[ 8], 150, 300, 250, 100);
    image (image[5 ], 680, 300, 300, 300);
    image (image[ 8], 700, 550, 50, 50);
    fill(0);
    textSize(30);
    text ("preciona C para continuar", 500, 550);
  } else if (estado.equals ("calle2") ) {
    image (image[ 9], 400, 300, 800, 600);
    image (image [ 4], 350, 400, 250, 250);
  } else if (estado.equals ("villa") ) {
    image (image[ 10], 400, 300, 800, 600);
  } else if (estado.equals ("mafia") ) {
    image (image[ 16], 400, 300, 800, 600);
  } else if (estado.equals ("caminos") ) {

    image (image[ 15], 400, 300, 800, 600);
    image(image[ 17], 400, 300, 150, 150);
  } else if (estado.equals ("escape") ) {
    image (image[ 13], 400, 300, 800, 600);
    image (image[ 12], 680, 400, 200, 200);
    image (image[ 4], mouseX, mouseY, 250, 250);
  } else if (estado.equals ("tacho")) { 

    image (image[ 13], 400, 300, 800, 600); 
    image (image [ 12], 680, 400, 200, 200);
  } else if (estado.equals ("horizontal")) { 
    image (image[19 ], 400, 300, 800, 600); 
    image (image[11 ], 1000+posX1, 500, 200, 200);
  } else if (estado.equals ("viaje") ) {
    image (image[ 20], 400, 300, 800, 600);
    image (image [ 4], 300, 400, 250, 250);
  } else if (estado.equals ("creditos")) {
    background (0); 
    fill (255); 
    textSize (25); 
    text ( textos[0], 400, 150); 
    textSize (20); 
    text (textos[1], 400, 300); 
    text (textos[2], 200, 560);
  }
  //actualizo 
  posX1 = posX1 - 10;
}
void keyPressed () {

  if (key == ' ' && estado.equals ("delivery")) {
    estado = "pizzeria";
  }

  if (key == ' ' && estado.equals ("pizzeria2")) {
    estado = "pizzeria";
  }
  if (key == 'g' && estado.equals ("calle")) {
    estado = "gps";
  }  
  if (key == 'c' && estado.equals ("gps")) {
    estado = "calle2";
  }

  if (key == 'r' && estado.equals ("calle2")) {
    estado = "villa";
  }  
  if (key == ' ' && estado.equals ("villa")) {
    estado = "mafia";
  }    
  if (key == 'e' && estado.equals ("mafia")) {
    estado = "caminos";
  }

  if (key == 'w' && estado.equals ("caminos")) {
    estado = "escape";
  }  
  if (key == 'a' && estado.equals ("caminos")) {
    estado = "viaje";
  }
  if (key == 's' && estado.equals ("tacho")) {
    estado= "horizontal" ;
    posX1 = 0;
  }
  if (estado.equals ("horizontal") || estado. equals ("viaje")) {
    if (key == ' ' ) {
      estado = "creditos";
    }
  }

  if (keyCode== BACKSPACE && estado.equals ("creditos")) {
    estado = "delivery";
  }
}








void mousePressed () {

  if (mouseX > 660 && mouseX < 660+200 && mouseY > 500 && mouseY < 500+200 && estado.equals("pizzeria")) {
    estado = "calle";
  }
  if (mouseX > 680 && mouseX < 660+200 && mouseY > 400 && mouseY < 500+200 && estado.equals ("escape")) { 
    estado= "tacho" ;
  }
  
}
void textos (){
  textos [0] ="Creditos";
  textos [1] = "Trabajo practico nro 3 \n Aventura grafica: 'La Aventura del Delivery' \n Programacion: Alsua Jeronimo Manuel \n Tecno Multimedial 1 \n Comision 2\n Año 2020";
  textos [2] = "presiona backspace para volver a comenzar";
}
  
void music () {
  
//if para música 
  if (estado.equals ("delivery") ) {
 
 playM.play ();
  }else if (estado.equals ("creditos")){
    playM.pause ();
}
}
