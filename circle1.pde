PImage img;   //声明一张图片
float roll;
float i;
float j;
void setup(){
  roll=5;
  size(896,900);  
   img=loadImage("image1.jpg");   //载入这张图片
      background(255);
   for(int i=0;i<width;i+=20){   //每隔20个像素取色画圆
    for(int j=0;j<height;j+=20){ 
  color c= img.get(i,j);
  fill(c);
  stroke(c);
  ellipseMode(CORNER);
  ellipse(i,j, roll, roll);

    }
  }
}

void draw(){

}
void mousePressed(){
 roll+=3;
  size(896,900);  
   img=loadImage("image1.jpg");   //载入这张图片
      background(255);
   for(int i=0;i<width;i+=20){   //每隔50个像素取色画圆
    for(int j=0;j<height;j+=20){ 
  color c= img.get(i,j);
  fill(c);
  stroke(c);
  ellipseMode(CORNER);
  ellipse(i,j, roll, roll);
    }
  }
}
