float angulo_braco = 0;
float variacao_braco = PI/8;

float angulo_antebraco = 0;
float variacao_antebraco = PI/4;

float coord1_x = 150;
float coord1_y = 100;

float coord2_x = 150;
float coord2_y = 200;

float initial2_x = 150;
float initial2_y = 200;

float coord3_x = 150;
float coord3_y = 350;

float initial3_x = 150;
float initial3_y = 350;

void setup(){
  size(450, 400);
}

void draw(){
  background(100, 100, 200);
  
  strokeWeight(3);
  line(coord1_x, coord1_y, coord2_x, coord2_y); // linha: braco - antebraco
  line(coord2_x, coord2_y, coord3_x, coord3_y); // linha: antebraço - mao
  
  fill(250, 250, 0);
  strokeWeight(2);
  ellipse(coord1_x, coord1_y, 10, 10);
  ellipse(coord2_x, coord2_y, 10, 10);
  ellipse(coord3_x, coord3_y, 10, 10);

  if (angulo_antebraco <= PI/2){
    
    angulo_braco += variacao_braco/60;
    coord2_x = coord1_x + sin(angulo_braco) * 100;
    coord2_y = coord1_y + cos(angulo_braco) * 100;
    
    angulo_antebraco += variacao_antebraco/60;
    coord3_x = coord2_x + sin(angulo_antebraco) * 150;
    coord3_y = coord2_y + cos(angulo_antebraco) * 150;
    
  }
  else{
    angulo_braco = 0;
    variacao_braco = PI/8;
    
    angulo_antebraco = 0;
    variacao_antebraco = PI/4;
    
    coord1_x = 150;
    coord1_y = 100;
    
    coord2_x = 150;
    coord2_y = 200;
    
    coord3_x = 150;
    coord3_y = 350;
  }
}
