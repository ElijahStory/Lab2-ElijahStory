//  Lab 2B - NMD 211
//  Elijah Story
//  9-30-2020
    
    
//  Object arrays
//  - create basic object
//  - make 5+ objects with an array
//  - motion

float[] speed = {0.2,0.4,0.6,0.8,1};    //list of speed for each ball
int[] radius = {10,15,20,25,30};        //list of radii for each ball
Ball[] ballArray = new Ball[speed.length];  //list to hold all ball objects

void setup(){
    size(800,800);
    noStroke();

    //populates the array of balls based on info from other arrays
    for (int i = 0; i < speed.length; i++) {
        ballArray[i] = new Ball(speed[i],133*i+133,0,radius[i]);
    }
}

//creates a ball object based on info given and a random color
class Ball{
    float speed, x, y, r;
    color c;
    Ball(float s, int x, int y, int r){ //sets up the starting variables
        speed = s;  //speed
        this.x = x; //balls x
        this.y = y; //balls y
        this.r = r;  //balls radius
        c = color(random(255),random(255),random(255)); //balls color
    }

    void run(){     //calls all other functions needed for this object
        display();
        move();
    }

    void display(){ //draws the ball based on the x y and radius
        fill(c);    //make it the color saved for this ball
        ellipse(x, y, r, r);
    }

    void move(){    //Make the balls "fall"
        y += speed;
    }
}

void draw(){
    background(200);

    //runs through each object in ballArray and calls the run() function on it
    for (int i = 0; i < ballArray.length; i++) {
        ballArray[i].run();
    }
}
