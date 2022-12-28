import geomerative.*;

RShape grp;
RPoint[] points;

void setup(){
  size(1000,1000);
  frameRate(30);
  
  RG.init(this);
  grp = RG.getText("magic","mag.ttf",200,CENTER);
}

void draw(){
  background(255);
  translate(width/2,height/2);
  //noStroke();
  //fill(255,100,0);
  //grp.draw();
  
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  float length= map(constrain(mouseX,50,width-50),50,width-50,10,200);
  RG.setPolygonizerLength(length);
  
  drawLine();
 
}

void drawLine(){
 points= grp.getPoints();
  
  if(points!=null){
    noFill();
    stroke(0,200,0);
    strokeWeight(3);
    beginShape();
    for(int i=0;i<points.length;i++){
      //vertex(points[i].x,points[i].y);      //直线效果
      curveVertex(points[i].x,points[i].y);    //曲线效果
    }
    endShape();
  }
  noStroke();
  fill(0);
  for(int i=0;i<points.length;i++){
    circle(points[i].x,points[i].y,10);
  }
}
