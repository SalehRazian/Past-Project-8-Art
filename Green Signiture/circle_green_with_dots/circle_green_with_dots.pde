void setup(){
  size(600,600);
  background(255);
  frameRate(30);
}

float t = 0;
float x = 300;
float y = 100;
boolean end = false;

void draw(){
  if(end==false){
    fill(40,130,60,255-t+50);
    noStroke();
    ellipse(x+3*sin(radians(t+270)),y+3*cos(radians(t+270)),30,30);
    x = x+3*sin(radians(t+270));
    y = y+3*cos(radians(t+270));
    t++;
    if(t==360){
      x=300+3*sin(radians(360-30+270));
      y=100+3*cos(radians(360-30+270));
      t=0;
      end = true;
    }
  } 
  if(end == true){
    noFill();
    stroke(40,130,60,255-t+50);
    ellipse(300,300,300,300);
  }
}
