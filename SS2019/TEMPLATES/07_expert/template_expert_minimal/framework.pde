color WHITE = #f1f1f1;
color RED = #EC1A1A;

int POSTER_W = 586;
int POSTER_H = 810;

PGraphics poster;
PGraphics branding;

import com.hamoid.*;
VideoExport videoExport;
import de.looksgood.ani.*;
AniSequence seq;


void settings() {
  size(900, 900, P2D);
  pixelDensity(2);
}

void posterSetup() {
  imageMode(CENTER);
  poster = createGraphics(POSTER_W,POSTER_H,P2D);
  branding = createGraphics(POSTER_W,POSTER_H,P2D);

  textMode(SHAPE);

  robotoRegular = createFont("Roboto-Regular.ttf", 400);

  textFont(robotoRegular, 400);

  textAlign(CENTER, TOP);

  videoExport = new VideoExport(this, "video.mp4");
  videoExport.setFrameRate(30);  
  videoExport.startMovie();  
  
  Ani.init(this);
  seq = new AniSequence(this);
}

PFont robotoRegular;

void branding() {
  poster.textFont(robotoRegular, 16);
  poster.textAlign(LEFT, TOP);
  poster.pushMatrix();
  poster.translate(15, 762);
  poster.text(Vorname, 0, 0);
  poster.text(Nachname, 0, 16);
  poster.popMatrix();
  poster.pushMatrix();
  poster.translate(150, 762);
  poster.text("Programming", 0, 0);
  poster.text("Posters", 0, 16);
  poster.popMatrix();
  poster.textAlign(RIGHT, TOP);
  poster.pushMatrix();
  poster.translate(POSTER_W-15, 762);
  poster.text("2019", 0, 16);
  poster.popMatrix();
}
