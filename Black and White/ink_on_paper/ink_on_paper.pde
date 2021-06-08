void setup(){
  size(600,600);
  background(0);
}

float t = 0;

void draw(){
  stroke(255-t);
  strokeWeight(10);
  point(300,300+t);
  
  t++;
}
