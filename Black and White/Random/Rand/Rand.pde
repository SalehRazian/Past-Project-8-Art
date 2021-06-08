import java.util.Random;

void setup(){
  size(500,500);
  background(0);
}

Random rand = new Random();
float x;
float y;
float x1;
float y1;
float nx=0;
float ny=0;
int i=0;
void draw(){
  if (i%10==0){
    clear();
  }
  stroke(255);
  x = rand.nextInt(500)+0;
  y = rand.nextInt(500)+0;
  x1 = rand.nextInt(500)+0;
  y1 = rand.nextInt(500)+0;
  //point(x1,y1);
  line(nx,ny,x1,y1);
  nx=x1;
  ny=y1;
  //fill(0,0);
  //ellipse(x,y,x1,y1);
  i++;
  //delay(50);
  
}
