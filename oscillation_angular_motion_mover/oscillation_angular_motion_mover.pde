class Mover {
  float mass;
  float angle = 0;
  float angularVelocity = 0;
  float angularAcceleration = 0.001;
  
  Mover(float mass) {
    this.mass = mass;
  }
  
  void update() {
    angularAcceleration = map(mouseX, 0, width, -0.01, 0.01);
    angularVelocity += angularAcceleration;
    angle += angularVelocity;
  }
  
  void display() {
    stroke(0);
    fill(175, 200);
    rectMode(CENTER);
    pushMatrix(); // push and popMatrix are needed so that the rotation of this shape doesn't affect the rest of our world.
    translate(width / 2, height / 2); // set the origin at the shape's location
    rotate(angle);
    rect(0, 0, mass * 16, mass * 16);
    popMatrix();
  }
}

Mover mover = new Mover(10);

void setup() {
  size(640,360);
  background(255);
}

void draw() {
  background(255);
  mover.update();
  mover.display();
}
