void setup(){
  size(600,600);
  background(0);
}
int s = 0;
boolean t = true;
void draw(){
  fill(255,255-s);
  clear();
  for (int i=0;i<600;i+=10){
    for(int j=0;j<600;j+=10){
      ellipse(i,j,5,5);
    }
  }
  if (t==true){
    s=s+8;
    if(s>=270){
      t=false;
    }
  }else{
    s=s-8;
    if(s<=-20){
      t=true;
    }
  }
}
