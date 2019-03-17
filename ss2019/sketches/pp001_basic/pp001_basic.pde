color blue = #2103a8;
color white = #f1f1f1;

void setup() {
  size(586, 810);
  noStroke();
  background(blue);
  pixelDensity(2);
  rectMode(CENTER);
}

void draw() {
  translate(width/2, height/2);
  rotate(radians(frameCount));
  fill(white);
  rect(100, 0, 500, 3);
  rotate(radians(frameCount+10));
  fill(blue);
  rect(55, 0, 400, 3);
}
