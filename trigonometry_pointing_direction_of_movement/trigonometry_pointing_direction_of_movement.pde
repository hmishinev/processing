class Mover {
  PVector location = new PVector(width / 2, height / 2);
  PVector velocity = new PVector(0, 0);
  PVector acceleration;
  float topSpeed = 4;

  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector direction = PVector.sub(mouse, location);

    direction.normalize();
    direction.mult(0.5);

    acceleration = direction;

    velocity.add(acceleration);
    velocity.limit(topSpeed);
    location.add(velocity);
  }

  void display() {
    //float angle = atan(velocity.y / velocity.x);
    float angle = velocity.heading();

    stroke(0);
    fill(175);

    pushMatrix();
    rectMode(CENTER);
    translate(location.x, location.y);
    rotate(angle);
    rect(0, 0, 30, 10);
    popMatrix();
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

Mover mover;

void setup() {
  size(640, 360);
  background(255);
  mover = new Mover();
}

void draw() {
  background(255);
  mover.update();
  mover.checkEdges();
  mover.display();
}
