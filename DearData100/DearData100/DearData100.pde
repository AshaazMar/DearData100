void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  drawTarget(100, 100, 80);
  drawTarget(300, 200, 150);
  drawTarget(200, 320, 100);
}

void drawTarget(int x, int y, int size) {
  
  fill(0);
  ellipse(x, y, size, size);
  
  fill(255);
  ellipse(x, y, size / 2, size / 2);

  fill(0);
  ellipse(x, y, size / 4, size / 4);
}
