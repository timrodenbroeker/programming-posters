// Hier können Sie die Animation steuern
// Mehr dazu unter http://www.looksgood.de/libraries/Ani/

float a = 0;

void animation() {
  Ani.init(this);
  seq = new AniSequence(this);
  seq.beginSequence();

  /////////////////////
  // Step 1
  /////////////////////

  seq.beginStep();
  seq.add(Ani.to(this, 2, "a", 5));
  seq.endStep();

  /////////////////////
  // Step 2
  /////////////////////

  seq.beginStep();
  seq.add(Ani.to(this, 2, "a", 5));
  seq.endStep();

  seq.endSequence();

  seq.start();
}
