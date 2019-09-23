void setup() {
  size(100, 100);//UI size(width,height)
}

void draw() {
  background(204);// background Color(204)
  line(0, 0, mouseX, mouseY);//draw line (starting point(0,0), end point(mouseX, mouseY))
}

void mousePressed() {//Press mouse
  save("line.jpg");//save image("line.jpg")
  println("saved...");//print text("saved...")
}
