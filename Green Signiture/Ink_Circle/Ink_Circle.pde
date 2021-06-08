int num = 20;
float posx = 100;
float posy = 300;

float[] px = new float[num];
float[] py = new float[num];
float[] trans = new float[num];

void setup(){
  size(600,600);
  background(255);
  for(int i = 0;i<num;i++){
    px[i] = posx+i;
    py[i] = posy-i;
    trans[i] = 255;
  }
}

float t = 0;

void draw(){
  strokeWeight(3);
  for(int i = 0;i<num;i++){
    stroke(40,130,60,trans[i]);
    point(px[i],py[i]);
    px[i] = px[i]+3*sin(radians(t));
    py[i] = py[i]+3*cos(radians(t));
    trans[i] = trans[i] - (float)Math.random()*6;
  }
  t++;
  
  
  
  
}
