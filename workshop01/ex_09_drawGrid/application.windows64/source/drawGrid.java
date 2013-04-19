import processing.core.*; 
import processing.data.*; 
import processing.opengl.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class drawGrid extends PApplet {



int[][] matrix;
int[][] offsetMatrix;
int colLength, rowLength;
int gridW;

public void setup() {
  String lines[] = loadStrings("outt.csv");
  rowLength = lines.length;
  
  size (400, 400);
  gridW = width/rowLength;
  colLength= split(lines[0], ',').length;
  matrix = new int[lines.length][colLength];
  offsetMatrix = new int[lines.length][colLength];
  for (int i = 0 ; i < rowLength; i++) {
     String[] columns = split(lines[i], ',');
     for (int j =0; j< colLength; j++) {
        matrix[i][j] = Integer.valueOf(columns[j]); 
        offsetMatrix[i][j] = 1;
     }
  }
  noStroke();
  
 
}

public void draw() {
  
  for (int i = 0 ; i < rowLength; i++) {
     for (int j =0; j< colLength; j++) {
        matrix[i][j] += offsetMatrix[i][j];
        fill(matrix[i][j]);
        rect(gridW * j, gridW*i, gridW, gridW);
        
        if (matrix[i][j] >= 255 || matrix[i][j] <= 0) {
           offsetMatrix[i][j] *= -1;
        } 
     }
  }
  
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "drawGrid" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
