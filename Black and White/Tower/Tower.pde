void setup(){
  size(600,600);
  background(255);
}
float t=40;
float a = 100;
void draw(){
  //stroke(0,0,0,100);
  noStroke();
  fill(255);
  quad(270,height-40+t,230,height+t,280,height+t,320,height-40+t);
  quad(270+a,height-40+t,230+a,height+t,280+a,height+t,320+a,height-40+t);
  //quad(270,height-40+t,230,height+t,280,height+t,320,height-40+t);
  //quad(270,height-40+t,230,height+t,280,height+t,320,height-40+t);
  t-=0.5;
  noStroke();
  fill(0,0,0,10);
  quad(0,0,0,height,width,height,width,0);
 // quad(270,height-40+t,230,height+t,280,height+t,320,height-40+t);
  if (t == -(height/3)*2){
    stop();
  }
}
