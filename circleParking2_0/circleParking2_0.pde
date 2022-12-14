ArrayList<Circle>circles;   //动态数组
PImage img;
ArrayList<PVector>spots;
void setup(){
  size(960,540);
  circles=new ArrayList<Circle>();
  spots=new ArrayList<PVector>();
  img=loadImage("image2.png");

  for(int x=0;x<img.width;x++){
    for(int y=0;y<img.height;y++){
      int index=x+y*img.width;      
      color c=img.pixels[index];
      float b=brightness(c);           //取得灰度值
      if(b>1){                         
        spots.add(new PVector(x,y));
      }
    }
  }
}
void draw(){
  //background(255);
  for (int i=0;i<10;i++){
      newCircle();
  }
  background(255);
  for(Circle c : circles){
    if(c.growing){
      for(Circle other : circles){
        if(c!=other){
          float d=dist(c.x, c.y, other.x, other.y);
          if(d-2< c.r+other.r){
            c.growing=false;
            other.growing=false;
            break;  //停止，跳出循环     
          }
        }
      }
    }
    c.grow();
    c.show();
  }
}
void newCircle(){
  PVector spot=spots.get((int)random(spots.size()));    //size获取个数，（int）取整
  float x=spot.x;
  float y=spot.y;
  boolean valid= true;
  for (Circle c:circles){
    float d= dist(x,y,c.x,c.y);
    if (d-4<c.r){    //新生成的圆要在有的圆的外面
      valid = false;
      break;
      }
   }
    if (valid){
      circles.add(new Circle(x,y));
    }
  }
