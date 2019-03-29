String Vorname ="Marie";
String Nachname ="Mustermann";

void branding() {
  textFont(robotoRegular, 11);
  textAlign(LEFT, TOP);
  pushMatrix();
  translate(15, 770);
  text(Vorname, 0, 0);
  text(Nachname, 0, 12);
  popMatrix();
  pushMatrix();
  translate(150, 770);
  text("Programming", 0, 0);
  text("Posters", 0, 12);
  popMatrix();
  textAlign(RIGHT, TOP);
  pushMatrix();
  translate(width-15, 770);
  text("2019", 0, 12);
  popMatrix();
}
