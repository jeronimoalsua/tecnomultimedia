//variables imagenes
PImage estrella;
PImage nave;
PImage cactus;
PImage pistola;
PImage cohete;
PImage sombrero;
//variables letras
PFont letrachica;
PFont letragrande;
//varaibles transparencias
float posY1, posY2;



void setup() {
  size(600, 400);
  background(0);
  //cargo imagenes y tipografias
  estrella= loadImage("estrella.png");
  nave=  loadImage("nave.png");
  cactus= loadImage("cactus.png");
  pistola = loadImage("pistola.png");
  cohete = loadImage("cohete.png");
  sombrero = loadImage("sombrero.png");
  //tipografia

  letrachica= loadFont("LucidaFax-Italic-20.vlw");
  //caracteristicas
  textFont(letrachica);
  // asigno valores iniciales
  posY1=0;
  posY2=0;
}

void draw() {
  background(0);


  textSize(20);
  fill(255);
  text("art director", width/2, 590+posY1);
  textSize(25);
  text("ralph eggleston", width/2, 620+posY1);
  image(sombrero, 200, 570+posY1);

  textSize(20);
  text("film editors", width/2, 780+posY1);
  textSize(25);
  text("robert gordon", width/2, 810+posY1);
  text("lee unkrich", width/2, 840+posY1);
  image(pistola, 500, 780+posY1);

  textSize(20);
  text("supervising animator", width/2, 970+posY1);
  textSize(25);
  text("pete docter", width/2, 1000+posY1);
  image(cactus, 200, 930+posY1);

  fill(255);
  textSize(20);
  text("sound design", width/2, 1130+posY1);
  textSize(25);
  text("gary rydstrom", width/2, 1160+posY1 );
  image(cohete, 485, 1100+posY1);
  textSize(20);
  text("production supervisor", width/2, 1290+posY1);
  textSize(25);
  text("karen robert jackson", width/2, 1320+posY1);

  image(estrella, 200, 1250+posY1, 80, 80);


  fill(255 );
  image(nave, 235, 1420+posY1);
  textSize(22);
  text("cast", 250, 1490+posY1);



  textSize(20);
  text("tom hanks \n tim allen  \n don rickles \n jim varney \n wallace shawn \n john ratzenberger \n annie potts \n john morris \n erik von detten \n laurie metcalf \n  r. lee ermey \n sarah freeman \n penn jillette \n", 300, 1540+posY1);

  textSize(20);
  text("woody \n buzz lightyear \n mr.potato head \n slinky dog \n rex \n hamm \n bo peep \n andy \n sid \n mrs.davis \n sergeant \n hannah \n tv announcer \n", 100, 1540+posY1);

  //actualizo valores de variables
  posY1=posY1-1;
}
