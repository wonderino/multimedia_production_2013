int centerX, centerY;
int w;
int r;
void setup() {
  w = 400;
  size(w,w);
  centerX = width/2;
  centerY = height/2;
  r = w/40;
}

void draw() {
  background(255);
  int a= 10;
  //int cr = 20;
  /*
  while(cr>0) {
    ellipse(centerX, centerY, r*cr, r*cr); 
    cr -=2; 
  }  
  */
  
  while(true) {
    println (a); 
    a--;
     if(a<0){ 
       println("break");
       break;
     }
  }
  
  for (int cr = 20; cr >0;cr-=2) {
    ellipse(centerX, centerY, r*cr, r*cr);
  }
  
  for (int i = 0; i < width; i++) {
     //println(i); 
  }
 
}
