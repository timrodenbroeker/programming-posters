color white = #f1f1f1;
color black = #000000;
color primary = #ff0000;
PFont roboto; 

void setup() {
  roboto = createFont("RobotoMono-Light.ttf", 200);
  rectMode(CENTER);
  size(586, 810);
}

void draw() {
  background(primary);
  
  fill(black);
  textFont(roboto, 300);
  textAlign(CENTER, CENTER);
  text("Hey",mouseX,mouseY);
}
