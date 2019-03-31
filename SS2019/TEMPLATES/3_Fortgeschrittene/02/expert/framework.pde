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

  robotoRegular = createFont("../DATA/Roboto-Regular.ttf", 400);

  textFont(robotoRegular, 400);

  textAlign(CENTER, TOP);

  videoExport = new VideoExport(this, "../"+sketchName+".mp4");
  videoExport.setFrameRate(30);  
  videoExport.startMovie();
  
  videoExportCropped = new VideoExport(this, sketchName+"cropped.mp4", p);
  videoExportCropped.setFrameRate(30);  
  videoExportCropped.startMovie();  

}

PFont robotoRegular;

void branding() {
  branding.beginDraw();
  branding.fill(RED);
  branding.noStroke();
  branding.textFont(robotoRegular, 11);
  branding.textAlign(LEFT, TOP);
  branding.textMode(SHAPE);
  branding.pushMatrix();
  branding.translate(15, 770);
  branding.text(Vorname, 0, 0);
  branding.text(Nachname, 0, 12);
  branding.popMatrix();
  branding.pushMatrix();
  branding.translate(150, 770);
  branding.text("Programming", 0, 0);
  branding.text("Posters", 0, 12);
  branding.popMatrix();
  branding.textAlign(RIGHT, TOP);
  branding.pushMatrix();
  branding.translate(POSTER_W-15, 770);
  branding.text("2019", 0, 12);
  branding.popMatrix();
  branding.endDraw();
}

PShape mouseCursor;

void drawMouse() {
  if (frameCount == 1){
      noCursor();
      mouseCursor = loadShape("../DATA/cursor.svg");
  }
  pushMatrix();
  translate(0, 0);
  shape(mouseCursor, mouseX, mouseY);
  popMatrix();
}
