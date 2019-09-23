void setup() {
  size(300,300);//UI size(width,height)
 
}

void draw() {
  
  background(255,255,255);//White background
  fill(0);  //Text color(black) 
  text("Hello Strings! " + str(frameCount),10,50);//print text + Convert numbers to strings,X,Y

  //String buf = String.format("%06d", frameCount);
  //text(buf, 10,50);
  
  
  fill(255/2);   //Text color(255/2)   
  text("Hello Strings!",10,100);//print text,X,Y
  fill(255/3);   //Text color(255/3)
  text("Hello Strings!",10,150);//print text,X,Y
}
