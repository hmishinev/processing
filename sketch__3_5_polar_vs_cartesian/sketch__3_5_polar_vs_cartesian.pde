float r = 150;
float theta = 0;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(4);
  noFill();
  translate(width / 2, height / 2);
  circle(0, 0, r * 2);

  float x = r * cos(theta);
  float y = r * sin(theta);
  
  stroke(255);
  fill(255);
  ellipse(x, y, 30, 30);
  
  theta += 0.01;
}
