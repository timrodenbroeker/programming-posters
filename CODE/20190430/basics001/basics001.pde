color white = #f1f1f1;
color black = #000000;
color primary = #ff0000;

void setup() {
  rectMode(CENTER);
  size(586, 810);
}

void draw() {
  background(primary);
  noFill();

  strokeWeight(5);

  stroke(black);

  rect(mouseX, mouseY, 250, 250);
}
