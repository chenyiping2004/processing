float r =100;
float amp=0;
boolean flag= false;
boolean flag1 = false;
void setup(){
  size(800,800);
  clean();
  fill(100,100,100);
  rect(20,20,50,50);
    
  rect(720,90,50,50);
  ellipse(745,180,50,50);
}

void draw(){
  rect(720,90,50,50);
  ellipse(745,180,50,50);
  
   if (flag){
     noStroke();
    rect(200,200,400,400);
   }
   
   if (flag1){
     noStroke();
    ellipse(width/2,height/2,400,400);
   }
   
  int d=0 ; 
  if (mousePressed&&mouseY<70&&mouseY>20){
    clean();
    if (mouseX>780){
      d=780;
    }
    else if(mouseX<20){
      d=20;
    }
     else{ d= mouseX;    
     }  
    float a=map(d,20,780,0,255);
    colorMode(HSB);
    background(a,255,255);
    fill(100,100,100);
    noStroke();
    rect(20,20,d-20,50);   
  } 
  
  if(mousePressed && mouseX<=770 && mouseX>=720 && mouseY>=90 && mouseY<=140){
    clean();
    noStroke();
    rect(200,200,400,400);
    flag = true;
    flag1= false;
  }
  
  if (mousePressed && dist(mouseX,mouseY,745,180)<=25){
    clean();
    fill(100,100,100);
    ellipse(width/2,height/2,200,200);
    flag1=true;
    flag = false;
  }
  
 
}
  
void clean(){
  background(255,255,255);
  rect(20,20,50,50);
   rect(720,90,50,50);
  ellipse(745,180,50,50);
}
