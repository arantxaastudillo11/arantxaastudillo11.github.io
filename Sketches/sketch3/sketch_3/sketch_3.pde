/*@pjs preload="prince1.1.jpg, prince2.jpg, shadow.jpg";*/



int gval=10;
int value = 0;
PImage a;
PImage b;
PImage c;

int toggleState=0;

void setup() {
  size(800, 800);
  
  background(0-toggleState);
 
  println("setup");

  a=loadImage("prince1.1.jpg");
  b = loadImage("prince2.jpg"); 
  c = loadImage("shadow.jpg"); 
  image(a, 0, 0, 400, 400);
  image(b, 400, 400, 400, 400);
}

void draw() {

}


void keyPressed() {
    
  println("mousepppppppppppppppppppppppressed");
  
  
    background(255-toggleState);


  
  if ( key == 'b'|| key == 'B' ) { 
  if (toggleState == 0) { 
      toggleState = 255;
            image(a, 0, 0, 400, 400);
        image(b, 400, 400, 400, 400);
    } else { 
      toggleState = 0;
       image(a, 400, 400, 400, 400);
 image(b, 0, 0, 400, 400);
    }
  }
    }


void mouseMoved(){
    image(a, mouseX, mouseY,100,100);
} 



void mousePressed() {
  println("keypressed");
  if (value==0){
        image(c, 100, 0, 600, 800);
        rectMode(CENTER);
  }
  

}
