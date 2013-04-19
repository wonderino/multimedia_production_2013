int w;
int max_width;

color randCol;
void setup() {
  max_width = 400;
  size(max_width, max_width);
  w = 20;
  noStroke();
  fill(125);
  rectMode(CENTER);
  frameRate(24);
}

void draw() {
  background(255);
  if (w>=max_width) {
    w = 0;
    randCol = color(random(0,255), random(0,255), random(0,255));
  } 
  
  boolean mod = (w%2==0);

  if (mod) {
     strokeWeight(w*0.2);
     stroke(255,15,147);
     noFill();
  } else {
     noStroke();
     fill(randCol);
  }
  rect(width/2, height/2, w, w);
  
  w+=3;
  // if w == 400 then
  // else then
}
