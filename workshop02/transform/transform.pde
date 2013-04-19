float degree;
void setup() {
  rectMode(CENTER);
  degree = 0.0;
  smooth();
}

void draw() {
  
  background(255);
  pushMatrix();
  translate(width/2, height/2);
  pushMatrix();
  rotate(radians(degree));
  fill(0);
  rect(0, 0, 50, 50);
  popMatrix();
  scale(1.0, 1.2);
  shearX(PI/4.0);
  rotate(radians(-degree));
  fill(255);
  rect(0, 0, 50, 50);
  popMatrix();
  fill(155);
  rect(width/2, height/2, 50, 50);

  degree += 0.5;
}

