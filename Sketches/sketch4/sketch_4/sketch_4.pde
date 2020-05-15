  int counter;
  PFont a;
  PFont b;
  PFont f; 
  String[] headlines = 
  { "1,2,3,4,5,", 
  "6,7,8", "9,10,11" }; 

float x; 
int index = 0;
  
  
void setup(){
  size(800,800);
  background(225);
  

  
  
   f = createFont("Arial", 60, true); 
  x = width;
 
}



void draw() {
  
 background(255); 
  fill(180,50,40);
  textFont(f, 16); 
  textAlign(LEFT); 
  text(headlines[index], x, 180); 
  x = x - 3; 
  float w = textWidth(headlines[index]); 
  if (x < -w) { 
    x = width; 
    index = (index + 1) % headlines.length;
  }
  
  
  
  
   fill(50, 30);
  ellipse (0, 0, width, height);
  textAlign(RIGHT);
  myDrawType("Arantxa", mouseX, 100);
 // textAlign(CENTER);
  myDrawType("Danger", mouseX, 200);
  //textAlign(LEFT);
  myDrawType("Astudillo", mouseX, 300);
  
  
  
  
 arantxaHead();
 arantxaEyes();
 arantxaMouth(70,0,counter);
 counter++;
 
 arantxaNose();
}
 

void arantxaHead(){
 println("arantxaHead");
 fill(200);
 ellipse(width/2,height/2,200,230);
}


 void arantxaEyes(){
  println("eyes");
  fill(255);
  ellipse(width/2-50,height/2,50,30);
  fill(255);
  ellipse(width/2+50,height/2,50,30);
  
  fill(100);
  ellipse(width/2+50,height/2,20,20);
  fill(100);
  
  ellipse(width/2-50,height/2,20,20);
}
 
 void arantxaMouth(int ov, int oh, int sh){
   fill(200);
 ellipse(width/2+oh,height/2+ov,sh,10);
 }
 
 
 void arantxaNose(){
    fill(200);
 ellipse(width/2+10,height/2+50,5,5);
  fill(200);
 ellipse(width/2-10,height/2+50,5,5);
   
 }
 
 
 
 
 
 void myDrawType(String s, int x, int y ) {
  fill(255, 0, 0);
  text(s, x, y);
  fill(200);
  rect(x, y, 5, 5);
  
  
    printArray(PFont.list());
  a = createFont("Georgia", 84);
  textFont(a);
  fill(180,50,40);
  text("Arantxa", 400, 700);
  
  
    if (frameCount > 300){
     exit();
  }
  
//    saveFrame("sketch4-###.jpg"); 
//    println("frame"+frameCount);
//}
  
}
