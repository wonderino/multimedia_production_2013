PFont font;
PFont font1;
int value;
//08SeoulNamsanB-48.vlw
void setup() {
  String []fontList = PFont.list();
  String fontName = "08SeoulNamsanB-48.vlw";
  println(fontList[0]);
  
  font = createFont(fontList[0], 32);//("Serif", 32);
  font1 = loadFont(fontName);
  
  textFont(font1);
  value = 0;
}

void draw() {
  String s = String.valueOf(second());
  background(150);
  text(s, 0,48);
  text(String.valueOf(value), 0, 96);
  value++;
}
