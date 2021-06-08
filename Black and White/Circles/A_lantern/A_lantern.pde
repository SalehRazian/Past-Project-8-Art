void setup(){
  size(600,600);
  background(0);
}

int t=0;
float x;
float y;
float s;
float w;
float tsin=-2;

void draw(){
  clear();
  tsin=sin(radians(t));
  stroke(255*tsin*tsin);
  fill(0,0);
  strokeWeight(5);
  ellipse(150,200,100,100);
  t++;
}
