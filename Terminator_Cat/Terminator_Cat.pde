
import processing.sound.*;
SoundFile noise;

PImage catPic;
int x = 315;
int y = 240;
int accel = 1;

void setup() {
  
  noise  = new SoundFile(this,"pewpew.wav");
  size(800  , 600);
  catPic = loadImage("cat-02.jpg");
  catPic.resize(800,600);
  background(catPic);  //can use image(catPic,0,0);
}

void draw() {
  noStroke();
  fill(0,255,0);
  ellipse(x,y,60,60);
  ellipse(x+155,y+20,60,60);
  if(x>800 || y>600){
    background(catPic);
    x = 315;
    y = 240;
    accel = 1;
  }
  
}

void keyPressed() {
  x+=3*accel;
  y+=3*accel;
  accel++;
  noise.play();
}