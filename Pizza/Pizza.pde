import processing.sound.*;                    //at the top of your sketch
SoundFile sound;

void setup(){
  sound = new SoundFile(this, "ding.wav");
  size(800,800);
  fill(221,163,58);
  ellipse(400,400,750,750);
  fill(255,0,0);
  ellipse(400,400,700,700);
  fill(238,238,34);
  ellipse(400,400,650,650);
}
void draw(){

  PImage mushroom = loadImage("mushroom.gif")  ;  
  if(mousePressed){
    image(mushroom, mouseX,mouseY);
    sound.play();
  }
}