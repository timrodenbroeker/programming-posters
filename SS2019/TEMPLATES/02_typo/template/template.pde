color white = #f1f1f1;
color red = #EC1A1A;

PFont robotoLight;

void setup() {  
  textMode(SHAPE);
  size(586, 810, P2D);
  pixelDensity(2);

  robotoLight = createFont("Roboto-Light.ttf", 400);
  textFont(robotoLight, 400);
  textAlign(CENTER, TOP);
}

void draw() {
  background(red);   

  text("hi", width/2, 100);
}
