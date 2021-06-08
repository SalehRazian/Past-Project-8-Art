void setup(){
  size(600,600);
  background(255);
}

void draw(){
  noStroke();
  
  for(float i=0;i<270;i+=1){
    float addid = (float)Math.random()*300;
    float sn = (float)(Math.random()*7)+3;
    float div = (float)(Math.random()*60)-30;
    fill(33,97,40,255-i-addid);
    ellipse((200+div)*sin(radians(i+180))+300,(200+div)*cos(radians(i+180))+300,sn,sn);
  }
 
  for(float i=0;i<40;i+=1){
    float aj = (float)Math.random()*270;
    float bj = (float)Math.random()*270;
    float addid = (float)Math.random()*100;
    float sn = (float)(Math.random()*4)+1;
    float choice = (float)(Math.random());
    float div = (float)(Math.random()*50)-40;
    if (choice>=0.5){
      div = (float)(Math.random()*15)+15;
    }
    for(float j=aj;j<bj;j+=0.5){
      fill(33,97,40,150-j+addid);
      ellipse((200+div)*sin(radians(j+180))+300,(200+div)*cos(radians(j+180))+300,sn,sn);
    }
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
  saveFrame("square2-######.png");
  stop();
}
