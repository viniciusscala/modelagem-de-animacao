void settings() { 
  System.setProperty("jogl.disable.openglcore", "false");
  size(800, 800, P3D);
}

void drawAxes() {
  
  stroke(255, 0, 0);
  line(-1000, 0, 0, 1000, 0, 0);
  stroke(0, 255, 0);
  line(0, -1000, 0, 0, 1000, 0);
  stroke(0, 0, 255);
  line(0, 0, -1000, 0, 0, 1000);
}

float angulo;

void draw() {
  background(255);
  translate(400, 400, 0);
  
  rotateX(radians(-45));
  rotateZ(radians(-45));
  
  drawAxes();
  
  rotateX(radians(60));
  noFill();
  circle(100, 100, 200);
  square(0, 0, 200);  
  fill(255, 0, 0);
    
  translate(100, 100);
  circle(0, 0, 20);
  
  rotateX(radians(90));
  rotateY(radians(angulo));
  translate(-100, 0, 0);
  rotateY(radians(90));
  noFill();
  circle(0, 25, 50);
  
  translate(0,25);
  
  rotateZ(radians(angulo * 4));
  fill(256,0,0);
  circle(17.5, 17.5, 10);
  
  angulo -= (360/240);
}
