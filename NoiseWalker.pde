Walker w;

void setup() {
  size(1000,600);
  smooth();
  w = new Walker();
  
  background(255);
}

void draw() {
  
  w.move();
  w.display();
}
