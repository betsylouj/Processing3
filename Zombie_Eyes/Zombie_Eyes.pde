void setup(){
  size(800,600);
  PImage face = loadImage("face.jpg");
  face.resize(800,600);
  image(face, 0, 0);
}
void draw(){
  fill(mouseX/2.5,mouseY/2.2,(mouseX  + mouseY)/5);
  ellipse(180, 200, 200,140);
  ellipse(620, 200, 200,140);
  fill(0,0,0);
 ellipse(110+ mouseX*140/800, 160+mouseY*80/600, 20,20);
 ellipse(550+ mouseX*140/800, 160+mouseY*80/600, 20,20);
}