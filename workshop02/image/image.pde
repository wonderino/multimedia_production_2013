PImage img;
PImage copyImage;
//image.png
void setup() {
  img = loadImage("image.png");
  copyImage = createImage(img.width, img.height, RGB);
  size(img.width, img.height);
  //image(img, 0,0);
}

void draw() {
  background(255);
  //img.loadPixels();
  for (int i =0 ; i< img.height; i++) {
    for (int j = 0; j< img.width; j++) {
      copyImage.pixels[ (img.pixels.length-1) 
      - (i*img.width+j)]  = color((int)random(255));//img.pixels[i*img.width + j] ;
    }
  }
  //println(red(pixels[0]));
  //img.updatePixels();
  image(copyImage, 0,0);
}
