class Circle{
  float x,y,r;
  boolean growing=true;
  Circle(float x_,float y_){
    x=x_;
    y=y_;
    r=1;
  }
  
  void grow(){
    if(growing){
      r+=0.1;
    }
  }
  void show(){
    noFill();
    ellipse(x,y,2*r,2*r);
  }
}
