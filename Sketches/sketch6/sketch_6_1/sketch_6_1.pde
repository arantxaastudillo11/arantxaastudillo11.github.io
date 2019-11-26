////////////////////////////////////// object template example

String[] names = {"bird", " bird 1","bird 2","bird 3","bird 4","bird 5",
               "bird 6","bird 7","bird 8","bird 9"};


car[] carz;

void setup() {
  size(800,800);
  background(100,0,0);
  // birthing a new instance
  
  carz = new car[60]; // Create
  
  for (int i = 0;  i < carz.length;i++) {
    
    carz[i] = new car(names[int(random(names.length))],random(0,5));
    
  }
  
  
}
  

void draw() {
  fill(180,20);
  rect(0,0,width,height);

  
  for (int i = 0;  i < carz.length;i++) {
    
      carz[i].move();
     // carz[i].wiggle(random(3));
      carz[i].update();
    
  }
}




class car {
  
  float lox;
  float loy;
  //int loz;
  color rc;
  float acc;
  String driver;
Float flipper;
float sc;
  
  
  // constuctor // it's like setup
  
  car (String dr, float sp)  {
    lox = int(random(20,500));
    loy = int(random(20,820));
    //loz = int(random(20,700));
    rc = color(random(255),random(255),random(255));
    acc = sp;
    driver = dr;
  flipper = random(-50, 50);
  sc= random(2);
  }
  
  void move() {
    lox+=acc;
    if (lox > width) {
      lox = 0;
    }
  
  }
  
  void update() {
    
    pushMatrix();
  
       rotate(radians(flipper));
      scale(sc);
        translate(lox,loy);
   
  
   
    fill(rc);
    triangle(30, 60, 50, 10, 10, 10);
    
    fill(rc);
   triangle(60, 30, 50, 10, 10, 10);
        
    fill(rc);
   ellipse(50,5,10,10);    
    
   fill(0);
   text(driver,10,0);
    
    popMatrix();
  }
  
  
}
