import processing.sound.*;                    //at the top of your sketch
SoundFile sound;

void setup(){
  sound = new SoundFile(this, "ding.wav");
  size(900,900);
  
  PImage pizzaBox = loadImage("pizzaBox.jpg");    //in setup method
  pizzaBox.resize(900,900);
  background(pizzaBox);                    //in setup method
  
  fill(221,163,58);
  ellipse(450,450,750,750);
  fill(255,0,0);
  ellipse(450,450,700,700);
  fill(238,238,34);
  ellipse(450,450,650,650);
}
void draw(){

  PImage mushroom = loadImage("mushroom.gif")  ;  
  PImage olive = loadImage("greenolive.gif")  ; 
  if(mouseButton ==LEFT){
    image(mushroom, mouseX,mouseY);
    sound.play();
  }
  if(mouseButton ==RIGHT){
    image(olive, mouseX,mouseY);
    sound.play();
  }
}