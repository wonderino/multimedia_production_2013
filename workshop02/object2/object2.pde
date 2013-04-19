Rectangle r1, r2;
Rectangle[] rs;
void setup() {
  int gridNum = 100;
  rs = new Rectangle[gridNum];
  int gridW = width/10;
  for (int i = 0 ; i < gridNum ; i++) {
     rs[i] = new Rectangle(color((int) random(255)), (i%10)*gridW, (i/10)*gridW,gridW, gridW);  
  }
  r1 = new Rectangle();
  r2 = new Rectangle(color(255,0,0), width/2, height/2, 50, 50);
}

void draw() {
  /*
  r1.y +=1;
  background(255);
  r1.draw();
  r2.x -=1;
  r2.col = color((int) random(0,255), 0,0);
  r2.draw();
  */
  for (int i = 0 ; i < rs.length ; i++) {
     rs[i].draw();  
  }
}
