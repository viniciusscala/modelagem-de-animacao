float positionX = 300;
float positionY = 300;
float angle = 0.1;
 
void ellipsesFunc(float raio, float speed){
   
  float newX = positionY +  raio*cos(angle);
  float newY = positionX +  raio*sin(angle);
 
  ellipse(newX, newY, 50, 50);

  newX = newX + 25f*cos(angle*4);
  newY = newY + 25f*sin(angle*4);
  
  fill(255, 0, 0);
  ellipse(newX, newY, 5, 5);
  
  angle+=speed; 
}

void setup (){
  size(600, 600);
}
 
void draw (){ 
  background(255);
  fill(255);
  stroke(0, 0, 255);
  
  ellipse(positionX, positionY, 250, 250);
  
  ellipsesFunc(100, -0.05);
}
