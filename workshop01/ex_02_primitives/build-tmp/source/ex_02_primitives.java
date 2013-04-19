import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ex_02_primitives extends PApplet {

public void setup() {
  size(400, 400); //\u3147\u314f\u3147\u314f\u3147\u314f\u3147\u314f
  frameRate(60);
}

public void draw() {
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

public void mousePressed() {
  println("mouseX : " + mouseX + " mouseY: " + mouseY);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, width/2, height/2);
}

public void keyPressed() {
  println("key value: " + key);
  rectMode(CENTER);
  rect(width/2, height/2, width/2, height/2); 
}




  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ex_02_primitives" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
