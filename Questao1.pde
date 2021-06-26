  int t;
  float x, y, alturaMax;
  boolean ida, subindo;
  
void setup() {
  x = 30;
  y = 570;
  t = 0;
  alturaMax = 470;
  ida = true;
  subindo = true;
  
  size(800,600);
}

void draw() {
  background(0);
  circle(x, y, 60); 
  if ((x <= 770) && (ida)) {
    x = x + 800/120;
  }
  else {
    ida = false;
    x = x - 800/120;
    if (x <= 30) {
      ida = true; 
    }
  }
  
  if (y >= 570) {
      t = 1;
      subindo = true; 
  }
  if ((y >= alturaMax) && (subindo)) {
    y = 570 - 10*t + (0.5*t*t)/2 ;
  }
  else {
    subindo = false;
    y = 570 + 10*t + (0.5*t*t)/2 ;
  }
  t++ ;
}
