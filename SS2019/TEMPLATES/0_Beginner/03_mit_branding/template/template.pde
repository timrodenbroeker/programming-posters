color white = #f1f1f1;
color red = #FF0000;

PFont robotoRegular;

float a = 0;

void setup() {  

  size(586, 810, P2D);
  pixelDensity(2);
  textMode(SHAPE);
  robotoRegular = createFont("Roboto-Regular.ttf", 400);
  textFont(robotoRegular, 400);
  textAlign(CENTER, TOP);

}

void draw() {
  background(red);   
  textFont(robotoRegular, 400);
  textAlign(CENTER, TOP);
  text("hi", width/2, 130);

  branding();

}
