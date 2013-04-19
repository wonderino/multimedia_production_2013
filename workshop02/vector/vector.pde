PShape shp;

void setup() {
 shp = loadShape("shape.svg"); 
 size((int)shp.width, (int)shp.height);
 shp.disableStyle();
 shp.scale(5.5);
 shape(shp,0,0);
}

void draw() {
}
