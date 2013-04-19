int[][] matrix;
int[][] offsetMatrix;
int colLength, rowLength;
int gridW;

void setup() {
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
        matrix[i][j] = parseInt(columns[j]); 
        offsetMatrix[i][j] = (int) random(1,3);
     }
  }
  noStroke();
  
 
}

void draw() {
  
  for (int i = 0 ; i < rowLength; i++) {
     for (int j =0; j< colLength; j++) {
        matrix[i][j] += offsetMatrix[i][j];
        fill(matrix[i][j]);
        rect(gridW * j, gridW*i, gridW, gridW);
        
        if (matrix[i][j] >= 255 || matrix[i][j] <= 0) {
           offsetMatrix[i][j] *= -(int) random(1,3);
        }
       
        
     }
  }
  
}

