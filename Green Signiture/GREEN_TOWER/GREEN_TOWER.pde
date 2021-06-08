void setup(){
  size(600,600);
  background(255);
}

float t=0;

void draw(){
  for(int i = 0;i<605;i+=1){
    stroke(33,97,40,0+(i/1.2));
    line(200,600-i,400,600-i);
  }
  stroke(255,255,255,10);
  for(int i = 0;i<605;i+=1){
    line(300,0,200,i);
    line(300,0,400,i);
  }
  saveFrame("square-######.png");
  stop();
}
