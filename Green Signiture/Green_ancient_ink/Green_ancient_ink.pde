void setup(){
  size(600,600);
  background(255);
}

void draw(){
  noStroke();
  for(float i=0;i<360;i+=1){
    fill(33,97,40,255-i+50);
    ellipse((200+(float)(Math.random()*2)-1)*sin(radians(i+180))+300,(200+(float)(Math.random()*2)-1)*cos(radians(i+180))+300,30,30);
  }
  strokeWeight(2);
  for(float i=-7;i<7;i+=1){
    float r = (float)(Math.random()*30)-15;
    float m = (float)(Math.random()*30)-30;
    float f = (float)(Math.random()*0)-30;
    for(float j=30;j<90;j+=0.1){
      stroke(255,255,255,110-j+f);
      point((200+r)*sin(radians(-j+180+m))+300,(200+r)*cos(radians(-j+180+m))+300);
    }
  }
  saveFrame("square-######.png");
  stop();
}
