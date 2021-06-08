int num = 300;

int minx = 360;
int maxx = 840;
int midx = 600;

int maxy = 900;
int miny = 700;

double gradl = 0.833333333;
double gradr = -gradl;
double cl = -(gradl*minx)+miny;
double cr = (-(gradr*maxx)+miny);

int len = 4;
int mw = 2;
int mb = 2;

float[] blx = new float[num];
float[] bly = new float[num];
int[] count = new int[num];
int[] time = new int[num];

void setup(){
  size(600,600);
  background(30);
  
  for(int i=0;i<num;i++){
    blx[i] = (float)(Math.random()*(maxx-(minx+mb+mw+len)))+(minx+mb+mw+len);
    bly[i] = (float)(Math.random()*(2400-maxy))+maxy;
    count[i] = 0;
  }
  
}

int counter = -1;
float timer =0;

void draw(){
  scale(0.5);
  
  if(counter==-1){
    for(float i=0;i<255;i+=1){
      stroke(0,0,0,255-i);
      line(minx,miny+i,midx,maxy+i);
      line(midx,maxy+i,maxx+6,miny-6+i);
    }
    counter++;
  }
  
  for(int i=0;i<num;i++){
    
    if(blx[i]<=midx){
      for(int j=-(len+mw+mb);j<(len+mw+mb);j++){
          double yl = (gradl*(blx[i]+j))+cl;
          if(bly[i]<=yl){
            if(j<=-(len+mw)||j>=(len+mw)){
              stroke(0,0,0,100);
              point(blx[i]+j,bly[i]);
            }else if(j<=-(len)||j>=(len)){
              stroke(255,255,255,50);
              point(blx[i]+j,bly[i]);
            }else{
              count[i]++;
              stroke(count[i]*0.1,0,0,255*count[i]*0.5);
              point(blx[i]+j,bly[i]);
            }
          }
        }
    } else{
      for(int j=-(len+mw+mb);j<(len+mw+mb);j++){
          double yr = (gradr*(blx[i]+j))+cr;
          if(bly[i]<=yr){
            if(j<=-(len+mw)||j>=(len+mw)){
              stroke(0,0,0,100);
              point(blx[i]+j,bly[i]);
            }else if(j<=-(len)||j>=(len)){
              stroke(255,255,255,50);
              point(blx[i]+j,bly[i]);
            }else{
              count[i]++;
              stroke(count[i]*0.1,0,0,255*count[i]*0.5);
              point(blx[i]+j,bly[i]);
              
            }
          }
        }
    }
    bly[i]-=1;
  }
  //println(frameCount);
  for(float m=0;m<5;m++){
      stroke(0,0,0,255);
      line(minx,miny+m,midx,maxy+m);
      line(midx,maxy+m,maxx+6,miny-6+m);
    }
  println(frameCount);
  saveFrame("####B.png");
  
}
