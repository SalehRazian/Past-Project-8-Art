void setup(){
  size(600,600);
}
float s= 0;
float c =0;
float t=0;
void draw(){
  clear();
  stroke(255);
  fill(0);
  translate(300,200);
  c = cos(radians(t));
  s=sin(radians(t));
  for (int i=0;i<200;i+=3){
    triangle(i*c,i,100+i,100+i,-100-i,100+i);
  }
  t++;
}
