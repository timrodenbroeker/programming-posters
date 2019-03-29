void animation(){
  
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
