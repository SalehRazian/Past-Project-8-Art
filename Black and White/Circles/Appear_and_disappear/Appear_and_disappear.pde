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
  if (tsin<-0.01){
    s=(int)(Math.random()*90)+10;
    w=(int)(Math.random()*8)+1;
    x=(float)(Math.random()*(600-s))+s;
    y=(float)(Math.random()*(600-s))+s;
    t=0;
  }
  tsin=sin(radians(t));
  stroke(255*tsin);
  fill(0,0);
  strokeWeight(w);
  ellipse(x,y,s,s);
  t++;
}
