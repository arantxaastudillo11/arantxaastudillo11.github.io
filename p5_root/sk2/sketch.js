
int gval=10;
int value = 0;
var a;
var b;
var c;

int toggleState=0;



function setup() {
  createCanvas(800, 800);

  background(255-toggleState);

 if ( key == 'b'|| key == 'B' ) {
  if (toggleState == 0) {
      toggleState = 255;
    } else {
      toggleState = 0;
    }
  }

  println("setup");


  a = loadImage("prince1.1.jpg");
  b = loadImage("prince2.jpg");
  c = loadImage("shadow.jpg");
  image(a, 0, 0, 400, 400);
  image(b, 400, 400, 400, 400);
}

function draw() {

  for (int gval=10; gval<200; gval+=20) {
    for (int value=10; value<200; value+=20)

      println(gval);
  }
}



function keyPressed() {

  println("mousepppppppppppppppppppppppressed");


    background(255-toggleState);

 if ( key == 'b'|| key == 'B' ) {
  if (toggleState == 0) {
      toggleState = 255;
    } else {
      toggleState = 0;
    }
  }




  if (key=='h'){
  var a;
  a=loadImage("prince1.1.jpg");
  image(a, 400, 400, 400, 400);

    var b;
    b=loadImage("prince2.jpg");
    image(b, 0, 0, 400, 400);
  }

    if (key=='j') {
      a=loadImage("prince1.1.jpg");
      image(a, 0, 0, 400, 400);


      if (key=='l') ;
        b=loadImage("prince2.jpg");
        image(b, 400, 400, 400, 400);
        gval++;
    }

    }


function mouseMoved(){
    image(a, mouseX, mouseY,100,100);

  }

function mousePressed() {
  println("keypressed");
  if (value==0){
  c=loadImage("shadow.jpg");
        image(c, 100, 0, 600, 800);
        rectMode(CENTER);
  }


}
