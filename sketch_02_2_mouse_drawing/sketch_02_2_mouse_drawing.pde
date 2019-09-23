int saveCount;//int variable saveCount

void setup() {
  size(500, 500);//UI size(width,height)
  saveCount = 0;//Variable Initialization
}

void draw() {
  background(204);//background color(204)
  line(0, 0, mouseX, mouseY);//draw line (starting point(0,0), end point(mouseX, mouseY))
}

void mousePressed() {//Press mouse
  //String filename = "line_" + str(frameCount) + ".jpg";
  String filename = "line_" + str(saveCount) + ".jpg";//filename = "line_"+ Number converted to string(saveCount)+".jpg"
  
  saveCount = saveCount + 1;
  save(filename);//save image(filename)
  println("saved..." + filename);//print text("saved..."+filename)
}
