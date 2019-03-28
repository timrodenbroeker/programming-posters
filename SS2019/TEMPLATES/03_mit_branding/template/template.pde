color white = #f1f1f1;
color red = #EC1A1A;

PFont robotoRegular;

float a = 0;

import com.hamoid.*;
VideoExport videoExport;

void setup() {  

  size(586, 810, P2D);
  pixelDensity(2);
  textMode(SHAPE);
  robotoRegular = createFont("Roboto-Regular.ttf", 400);
  textFont(robotoRegular, 400);
  textAlign(CENTER, TOP);

  videoExport = new VideoExport(this, "video.mp4");
  videoExport.setFrameRate(30);  
  videoExport.startMovie();
}

void draw() {
  background(red);   
  textFont(robotoRegular, 400);
  textAlign(CENTER, TOP);
  text("hi", width/2, 130);


  branding();

  videoExport.saveFrame();
}
