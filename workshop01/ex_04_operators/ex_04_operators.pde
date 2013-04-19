float a;
int rect_width;
String deostroy = "파." + "괘." + "한." + "다.";
void setup() {
 a = 10.0;
 rect_width =1;
 size(400,400);
 

}

void draw() {
  background(a);
  a *= 1.115;//a--;//a += 1; // a = a+1
  println(destroy + " : " + a);
  rectMode(CENTER);
  rect(width/2, width/2, min(rect_width,400), rect_width % 400);//modulo
  rect_width += 1;
}
