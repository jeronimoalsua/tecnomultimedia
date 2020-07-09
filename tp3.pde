//Tp 3

//DECLARO VARIABLES INICIALES 

//IMAGENES 
PImage moto;
PImage bateria;
PImage gps;
PImage delivery; 
PImage mafia; 
PImage pizzeria; 
PImage tacho;
PImage calle1;
PImage calle2;
PImage calle3;
PImage calle4;
PImage calle5;
PImage pasaje ;
PImage pizzeria2; 
PImage flecha;
PImage texto; 
PImage villa;
PImage mafia2;
PImage china;
PImage horizontal;
PImage auto;



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

  //CARGO IMAGENES  
  bateria = loadImage ("bateria.png");
  calle1 = loadImage ("calle 1.jpg"); 
  calle2 = loadImage ("calle 2.jpg"); 
  calle3 = loadImage ("calle 3.jpg"); 
  calle4 = loadImage ("calle 4.jpg"); 
  calle5 = loadImage ("calle 5.jpg"); 
  delivery = loadImage ("delivery.png");
  gps  = loadImage ("gps.png"); 
  mafia = loadImage ("mafia.jpg");
  moto = loadImage ("moto.png");
  pasaje = loadImage ("pasaje.png");
  pizzeria = loadImage ("pizzeria.jpg");
  tacho = loadImage ("tacho.png");
  pizzeria2 = loadImage ("pizzeria2.jpg");
  flecha = loadImage ("flecha.png");
  texto = loadImage ("texto.png");
  villa = loadImage ("villa.jpg");
  mafia2 = loadImage ("mafia2.jpg");
  china = loadImage ("china.png");
  horizontal = loadImage ("horizontal.jpg");
  auto = loadImage ("auto.png");

  //CARGO FUENTES 

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

    image (delivery, 400, 300, 500, 500);
  } else if (estado.equals ("pizzeria") ) {

    image (pizzeria, 400, 300, 800, 600);
  } else if (estado.equals ("pizzeria2") ) {

    image (pizzeria2, 400, 300, 800, 600);
  } else if (estado.equals ("calle") ) {
    image (calle3, 400, 300, 800, 600);
    image (moto, 250, 400, 250, 250);
  } else if (estado.equals ("gps") ) {

    image (gps, 400, 300, 250, 400);
    image (bateria, 150, 300, 250, 100);
    image (texto, 680, 300, 300, 300);
    image (flecha, 700, 550, 50, 50);
    fill(0);
    textSize(30);
    text ("preciona C para continuar", 500, 550);
  } else if (estado.equals ("calle2") ) {
    image (calle2, 400, 300, 800, 600);
    image (moto, 350, 400, 250, 250);
  } else if (estado.equals ("villa") ) {
    image (villa, 400, 300, 800, 600);
  } else if (estado.equals ("mafia") ) {
    image (mafia, 400, 300, 800, 600);
  } else if (estado.equals ("caminos") ) {

    image (mafia2, 400, 300, 800, 600);
    image(pasaje, 400, 300, 150, 150);
  } else if (estado.equals ("escape") ) {
    image (calle1, 400, 300, 800, 600);
    image (tacho, 680, 400, 200, 200);
    image (moto, mouseX, mouseY, 250, 250);
  } else if (estado.equals ("tacho")) { 

    image (calle1, 400, 300, 800, 600); 
    image (tacho, 680, 400, 200, 200);
  } else if (estado.equals ("horizontal")) { 
    image (horizontal, 400, 300, 800, 600); 
    image (auto, 1000+posX1, 500, 200, 200);
  } else if (estado.equals ("viaje") ) {
    image (china, 400, 300, 800, 600);
    image (moto, 300, 400, 250, 250);
  } else if (estado.equals ("creditos")) {
    background (0); 
    fill (255); 
    textSize (25); 
    text ( "Creditos", 400, 150); 
    textSize (20); 
    text ("Trabajo practico nro 3 \n Aventura grafica: 'La Aventura del Delivery' \n Programacion: Alsua Jeronimo Manuel \n Tecno Multimedial 1 \n Comision 2\n Año 2020", 400, 300); 
    text ( "presiona backspace para volver a comenzar", 200, 560);
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
