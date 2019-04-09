## Basics

Dies sind die allerwichtigsten Funktionen für Processing.

### setup()

Im Grunde ist die setup()-Funktion ein Bereich, in dem wir grundlegende Einstellugen für unseren Sketch definieren. Dazu gehört zum Beispiel die Größe des Sketches.

```
void setup(){
    size(586,810);
}
```

### draw()

Die draw()-Funktion wird in der Grundeinstellung 30 Mal die Sekunde ausgeführt. Dort schreiben wir den Code hinein, der die eigentliche Animation beschreibt.

```
void draw(){
    // Hier steht der Animationscode
}
```

---

### background()

Hier in diesem Beispiel wird der Hintergrund jeden Frame mit unserem Rot "übermalt". Das ist wichtig, denn nur so entsteht der Eindruck einer Animation.

```
void draw(){
    background(#FF0000);
}
```

---

## Geometrie 1

### rect() & ellipse()

Okay, beginnen wir mit dem Zeichnen geometrischer Formen. Die einfachste Möglichkeit hierzu bieten uns die beiden Funktionen `rect()` und `ellipse()`. Beide Funktionen nehmen 4 Parameter entgegen:

1. Position x
2. Position y
3. Breite
4. Höhe

Beispiele:

```
rect(200,100,200,100);
```

oder

```
ellipse(width/2,height/2,40,40);
```

### stroke() and fill()

Um die Füllfarbe und die Kontur der geometrischen Formen zu kontrollieren, stellt Processing einige Funktionen bereit. Diese gelten immer für den Code, der unten ihnen steht.

Mit `fill()` bestimmen wir die Füllfarbe unserer Formen:
Beispiel: `fill(#00ffff)`

Die Füllung können wir mit `noFill();` auch wieder deaktivieren.

Das gilt auch für die Befehle `stroke()` und `noStroke()`. Diese beeinflussen die Darstellung der Konturen.

Mit `strokeWeight()` können wir die Konturstärke festlegen.

### line() und triangle()

Es gibt noch viele weitere Funktionen in Processing, mit denen sich geometrische Formen zeichnen lassen: `line()` für Linien und `triangle()` für Dreiecke. Hier lohnt sich ein Blick in die Referenz.

---

## Interaktion

### Maus

Die Maus, bzw. das Touchpad eignet sich ideal, um einfache Interaktionen zu programmieren. Mit Processing haben wir auf alle Parameter der Maus Zugriff: Von der Position über das Scrollwheel bis hin zu den Click-Events.

### Keyboard

Auch die Tastatur unserer Computer kann vielseitig für die Interaktion mit unseren Processing-Sketches genutzt werden. Im Grunde können wir jeder Taste eine eigene Funktion zuordnen.

---

## Variablen

### Variablentypen float und int

Variablen ermöglichen uns das Speichern von Werten. Auf diese Werte können wir dann im Laufe unseres Programmes zugreifen. Sie sind eine der wichtigsten Eigenschaften von Programmiersprachen im Allgemeinen. In diesem kurzen Abschnitt möchte ich kurz zwei Variablentypen vorstellen.

Der so genannte Integer, `int` abgekürzt, ist eine Ganzzahl ohne Kommastelle.

Eine "floating-point-number", kurz `float`, speichert eine Zahl mit beliebig vielen Nachkommastellen.

Beispiele:

- `int Alter = 34`;
- `float preis = 3.50`;

---

## Koordinatensysteme

Alles was wir in Processing zeichnen, platzieren wir in einem, meist zweidimensionalen Koordinatensystem. In Processing nennt man es "Matrix". Standardmäßig beginnt die Matrix oben links in der Ecke: Oben links entspricht also den Werten `x = 0` und `y = 0`. Häufig wollen wir jedoch genau das ändern und unsere Objekte an einer beliebigen anderen Position in unserem Sketch darstellen. Um genau dies zu vereinfachen, können wir eine neue Matrix zu erschaffen, die nur für einen bestimmten Bereich unseres Codes gilt. Mit den Funktionen `pushMatrix()` und `popMatrix()` definieren wir so einen Bereich.
