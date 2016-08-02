// 1. Find a really hard Where’s Waldo puzzle, save it, and drop it onto this sketch.
PImage waldo;   
void setup() {
    waldo = loadImage("waldo.jpg"); // 2. Change this to match your file name.
    size(1000,800);
    waldo.resize(1000,800);
    image(waldo, 0, 0);
}

void draw() {
    // 3. Use this print statement to find out the coordinates of Waldo
    // println("X: " + mouseX + " Y: " + mouseY); 
    println("X: " + mouseX + " Y: " + mouseY);//413-428,131,168
    // 4. If the mouse is on Waldo, print “Waldo found!”
    if(mouseX>412 && mouseX < 429 && mouseY > 130 && mouseY <169 && mousePressed){
      textSize(32);
      fill(0,0,0);
      rect(400,70,200,30);
      fill(255,0,0);
      text("Waldo found", 400,100);
    }
    else{
      image(waldo, 0, 0);
    }
}