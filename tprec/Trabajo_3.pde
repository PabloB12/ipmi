PImage img;
int imgX = 0;
int imgY = 0;
int diametro;
int esp;
int columnas = 7; // Número de columnas de círculos
int filas = 7; // Número de filas de círculos
color fondo; // Color de fondo
color circuloColor; // Color de los círculos
color colorOriginal; // Color original de los círculos

void setup() {
  size(800, 400);
  img = loadImage("circulos.jpg"); // Carga la imagen proporcionada
  img.resize(400, 400); // Ajusta el tamaño de la imagen
  fondo = img.get(0, 0); // Toma el color del fondo de la imagen

  // Calcula el diámetro y el espacio entre los círculos para que entren perfectamente
  diametro = (height / filas) - 10; // Ajusta el diámetro de acuerdo a la altura disponible
  esp = (height / filas); // Ajusta el espacio entre los círculos

  circuloColor = color(0, 100, 0); // Color inicial de los círculos
  colorOriginal = circuloColor; // Guarda el color original de los círculos

  noFill(); // No rellena los círculos
  strokeWeight(2); // Ancho del borde de los círculos
}

void draw() {
  background(fondo); // Color de fondo igual al de la imagen
  image(img, imgX, imgY); // Dibuja la imagen en la parte izquierda

  // Dibuja los círculos en la parte derecha
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      // Calcula la posición de cada círculo
      int x = 400 + i * esp + esp / 2;
      int y = j * esp + esp / 2;
      
      // Establece el color de los círculos
      stroke(circuloColor); // Contorno de los círculos

      // Dibuja el círculo
      ellipse(x, y, diametro, diametro);
    }
  }
}

// Función que no retorna un valor y modifica una variable
void resetProgram() {
  diametro = (height / filas) - 10;
  circuloColor = colorOriginal; // Restaura el color original de los círculos
}

// Función que retorna un valor (nuevo tamaño del círculo)
int changeCircleSize(int newSize) {
  return newSize;
}

void keyPressed() {
  if (keyCode == 32) { // Si se presiona la tecla de espacio
    circuloColor = color(random(255), random(255), random(255)); // Cambia a un color aleatorio
  }
  if (key == 'r' || key == 'R') {
    resetProgram();
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    diametro = changeCircleSize(diametro - 5); // Achica los círculos con el click izquierdo
  }
  if (mouseButton == RIGHT) { 
    diametro = changeCircleSize(diametro + 5); // Agranda los círculos de la derecha 
  }
}
