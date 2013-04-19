int[][] matrix; // 정수 이중배열 변수를 선언합니다.
int colLength, rowLength; // 열길이, 행길이를 기억할 변수를 선언합니다.
int gridW;
void setup() {
  String lines[] = loadStrings("outt.csv"); // 'exmaple.csv' 라는 파일을 불러오면, 라인별로 자동으로 분리되어 스트링 배열에 저장됩니다.
  rowLength = lines.length; // 라인의 총 갯수를 행 길이에 저장합니다.
  colLength= split(lines[0], ',').length; // 첫번째 라인에서 열 숫자를 구합니다. 각각의 열은 ,로 구분되있기 때문에 split을 써서 스트링 배열을 얻습니다. 그리고 이 배열의 길이가 열길이가 됩니다. 
  matrix = new int[rowLength][colLength]; // 이중배열을 선언합니다. [행][열]의 길이만큼 공간을 할당합니다.
  gridW  = width/rowLength;
  for (int i = 0 ; i < rowLength; i++) { // 행의 길이 만큼 루프를 돕니다.
     String[] columns = split(lines[i], ','); // 매 행의 열 값을 얻습니다. 위에서 말한 방식과 같이 ,로 구분된 열의 값을 split함수를 통해 분리시켜 스트링 배열을 얻습니다.
     for (int j =0; j< colLength; j++) { // 열의 길이 만큼 루프를 돕니다.
        matrix[i][j] = Integer.valueOf(columns[j]); // 위에서 얻은 개별 행의 열값들을 매트릭스 배열에 할당합니다. i는 행번호 j는 열번호가 되겠지요. Integer.valueOf는 스트링 숫자를 진짜 정수 숫자로 변환하는 역할을 합니다.
     }
  }
}

void draw() {
  // 위에 저장한 행렬 배열에 접근합니다.
  for (int i = 0 ; i < rowLength; i++) { // 역시 매 행에 접근합니다. 
     for (int j =0; j< colLength; j++) { // 개별 행의 열에 각각 접근합니다.
         fill(matrix[i][j]);
         rect(gridW * j, gridW*i, gridW, gridW);
        //rect(matrix[i][j]*10, matrix[i][j]*10, j, j); // 매트릭스의 i번째 행 j번째열에 접근하여 데이터를 사용합니다. 
     }
  }
  
}

