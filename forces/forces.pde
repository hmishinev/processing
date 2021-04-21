class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topSpeed = 10;
  float mass;
  
  Mover(float mass) {
    location = new PVector(width / 2, height / 2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    this.mass = mass;
  }

  void applyForce(PVector force) {
    acceleration.add(PVector.div(force, mass));
  }

  void update() {
    velocity.add(acceleration);
    //velocity.limit(topSpeed);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
 
    if (location.y > height) {
      location.y = height;
      velocity.y *= -1;
    } else if (location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, mass * 10, mass * 10);
  }
}

Mover[] movers = new Mover[1];
PVector wind = new PVector(0.2, 0);
PVector gravity = new PVector(0, 0.9);

void setup() {
  size(640,360);
  background(255);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1, 10));
  }
}

void draw() {
  background(255);
  for (int i = 0; i < movers.length; i++) {
    if(mousePressed) {
      movers[i].applyForce(wind);
    }

    movers[i].checkEdges();
    movers[i].applyForce(gravity);
    movers[i].update();
    movers[i].display();
  }
}
