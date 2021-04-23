float r = 80;
float theta = 0;

void setup() {
  size(640, 360);
  background(255);
}

void draw() {
  background(255);
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  ellipse(x, y, 1, 1);
  
  noStroke();
  fill(0);
  ellipse(x + width / 2, y + height / 2, 16, 16);
  
  theta += 0.01;
}
