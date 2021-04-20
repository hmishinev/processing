class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topSpeed = 10;
  
  Mover() {
    location = new PVector(width / 2, height / 2);
    velocity = new PVector(2, 4);
    acceleration = new PVector(-0.01, 0,10);
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    location.add(velocity);
  }
  
  void display() {
     
  }
  
  void applyForce(PVector force) {
    acceleration = force; 
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
 
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}

Mover mover = new Mover();

void setup() {
  size(640,360);
  background(255);
}

void draw() {
  background(255);
  mover.applyForce(wind);
  mover.applyForce(gravity);
  mover.update();
  mover.display();
}
