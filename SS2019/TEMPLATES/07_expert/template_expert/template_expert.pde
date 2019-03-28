// PROGRAMMING POSTERS 2019
// EXPERT PROCESSING TEMPLATE

// Ihre Daten

String Vorname ="Tim";
String Nachname ="Rodenbröker";

void setup() {  

  // Postersetup (framework.de) ausführen
  posterSetup();

  // Animationssequenz starten
  seq.beginSequence();

  ////////////////////////////////////////////////////////////

  // Animation: Step 1

  seq.beginStep();
  seq.add(Ani.to(this, 2, "a", 5));
  seq.endStep();


  // Animation: Step 2

  seq.beginStep();
  seq.add(Ani.to(this, 2, "a", 5));
  seq.endStep();


  ////////////////////////////////////////////////////////////

  // Animationssequenz beenden
  seq.endSequence();

  // Sequenz starten
  seq.start();
}

void draw() {
  background(#ffffff);
  poster.beginDraw();
  poster.background(RED);   

  ////////////////////////////////////////////////////////////

  poster.textFont(robotoRegular, 400);
  poster.textAlign(CENTER, TOP);
  poster.text("hi", POSTER_W/2, 130); 



  //////////////////////////////////////////////////////////// 

  // branding (framework.de) ausführen
  branding();
  
  poster.endDraw();
  
  image(poster,width/2,height/2);
  videoExport.saveFrame();
}
