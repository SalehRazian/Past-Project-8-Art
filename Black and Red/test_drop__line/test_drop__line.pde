void setup(){
  size(600,600);
  background(0);
}

void draw(){
  for(int i=0;i<10;i++){
    float x = (float)Math.floor(Math.random()*600);
    float y = (float)Math.floor(Math.random()*600);
    float s = (float)Math.floor(Math.random()*10);
    for(int j=255;j>0;j--){
      stroke(255,0,0,j);
      line(x,y+(255-j),x+10,y+(255-j));
    }
    
    stop();
  }
}
