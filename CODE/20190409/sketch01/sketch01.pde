color red = #FF0000;

// Wort anwählen und CMD+Shift+F = Suche im Web (Referenz)

void setup() {
  size(586, 810);
  rectMode(CENTER);
} 

// Das hier wird mit jedem Frame neu gerendered
// Reihenfolge ist wichtig und bestimmt die Abfolge der Renderings
void draw() {
  // Kommentar
  /* Längerer Kommentar */
  /* noStroke(); */
  background(#FF0000);
  noFill();
  stroke(#f1f1f1); /*Outline*/
  strokeWeight(3);

  pushMatrix(); /* neues Koordinatensystem öffnen */
  translate(width/2, height/2); /*Verschieben des Systems*/
  rotate(mouseX*0.02);
  rect(0, 0, 200, 200);
  fill(#f1f1f1);
  noStroke();

  ellipse(0, 0, 100, 100);

  popMatrix(); /* neues Koordinatensystem schließen */

  // nächste Zeile öffnet Loop = Funktion wird X mal durchgeführt ( i < 100 = Anz. Ausführung
  //  for (int i = 0; i < 10; i++) { 
  //    println(i);
  //    /* float zufaelligeZahl = random(-200, 200); /* Zahl mit Nachkommastelle ist FLOAT */
  //    ellipse(width/2, height/2, 200, 200);
  //  }
  //saveFrame("tim######.jpg");
}
