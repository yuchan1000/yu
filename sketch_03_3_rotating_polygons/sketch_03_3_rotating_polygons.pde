void setup() {
  size(640, 360); //set window size(weight(640), height(360))
}

void draw() {
  background(102); //set background color(102)
  
  pushMatrix(); //start Matrix
  translate(width*0.2, height*0.5); //(position of x(640 * 0.2), position of y(360 & 0.5))
  rotate(frameCount / 200.0); //rotate Triangle speed(framecount / 200 degree)
  polygon(0, 0, 82, 3);  //draw Triangle, (axis of rotation x position(0), axis of rotation y position(0), size of triangle(82), number of faces(3))
  popMatrix(); //end Matrix
 
  pushMatrix(); //start Matrix
  translate(width*0.5, height*0.5); //(position of x(640 * 0.5), position of y(360 & 0.5))
  rotate(frameCount / 50.0); //rotate Icosahedron speed(framecount / 50 degree)
  polygon(0, 0, 80, 20);  //draw Icosahedron , (axis of rotation x position(0), axis of rotation y position(0), size of Icosahedron(80), number of faces(20))
  popMatrix(); //end Matrix
  
  pushMatrix(); //start Matrix
  translate(width*0.8, height*0.5); //(position of x(640 * 0.8), position of y(360 & 0.5))
  rotate(frameCount / -100.0); //rotate Heptagon speed(framecount / -100 degree)
  polygon(0, 0, 70, 7);  //draw Heptagon, (axis of rotation x position(0), axis of rotation y position(0), size of Heptagon(70), number of faces(7))
  popMatrix(); //end Matrix
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints; //angle = 6.2831855 / number of vertex
  beginShape(); //start shape drawing(polygon with npoints)
  for (float a = 0; a < TWO_PI; a += angle) { //formula for find Vertex Coordinates
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy); //position of vertex x(sx), position of vertex y(sy)
  }
  endShape(CLOSE); //end shape drawing
}
