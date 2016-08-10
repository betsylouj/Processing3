import processing.sound.*;                    //at the top of your sketch
SoundFile sound;
SoundFile sound1;

PImage donkey;    //at top of sketch    
PImage tail;    //as the very top of your sketch
int x;
int y;
boolean clicked = false;
int xWin = 185;
int yWin = 208;


void setup(){
  size(800,600);
  sound = new SoundFile(this, "donkey.wav");
  sound1 = new SoundFile(this, "happy.wav");
  donkey = loadImage("donkey.jpg");   
  donkey.resize(800,600);
  
  tail = loadImage("tail.png");    //in the setup method
  tail.resize(70,0);
}

void draw(){
  if (mouseX<=50&&mouseY<=50){
    background(donkey); 
  }
  else{
    background(0,255,0);
  }
  fill(255,255,255);
  rect(0,0,50,50);
  //fill(255,0,0);
  //rect(175,200,20,20);
  textSize(24);
  text("Try to pin the tail on the donkey",100,20);
  textSize(16);
  text("Left click to pin, right click to remove and play again",100,40);
  text("Move to the top left white square to see the donkey",100,55);
  
  if(mouseButton == LEFT){
    x=mouseX;
    y=mouseY;
    print("x is " + x + " y is " + y);
    if(x>(xWin - 10) && x<(xWin + 10) &&y>(yWin-10)&&y<(yWin+10)){
      clicked = true;
      sound1.play();
    }
    else {
      clicked = false;
      sound.play();
    }
  }
  if(mouseButton == RIGHT){
    clicked = false;
  }
  if(clicked==true){
    image(tail, x-50, y);
    fill(255,0,0);
    textSize(24);
    text("You Win!!",300,200);
  }
  
}