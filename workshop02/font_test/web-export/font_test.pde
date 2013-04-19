PFont font;
String[] fontList = PFont.list();
font = loadFont(fontList[0]);
textFont(font, 32);
text('word', 10, 50);

