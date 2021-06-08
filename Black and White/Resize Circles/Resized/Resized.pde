void setup(){
  size(600,600);
  background(255);
  frameRate(90);
}
int i =0;
boolean x = true;
void draw(){
  fill(255);
  if(x==true){
    ellipse(mouseX,mouseY,i,i);
    i++;
    if(i==50){
      x=false;
    }
  }else{
    ellipse(mouseX,mouseY,i,i);
    i--;
    if(i==0){
      x=true;
    }
  }
}
