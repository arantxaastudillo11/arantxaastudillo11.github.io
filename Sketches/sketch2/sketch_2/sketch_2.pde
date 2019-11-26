
float rand = 0.0;
float inc = TWO_PI/10.0;
String gridName = "Hi mom";


void setup() {
  size(800, 800);
  background(255, 50, 90);
  strokeWeight(6);
}


void draw() {
 background(255, 50, 90);
  
 
          for(float p=0; p<800; p+=2) {
 stroke(255);
line(p, 500, p, 5+sin(rand)*10.0);
println(" The angle = " + rand + "The sin = " + sin(rand));
rand = rand + inc;
}
  
  
  rect(340, 410, 380, 380);
  for (int i = 0; i < 800; i += 20) {

    ellipse(700, 700, 100, 100);
    for (int j = 0; j < 400; j += 20) {


      frameRate(1);
      rand = random(255);
      fill(rand);
      ellipse( i, j, 10, 10 );
      println(gridName + ", I hope you had a great day" + rand);
      
       for (int z = 0; z < 200; z += 20) {
          rect(z,i,30,30);
          
          


       }
    }
  }
}
