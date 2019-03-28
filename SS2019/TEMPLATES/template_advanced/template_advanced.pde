// PROGRAMMING POSTERS 2019
// ADVANCED PROCESSING TEMPLATE

// Ihre Daten

String Vorname ="Marie";
String Nachname ="Mustermann";

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

  background(red);   

  ////////////////////////////////////////////////////////////

  textFont(robotoRegular, 400);
  textAlign(CENTER, TOP);
  text("hi", width/2, 130); 



  //////////////////////////////////////////////////////////// 

  // branding (framework.de) ausführen
  branding();
  videoExport.saveFrame();
}
