void setup (){
  size(1600,600);
  background(228,223,220);
}

void draw(){
  int h=frameCount*4;
  int a=frameCount*8;
  line(450,0,450,h);
  line(500,0,500,h);
  line(1100,0,1100,h);
  line(1150,0,1150,h);
  
  line(0,h,450,h);
  line(500,a,1100,a-500);
  line(1150,a-450,1600,a);
}
