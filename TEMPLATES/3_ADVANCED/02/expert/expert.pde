String Vorname ="Tim";
String Nachname ="Rodenbröker";

boolean mouse;

void setup() {  

  // mouse = true;

  posterSetup();

}

void draw() {    
  background(#000000);

  composition(); 
  image(p, width/2, height/2);
  
  branding();
  
  image(branding, width/2, height/2);
  
  if (mouse) {
    drawMouse();
  }

  if (frameCount > 1) {
    videoExport.saveFrame();
    videoExportCropped.saveFrame();
  }
}
