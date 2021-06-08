void setup(){
  size(600,600);
  background(0);
}

void draw(){
  //scale(2);
  //translate(-150,-150);
  for(int i=0;i<10;i++){
    float x = (float)(Math.floor(Math.random()*100))+250; 
    float y = (float)(Math.floor(Math.random()*100))+250;
    for(float j=0;j<255;j+=0.5){
      //stroke(255,0,0,255-(j*5));
      stroke(255-(j*3),0,0,255-(j*3));
      point(x,y+j);
      point(x+1,y+j);
      //stroke(255,255,255,255-(j*5));
      stroke(200-(j*5),200-(j*5),200-(j*5),255-(j*5));
      point(x-1,y+j);
      point(x+2,y+j);
    }
  }
  for(float i=0;i<200;i+=0.5){
    noFill();
    stroke(0);
    ellipse(300,300,100+i,100+i);
  }
  //stop();
}
