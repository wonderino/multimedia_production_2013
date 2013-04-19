class Rectangle {
  color col;
  int x, y;
  int w, h;

  Rectangle(color _col, int _x, int _y, int _w, int _h) {
    col = _col;
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }

  Rectangle() {
    col = color(255);
    x= 0;
    y = 0;
    w = 10;
    h = 10;
  }
  
  void draw() {
    fill(col);
    rect(x,y,w,h);
  }
}

