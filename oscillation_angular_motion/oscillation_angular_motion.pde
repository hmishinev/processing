float angle = 0;
float velocity = 0;
float acceleration = 0.10;

void setup() {
  size(640,360);
  background(255);
}

void draw() {
  background(255);
  noStroke();
  fill(240, 99, 164);
  rectMode(CENTER);
  translate(width / 2, height / 2);
  rotate(radians(angle));
  line(-50, 0, 50, 0);
  ellipse(50, 0, 8, 8);
  ellipse(-50, 0, 8, 8);
  
  if (velocity < 8) {
    velocity += acceleration;
  }
  angle += velocity;
}
