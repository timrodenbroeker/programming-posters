// PROGRAMMING POSTERS 
// framework
// do not change this file!

// Farbdefinitionen
color WHITE = #f1f1f1;
color RED = #EC1A1A;

// Maße
int POSTER_W = 586;
int POSTER_H = 810;

// Posterebene
PGraphics poster;
PGraphics branding;

// VideoExport-Library importieren
import com.hamoid.*;
VideoExport videoExport;

// Ani-Library importieren
import de.looksgood.ani.*;
AniSequence seq;

// Schrift für das Branding laden
PFont robotoRegular;

void settings() {
  
  // Größe und Rendermodus des Posters festlegen
  size(900, 900, P2D);
  
  // Auflösung verdoppeln
  pixelDensity(2);
}

void posterSetup() {
  imageMode(CENTER);
  poster = createGraphics(POSTER_W,POSTER_H,P2D);
  branding = createGraphics(POSTER_W,POSTER_H,P2D);
  // Schärfere Schriftkonturen
  textMode(SHAPE);

  // Schrift initialisieren
  robotoRegular = createFont("Roboto-Regular.ttf", 400);

  // Schrift definieren
  textFont(robotoRegular, 400);

  // Typo zentrieren
  textAlign(CENTER, TOP);

  // Definition des Namens der Videodatei
  videoExport = new VideoExport(this, "video.mp4");

  // Definition der Videoframerate
  videoExport.setFrameRate(30);  

  // Videoaufnahme starten
  videoExport.startMovie();  

  // Ani-Bibliothek initialisieren
  Ani.init(this);

  // Neue Sequenz starten
  seq = new AniSequence(this);
}


// BRANDING

void branding() {

  // Schrift definieren
  poster.textFont(robotoRegular, 16);

  // Textausrichtung festlegen
  poster.textAlign(LEFT, TOP);

  // Neue Matrix erzeugen
  poster.pushMatrix();

  // Inhalt verschieben
  poster.translate(15, 762);

  // Text
  poster.text(Vorname, 0, 0);
  poster.text(Nachname, 0, 16);

  // Matrix schliessen
  poster.popMatrix();

  // Neue Matrix erzeugen
  poster.pushMatrix();

  // Inhalt verschieben
  poster.translate(150, 762);

  // Text
  poster.text("Programming", 0, 0);
  poster.text("Posters", 0, 16);

  // Matrix schliessen
  poster.popMatrix();

  // Textausrichtung festlegen
  poster.textAlign(RIGHT, TOP);

  // Neue Matrix erzeugen
  poster.pushMatrix();

  // Inhalt verschieben
  poster.translate(POSTER_W-15, 762);

  // Text
  poster.text("2019", 0, 16);

  // Matrix schliessen
  poster.popMatrix();
}
