class Puck {
  float x = width / 2;
  float y = height / 2;
  float xSpeed = 3;
  float ySpeed = 1;
  
  void update() {
    x = x + xSpeed;
    y = y + ySpeed;
  }
  
  void show() {
    fill(255);
    ellipse(x, y, 24, 24); 
  };
}
