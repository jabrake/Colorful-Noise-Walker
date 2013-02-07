class Walker {
  float x, y;
  float tx, ty;
  float prevX, prevY;
  float threshX, threshY;

  Walker() {
    tx = 0;
    ty = 1;
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
  }

  void move() {
    
    float distance = dist(mouseX, mouseY, x, y);

    prevX = x;
    prevY = y;

    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);

    tx += 0.005;
    ty += 0.005;
  }
  
  void display() {
    
    threshX = width/2;
    threshY = height/2;
    
    ellipse(prevX, prevY, 40, 40);
    
    if (prevX > threshX && prevY > threshY) {
      fill(255, 0, 0, 20);    
    } else if (prevX > threshX && prevY < threshY) {
      fill(0, 255, 0, 20);
    } else if (prevX < threshX && prevY < threshY) {
      fill(0, 0, 255, 20);
    } else {
      fill(100, 100, 100, 20);
    }
  }
}
