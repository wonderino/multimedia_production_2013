int centerX, centerY;
int w;
int r;
//int[][] indexes; //int[] indexes;
int indexes[];
int wNum= 100;
int hNum = 100;

void setup() {
  w = 400;
  size(w, w);
  centerX = width/2;
  centerY = height/2;
  r = w/40;
  stroke(255,15,147);
  indexes = new int[wNum*hNum];

  for (int i= 0; i < hNum ; i ++) {
    for (int j = 0; j< wNum; j++) {
      indexes[i*wNum+j] = (int) random(0, w);
    }
  }
}

void draw() {
  background(255);
  //strokeWeight(10);

  for (int i= 0; i < hNum ; i ++) {
    for (int j = 0; j< wNum; j++) {
      point( indexes[i*wNum+j], indexes[j*wNum+i]);
    }
  }
  
  for (int i= 0; i < hNum ; i ++) {
    for (int j = 0; j< wNum; j++) {
      indexes[i*wNum+j] += (int) random(-3,3);
    }
  }

  //point (indexes[indexes.length-1], indexes[indexes.length-1]);
}

