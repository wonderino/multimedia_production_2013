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

public class ex_01_helloworld extends PApplet {
  public void setup() {
println("1234");
print("1234");
print("5678");
print("\t91011");
print("\n");
println("1234"+ "5678");

    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ex_01_helloworld" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
