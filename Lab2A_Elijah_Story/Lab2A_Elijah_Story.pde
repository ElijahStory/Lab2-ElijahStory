//Lab2A
//Elijah Story
//September 18, 2020
//NMD211

//Goals:
//  -Creating an object
//  -Scale an object

// Issues:

//File contains:
//  -Minimum of 3 objects
//  -an example of a scaled object


triShape tri1 = new triShape(250,250);
triShape tri2 = new triShape(500,500);
  
void setup(){
  size(800,800);
  noStroke();  //removes outlines
}

class triShape{
  float x, y;
  triShape(float startX, float startY){
    x = startX;
    y = startY;
  }
  
  void display(){
    fill(255, 170, 10, 100);
    triangle(x-150,y-150,x-150,y+50,y+50,y+50);
  
    fill(170, 255, 10, 100);
    triangle(x-50,y-50,x-50,y-150,x-150,y-150);
  }
  
}

void draw(){
  background(170);
  tri1.display();
  tri2.display();
  fill(0);
  circle(250,250,10);
}
