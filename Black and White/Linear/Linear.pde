
void setup(){
  size(600,600);
  background(200);
}
float t=0;
void draw(){
 fill(255,255,255,20);
 quad(0,0,0,700,700,700,700,0);
 noStroke();
 fill(0);
 ellipse(mouseX,mouseY,10,10); 
 t++;
}
