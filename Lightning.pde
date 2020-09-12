int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int ranYlen = (int)(Math.random()*100);

void setup() {
  size(300,300);
  background(0);
  strokeWeight(3);
  frameRate(3);
  stroke((int) (Math.random()*256),(int) (Math.random()*256),(int) (Math.random()*256));
  //250,255,100 for yellow lightning bolt
  //stroke(250,255,100);
}

void draw() {
  if (endX >= 300 || startX >= 300){
   stroke((int) (Math.random()*256),(int) (Math.random()*256),(int) (Math.random()*256));
   startX = 0;
   startY = 150;
   endX = 0;
   endY = 150;
  }
  line(startX, startY,endX,endY);
  endX = (int) ((Math.random()*50)+startX);
  endY = (int) ((Math.random()*280));
  line(startX, startY,endX,endY);
  startX = endX;
  startY = endY;
  line(startX, startY,endX,endY);
  fill(0,0,0,15);
  rect(0,0,300,300);
}

void mousePressed() {
  startX = 0;
  startY = 150;
  stroke((int) (Math.random()*256),(int) (Math.random()*256),(int) (Math.random()*256));
  line(startX,startY,0,150);
  endX = (int) ((Math.random()*50)+startX);
  endY = (int) ((Math.random()*280));
  line(startX, startY,endX,endY);
  startX = endX;
  startY = endY;
  line(startX, startY,endX,endY);
}
