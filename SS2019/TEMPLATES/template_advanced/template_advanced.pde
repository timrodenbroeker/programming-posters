color white = #f1f1f1;
color red = #EC1A1A;

String Vorname ="Marie";
String Nachname ="Mustermann";

void setup() {  
  size(586, 810, P2D);
  pixelDensity(2);
  posterSetup();
  animation();
}

void draw() {
  background(red);   

  /////////////////////
  // Das Poster-Design 
  /////////////////////
  

  textFont(robotoRegular, 400);
  textAlign(CENTER, TOP);
  text("hi", width/2, 130); 


  /////////////////////
  // Das Branding 
  /////////////////////

  branding();
  videoExport.saveFrame();
}
