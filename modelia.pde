

void setup(){
  size(800,800);
  background(248,255,253);
}
 void draw(){
 
 }

 void mousePressed(){
  background(248,255,253);
 float a = random(0,800);
 float b = random(0,800);
 float c = random(b,800);  
   
  fill(152,208,133);
  stroke(253,217,128);
  strokeWeight(10);
  rect(0,0,a,b);
  
  
  fill(239,137,121);
  stroke(253,217,128);
  strokeWeight(10);
  rect(a,0,800-a,b/2);
  
  fill(129,219,197);
  strokeWeight(10); 
  stroke(253,217,128);
  rect(a,b,800-a,800-b);
  
  stroke(253,217,128);
  strokeWeight(10); 
  line(0,c,a,c);
  
}
