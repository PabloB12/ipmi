//Variables
PImage imagenuno;
PImage imagendos;
PImage imagentres;
float x;
float y;
float movh; //movimiento horizontal
float movv; //movimiento vertical
float tam;
float velocidad;
String estado;  
float maxTextSize;
PFont font; 
int esquinaX1 = 460;
int esquinaY1 = 410;
int ancho = 150;
int alto = 50;
float distanciaMouseBoton;
void setup() {
  
  size( 640, 480 ); //tamaño

//Declaracion de variables
tam = 0;
maxTextSize = 30;
velocidad = 0.1;
movh = 640; //movimiento horizontal
 movv = 480; //movimiento vertical
 
textAlign( CENTER, CENTER );

 //Imagenes
 imagenuno =loadImage ("pz.jpg");
  imagendos =loadImage ("pz2.jpg");
  imagentres =loadImage ("pz3.jpg");
  image (imagenuno,0,0);
  estado = "pz.jpg";
  font = createFont( "TimesNewRoman",24);

}

void draw() {
  println(frameCount/60);
background(100);
  rect (esquinaX1, esquinaY1, ancho, alto);

//estado #1
if ( estado == "pz.jpg" ) {  ;
tam = 0;
image (imagenuno, 0, 0);
     fill(0);
     textSize(25);
     text ("Project Zomboid es un videojuego de supervivencia\n isométrico de mundo abierto\n desarrollado por el estudio\n The Indie Stone.",movh,240);
movh = movh -1 ;

}
   if ( frameCount/60 >= 14 ) {
      estado = "pz2.jpg";
    }
    // estado #2
   if ( estado == "pz2.jpg" ) {
    movh = 640;
     image(imagendos, 0, 0);
    textSize(25);
    fill(0);
    text( "El videojuego se desarrolla en la zona de exclusión \npostapocalíptica e infestada de zombis\n del ficticio Knox County, Kentucky.", 315,movv );
    movv = movv -1;
   }
    if ( frameCount/60 >= 21 ) {
      estado = "pz3.jpg";
    }
    // estado #3
   if ( estado == "pz3.jpg" ) {
    movv = 480;
     image(imagentres, 0, 0);
    textSize(tam);
    fill(255);
   text( " Donde el jugador tiene el desafío de sobrevivir\n el mayor tiempo posible antes de ser mordido\n y morir inevitablemente ", 315,290 );
 tam = tam + velocidad;
 if (tam >=30){tam = maxTextSize;
 } }

if ( frameCount/60 >= 30) {
      rect (esquinaX1, esquinaY1, ancho, alto);
        fill(0);
    text("Reiniciar",526 ,432);
}
  distanciaMouseBoton = dist(mouseX, mouseY, esquinaX1, esquinaY1);
   
      }
   
 void mousePressed() {
  
if (frameCount/60>=33 && mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
     frameCount = 0;
     estado ="pz.jpg";

   } } 
  
  
  
     
  
