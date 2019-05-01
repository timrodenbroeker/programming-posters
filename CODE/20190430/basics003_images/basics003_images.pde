color white = #f1f1f1;
color black = #000000;
color primary = #ff0000;

PImage img;


void setup() {
  background(primary);
  
  img = loadImage("a.jpg");
  img.resize(300,0);
  img.filter(GRAY);
  
  imageMode(CENTER);
  
  size(586, 810);
}

void draw() {
  //background(primary);
  
  image(img, 100, 100);
  
}
