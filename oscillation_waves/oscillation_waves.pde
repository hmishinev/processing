

float angle = 0;
float angleVel = 0.2;
float amplitude = 100;

void setup() {
  size(640,360);
}

void display() {
  for (int x = 0; x <= width; x += 24) {
    float y = amplitude*sin(angle);
    
    ellipse(x,y+height/2,48,48);
   
    angle += angleVel;
  }
}
