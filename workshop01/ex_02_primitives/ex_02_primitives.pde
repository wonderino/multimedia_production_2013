void setup() {
  size(400, 400); //ㅇㅏㅇㅏㅇㅏㅇㅏ
  frameRate(60);
}

void draw() {
  println(frameRate);
  background((mouseX+mouseY)%255); 
  
  rectMode(CORNER);
  noStroke();
  fill(255, 20, 147);
  rect(50, 50, 300, 300);
  //rect(x,y,w,h)

  fill(255, 100);
  ellipse(width/2, height/2, 300, 300);
  //ellipse(x,y,w,h)

  strokeWeight(1);
  stroke(255, 20, 147);
  line(0, 0, 400, 400);
  //line(x1,y1,x2,y2);

  noStroke();
  fill(225, 15, 140);
  beginShape(QUAD_STRIP);
  vertex(100, 0);
  vertex(50, 50);
  vertex(400, 0);
  vertex(350, 50); 
  vertex(400, 300);
  vertex(350, 350);
  endShape(CLOSE);

  strokeWeight(10);
  stroke(255, 25, 170);
  point(width/2, height/2);
}

void mousePressed() {
  println("mouseX : " + mouseX + " mouseY: " + mouseY);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, width/2, height/2);
}

void keyPressed() {
  println("key value: " + key);
  rectMode(CENTER);
  rect(width/2, height/2, width/2, height/2); 
}




