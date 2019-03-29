import com.hamoid.*;
VideoExport videoExport;

color white = #f1f1f1;
color red = #FF0000;

void setup() {  
  textMode(SHAPE);
  size(586, 810, P2D);
  pixelDensity(2);
  
  videoExport = new VideoExport(this, "video.mp4");
  videoExport.setFrameRate(30);  
  videoExport.startMovie();
}

void draw() {
  background(red);   
  
  // Your code here!
  
  videoExport.saveFrame();
}
