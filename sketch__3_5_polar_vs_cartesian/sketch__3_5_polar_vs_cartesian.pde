/* Sphere rotating in circle
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
*/

/* Spiral 
float r = 150;
float theta = 0;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  stroke(255);
  noFill();

  float x = r * cos(theta);
  float y = r * sin(theta);

  translate(width / 2, height / 2);
  stroke(252, 238, 33);
  fill(252, 238, 33);
  ellipse(x, y, 30, 30);

  theta += 0.01;
  r -= 0.06;
}

*/

/* Spiral random path
float r = 150;
float theta = 0;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  stroke(255);
  noFill();

  float x = r * cos(theta);
  float y = r * sin(theta);

  translate(width / 2, height / 2);
  stroke(252, 238, 33);
  fill(252, 238, 33);
  ellipse(x, y, 10, 10);

  theta += 0.01;
  r -= random(-1.5, 1.5);
}
*/

/* Spiral random path
float r = 150;
float theta = 0;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  stroke(255);
  noFill();

  float x = r * cos(theta);
  float y = r * sin(theta);

  translate(width / 2, height / 2);
  stroke(252, 238, 33);
  fill(252, 238, 33);
  ellipse(x, y, 10, 10);

  theta += 0.01;
  r -= random(-1.5, 1.5);
}
*/

/* Spiral random path */
float r = 150;
float theta = 0;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  background(0);
  stroke(255);
  noFill();

  translate(width / 2, height / 2);
  stroke(252, 238, 33);
  
  float increment = map(mouseX, 0, width, 0.01, PI);

  beginShape();
    for(float angle = 0; angle < TWO_PI; angle += increment) {
      float x = r * cos(angle);
      float y = r * sin(angle);
      vertex(x, y);
    }
  endShape(CLOSE);
}
