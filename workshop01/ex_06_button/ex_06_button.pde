int buttonX, buttonY, buttonW, buttonH;

void setup() {
  size(400, 400);
  buttonX = width/4;
  buttonY = height/4;
  buttonW = width/2;
  buttonH = height/2;
}

void draw() {
  background(255);
  
  //mouseX, mouseY
  boolean isInW = (mouseX >=buttonX) && (mouseX<=buttonX + buttonW); 
  boolean isInH = (mouseY>=buttonY) && (mouseY<=buttonY+buttonH);
  
  if (isInW && isInH && mousePressed) {
    fill(255, 15, 147);
    noStroke();
  } else {
    fill(255);
    stroke(0);
  }
  rect(buttonX, buttonY, buttonW, buttonH); 
}
