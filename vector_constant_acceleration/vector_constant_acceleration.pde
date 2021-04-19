class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topSpeed = 10;
  
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
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
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
