void setup() {
  size(480, 480);
}

void draw() {
  
  line(width/2,100,width/2,200);
  pushMatrix();
rotate(PI/4.0);
  line(width/2,100,width/2,200);
  popMatrix();
}
