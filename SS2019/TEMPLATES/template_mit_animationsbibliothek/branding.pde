

void branding(){

  textFont(robotoRegular,16);
  textAlign(LEFT,TOP);
  pushMatrix();
  translate(15,762);
  text("Marie",0,0);
  text("Mustermann",0,16);
  popMatrix();
  
  pushMatrix();
  translate(150,762);
  text("Programming",0,0);
  text("Posters",0,16);
  popMatrix();
  
  textAlign(RIGHT,TOP);
    pushMatrix();
  translate(width-15,762);
  text("2019",0,16);
  popMatrix();
  
}
