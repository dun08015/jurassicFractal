void setup() {
  size(500, 500);
}

void draw() {
  rect(width/2, height/2, 1, 100);  //rectangles work better than lines for this
  pushMatrix();
  translate(width/2,height/2+100);
  rotate(radians(90));
  rect(0, 0, 1, 100);
  popMatrix();
}
