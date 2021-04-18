void setup() {
  size(640,360);
}

void draw() {
  background(255);
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  System.out.println("center: " + center.x + " " + center.y);
  System.out.println("mouse: " + mouse.x + " " + mouse.y);
  
  mouse.sub(center);
  
  translate(width/2, height/2);
  line(0, 0, mouse.x, mouse.y);
}
