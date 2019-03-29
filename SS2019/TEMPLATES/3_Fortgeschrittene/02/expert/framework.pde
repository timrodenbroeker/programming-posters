import com.hamoid.*;
VideoExport videoExport;
VideoExport videoExportCropped;

import de.looksgood.ani.*;
AniSequence seq;

color WHITE = #f1f1f1;
color RED = #FF0000;

int POSTER_W = 586;
int POSTER_H = 810;

PGraphics p;
PGraphics branding;

final String sketchName = getClass().getName();

void settings() {
  size(900, 900, P2D);
  pixelDensity(2);
}

void posterSetup() {

  imageMode(CENTER);
  p = createGraphics(POSTER_W, POSTER_H, P2D);
  branding = createGraphics(POSTER_W, POSTER_H, P2D);

  textMode(SHAPE);

  robotoRegular = createFont("Roboto-Regular.ttf", 400);

  textFont(robotoRegular, 400);

  textAlign(CENTER, TOP);

  videoExport = new VideoExport(this, sketchName+".mp4");
  videoExport.setFrameRate(30);  
  videoExport.startMovie();
  
  videoExportCropped = new VideoExport(this, sketchName+"cropped.mp4", p);
  videoExportCropped.setFrameRate(30);  
  videoExportCropped.startMovie();  

  Ani.init(this);
  seq = new AniSequence(this);
}

PFont robotoRegular;

void branding() {
  p.textFont(robotoRegular, 11);
  p.textAlign(LEFT, TOP);
  p.pushMatrix();
  p.translate(15, 770);
  p.text(Vorname, 0, 0);
  p.text(Nachname, 0, 12);
  p.popMatrix();
  p.pushMatrix();
  p.translate(150, 770);
  p.text("Programming", 0, 0);
  p.text("Posters", 0, 12);
  p.popMatrix();
  p.textAlign(RIGHT, TOP);
  p.pushMatrix();
  p.translate(POSTER_W-15, 770);
  p.text("2019", 0, 12);
  p.popMatrix();
}


PShape mouseCursor;

void drawMouse() {
  if (frameCount == 1){
      noCursor();
      mouseCursor = loadShape("cursor.svg");
  }
  pushMatrix();
  translate(0, 0);
  shape(mouseCursor, mouseX, mouseY);
  popMatrix();
}
