String Vorname ="Tim";
String Nachname ="Rodenbröker";

void setup() {  
  posterSetup();
  seq.beginSequence();

  seq.beginStep();
  seq.add(Ani.to(this, 2, "a", 5));
  seq.endStep();

  seq.beginStep();
  seq.add(Ani.to(this, 2, "a", 5));
  seq.endStep();

  seq.endSequence();
  seq.start();
}

void draw() {
  background(#ffffff);
  poster.beginDraw();
  poster.background(RED);   
  
  poster.textFont(robotoRegular, 400);
  poster.textAlign(CENTER, TOP);
  poster.text("hi", POSTER_W/2, 130); 

  branding();
  
  poster.endDraw();
  
  image(poster,width/2,height/2);
  videoExport.saveFrame();
}
