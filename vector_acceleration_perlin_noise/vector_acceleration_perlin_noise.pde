//float t = 0;

//void setup() {
//  size(600, 400);
//  frameRate(60);
//}

//void draw() {
//  background(0);
//  fill(255);
  
//  float x = noise(t);
//  ellipse(x, height/2, 40, 40);
//}

class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topSpeed = 10;
  float t = 0;
  
  Mover() {
    location = new PVector(width / 2, height / 2);
    velocity = new PVector(2, 4);
    acceleration = new PVector(-0.010, 0.10);    
  }
  
  void update() {
    acceleration = PVector.random2D();
    acceleration.mult(random(2));
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    location.add(velocity);
    t = t + 0.01;
  }
  
  void display() {
    stroke(0);
    fill(175);
    float x = noise(t);
    float y = noise(t);
    y = map(y, 0, 1, 0, width);
    ellipse(location.x, y, 16, 16);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if(location.x < 0) {
      location.x = width;
    }
      
    if (location.y > width) {
      location.y = 0;
    } else if(location.y < 0) {
      location.y = width;
    }
  }
}

Mover mover;

void setup() {
  size(640, 360);
  mover = new Mover();
}

void draw() {
  background(255);
  
  mover.update();
  mover.checkEdges();
  mover.display();
}
