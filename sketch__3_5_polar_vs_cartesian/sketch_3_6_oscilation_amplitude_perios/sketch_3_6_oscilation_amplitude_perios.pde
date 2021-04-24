void setup() {
  size(640,360);
  background(255);
}

void draw() {
 background(255);
 float amplitude = 240;
 float period = 240;
 
 float x = amplitude * cos(TWO_PI * frameCount / period);
 
 stroke(0);
 fill(175);
 translate(width / 2, height / 2);
 line(0, 0, x, 0);
 ellipse(x, 0, 20, 20);
}
