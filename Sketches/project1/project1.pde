float x, y, r, g, b, radius;
int timer;
int num = 6; 

int counter;
int index = 0;
Spring[] springs = new Spring[num];  

void setup() {
  size(1280, 720);
  noStroke();
  smooth();



  springs[0] = new Spring(width/2+100, 560, 40, 0.98, 8.0, 0.1, springs, 0); 
  springs[1] = new Spring(width/2+200, 360, 120, 0.95, 9.0, 0.1, springs, 1); 
  springs[2] = new Spring(width/2+400, 160, 200, 0.90, 9.9, 0.1, springs, 2);

  springs[3] = new Spring(width/2-100, 560, 40, 0.98, 8.0, 0.1, springs, 3); 
  springs[4] = new Spring(width/2-200, 360, 120, 0.95, 9.0, 0.1, springs, 4);
  springs[5] = new Spring(width/2-400, 160, 200, 0.90, 9.9, 0.1, springs, 5);
}


void draw() {
  background(0);
  
  
 astudillogrowingellipse(counter,0,counter);
 counter++;
 

    for (Spring spring : springs) { 
      spring.update(); 
      spring.display();
    }
  

  x = frameCount % width;
  if (millis() - timer >= 1) {
    y = random(height);
    timer = millis();
  }
  r = noise(frameCount * 0.01) * 255;
  g = frameCount % 255;
  b = 255 - noise(1 + frameCount * 0.025) * 255;
  radius = noise(frameCount * 0.01) * 100;
  color c = color(r, g, b);
  fill(c);
  ellipse(x, y, radius, radius);
}


 void astudillogrowingellipse(int ov, int oh, int sh){
   fill(255);
 ellipse(width/2+oh,height/2+ov,sh,50);
 
 fill(255);
 ellipse(width/2+ov,height/2+oh,sh,50);
 
  fill(255);
 ellipse(width/2-ov,height/2+oh,sh,50);
 
  fill(255);
 ellipse(width/2+oh,height/2-ov,sh,50);
 
 
 }


void mousePressed() {
  for (Spring spring : springs) { 
    spring.pressed();
  }
}

void mouseReleased() {
  for (Spring spring : springs) { 
    spring.released();
  }
}

class Spring { 
  // Screen values 
  float xpos, ypos;
  float tempxpos, tempypos; 
  int size = 20; 
  boolean over = false; 
  boolean move = false; 

  // Spring simulation constants 
  float mass;       // Mass 
  float k = 0.2;    // Spring constant 
  float damp;       // Damping 
  float rest_posx;  // Rest position X 
  float rest_posy;  // Rest position Y 

  // Spring simulation variables 
  //float pos = 20.0; // Position 
  float velx = 0.0;   // X Velocity 
  float vely = 0.0;   // Y Velocity 
  float accel = 0;    // Acceleration 
  float force = 0;    // Force 

  Spring[] friends;
  int me;

  // Constructor
  Spring(float x, float y, int s, float d, float m, 
    float k_in, Spring[] others, int id) { 
    xpos = tempxpos = x; 
    ypos = tempypos = y;
    rest_posx = x;
    rest_posy = y;
    size = s;
    damp = d; 
    mass = m; 
    k = k_in;
    friends = others;
    me = id;
  } 

  void update() { 
    if (move) { 
      rest_posy = mouseY; 
      rest_posx = mouseX;
    } 

    force = -k * (tempypos - rest_posy);  // f=-ky 
    accel = force / mass;                 // Set the acceleration, f=ma == a=f/m 
    vely = damp * (vely + accel);         // Set the velocity 
    tempypos = tempypos + vely;           // Updated position 

    force = -k * (tempxpos - rest_posx);  // f=-ky 
    accel = force / mass;                 // Set the acceleration, f=ma == a=f/m 
    velx = damp * (velx + accel);         // Set the velocity 
    tempxpos = tempxpos + velx;           // Updated position 


    if ((overEvent() || move) && !otherOver() ) { 
      over = true;
    } else { 
      over = false;
    }
  } 


  boolean overEvent() {
    float disX = tempxpos - mouseX;
    float disY = tempypos - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < size/2 ) {
      return true;
    } else {
      return false;
    }
  }


  boolean otherOver() {
    for (int i=0; i<num; i++) {
      if (i != me) {
        if (friends[i].over == true) {
          return true;
        }
      }
    }
    return false;
  }

  void display() { 
    if (over) { 
      fill(153);
    } else { 
      fill(255);
    } 
    ellipse(tempxpos, tempypos, size, size);
  } 

  void pressed() { 
    if (over) { 
      move = true;
    } else { 
      move = false;
    }
  } 

  void released() { 
    move = false; 
    rest_posx = xpos;
    rest_posy = ypos;
  }
}


 
