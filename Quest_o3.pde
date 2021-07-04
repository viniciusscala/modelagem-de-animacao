  int t;
  float x, y, D, ang;
  
void setup() {
  x = 100;
  y = 0;
  ang = 0;
  size(200,200, P3D);
  
  
}

void draw() {
  background(255);
  //stroke(255,0,0);
  
  translate(width/2, height/2, 0);
  
  line(0, -200, 0, 0, 200, 0);
  //stroke(0,255,0);
  line(-200, 0, 0, 200, 0, 0);
  
  if (ang < 181) {
    rotateZ(radians(-ang));
    scale((radians(ang))/PI, 1, 1);
    line(0, 0, 0, x, y, 0);
    ang++;
  }
}
