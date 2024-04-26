PImage img;

void setup() {
  size(800, 400);
  background(#78C8FC);
  
  img = loadImage("montana.jpg");
  
  img.resize(400,400);
  image(img, 0, 0); 
}

void draw() {
  rect (401,296,800,311);
fill(#949DA0);//gris de la montaña
triangle(461 ,196,491 ,72,567 ,195);
fill(#949DA0);//gris de la montaña
triangle(401, 196,432, 101,479 ,196
);
fill(#949DA0);//gris de la montaña
triangle(798, 42,650,195,799 ,194
);
triangle(552, 194,586 ,121,614, 195
);
triangle(614 ,195,636 ,98,693 ,195);
fill(255);
circle(473,55,40);
circle(470,45,40);
circle(539,28,40);
fill(255);
circle(461,55,40);
  circle(506,40,60);
 circle(552 ,55,50);
 circle(739 ,25,60);
 circle(697 ,43,70);
 circle(664, 11,60);
 circle(665 ,53,50);
 fill(#1E8CD3);
 
  

 rect(401,196,800,100);
fill(#1CF00A);//verde del arbol
 circle(652,357,50);
 fill(#956805);//marron
 quad(712, 319,715 ,372,747, 371,740 ,317
);
 fill(#1CF00A);//verde del arbol
 triangle(695 ,319,722,225,754 ,317
);
 fill(#1CF00A);//verde del arbol
 circle(493 ,399,60);
 circle(569,349,50);
 circle(774,375,70);
 fill(#956805);//marron
quad(621 ,325,623, 370,652 ,371,647, 325);
fill(#1CF00A);//verde del arbol
 triangle(604 ,325,630, 249,660 ,325
);
 fill(#1CF00A);
 circle(419 ,341,38);
 fill(#956805);
 quad(526,337,525 ,381,551,380,546, 339
);
 fill(#1CF00A);
 triangle(515 ,338,553 ,339,534 ,266);
 fill(#1CF00A);//verde del arbol
 triangle(437, 300,451 ,229,474, 300
);
 fill(#956805);//marron
 quad(445 ,300,446 ,347,468 ,348,465, 300

);
 fill(6,160,18);


 

}






























void mousePressed(){
  println(mouseX , mouseY);
}
