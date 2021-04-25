/* Pendelum
 void setup() {
 size(640,360);
 background(255);
 }
 
 void draw() {
 background(255);
 float amplitude = 240;
 float period = 240;
 
 float x = amplitude * sin(TWO_PI * frameCount / period);
 
 stroke(0);
 fill(175);
 translate(width / 2, height / 2);
 line(0, 0, x, 0);
 ellipse(x, 0, 20, 20);
 }
 */

/* Pulusing triangle
 float angle = 0;
 
 void setup() {
 size(640,360);
 background(0);
 }
 
 void draw() {
 background(0);
 translate(width / 2, height / 2);
 fill(252, 238, 33);
 
 float mappedAngle = map(sin(angle), -1, 1, 0, 150);
 float r = mappedAngle;
 circle(0, 0, r * 2);
 
 angle += 0.02;
 }
 */

/* Pulusing triangle 1 time per second
 float angle = 0;
 
 void setup() {
 size(640,360);
 background(0);
 }
 
 void draw() {
 background(0);
 translate(width / 2, height / 2);
 fill(252, 238, 33);
 
 float mappedAngle = map(sin(angle), -1, 1, 0, 150);
 float r = mappedAngle;
 circle(0, 0, r * 2);
 
 float increment = TWO_PI / 60;
 angle += increment;
 
 System.out.println(frameRate);
 }
 */

/* yoyo
float angle = 0;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  fill(252, 238, 33);

  float y = map(sin(angle), -1, 1, -200, 200);
  
  stroke(252, 238, 33);
  line(0, 0, 0, y);
  circle(0, y, 20);

  float increment = TWO_PI / 60;
  angle += increment;
}
*/

/* Oscilation with angular velocity */

class Oscillator {
  PVector angle;
  PVector velocity;
  PVector amplitude;
  
  Oscillator() {
    angle = new PVector();
    velocity = new PVector(random(-0.05, 0.05), random(-0.05, 0.05));
    amplitude = new PVector(random(width / 2), random(height / 2));
  }
  
  void oscillate() {
    angle.add(velocity);
  }
  
  void display() {
    float x = sin(angle.x) * amplitude.x;
    float y = sin(angle.y) * amplitude.y;
    
    pushMatrix();
    translate(width / 2, height / 2);
    stroke(0);
    fill(175);
    line(0, 0, x, y);
    ellipse(x, y, 16, 16);
    popMatrix();
  }
}

Oscillator[]  oscillators = new Oscillator[10];
 //<>//
void setup() {
  size(640, 360);
  background(0);
  
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i] = new Oscillator();
  }
}

void draw() {
  background(255);
 
  for (int i = 0; i < oscillators.length; i++) { 
    oscillators[i].oscillate();
    oscillators[i].display();
  }
}
