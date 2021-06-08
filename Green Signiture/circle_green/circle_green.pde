void setup(){
  size(600,600);
  background(255);
  frameRate(30);
}

float t = 0;
float x =300;
float y =100;

void draw(){
  fill(40,130,60,255-t+50);
  noStroke();
  ellipse(x+3*sin(radians(t+270)),y+3*cos(radians(t+270)),30,30);
  x = x+3*sin(radians(t+270));
  y = y+3*cos(radians(t+270));
  t++;
}
