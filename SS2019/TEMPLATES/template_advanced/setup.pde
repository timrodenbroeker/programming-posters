// Achtung: In dieser Datei muss nichts geändert werden

import com.hamoid.*;
VideoExport videoExport;

import de.looksgood.ani.*;
AniSequence seq;

PFont robotoRegular;

void posterSetup(){
  textMode(SHAPE);
  robotoRegular = createFont("Roboto-Regular.ttf", 400);
  textFont(robotoRegular, 400);
  textAlign(CENTER, TOP);
  videoExport = new VideoExport(this, "video.mp4");
  videoExport.setFrameRate(30);  
  videoExport.startMovie();  
}
