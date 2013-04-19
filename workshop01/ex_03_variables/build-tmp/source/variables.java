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

public class variables extends PApplet {
  public void setup() {
int w = 500;//integer
int h;
/// print(h); x
h = 400;
//float : floating number
//
//print(h);
size(w,h);

w = -255;// = not equal, assign, == equal

int col = color(225, 15, 147);
background(col);
println(col);

float a = 10.5f;
//print (a);

float b = (float) w/h;

println (b);

char c = 'c';
println (c);
char d = 'd';
print(c);
println(d);

String helloWorld = "Hello, world";
println (helloWorld);
println ("Hello World");

float f = 100.0f;
int i = 10 + (int)f;
println(i);
float e = 10.0f + i;
println(e);

    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "variables" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
