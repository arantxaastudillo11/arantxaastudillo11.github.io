
int count = 100; 
float[] posX = new float[count]; 
float[] posY = new float[count];
float[] speedX = new float[count];
float[] speedY = new float[count];
float[] sizeW = new float[count];
float[] sizeH = new float[count];
int[] colors = new int[count];

float[] posXs = new float[count]; 
float[] posYs = new float[count];
float[] speedXs = new float[count];
float[] speedYs = new float[count];
float[] sizeWs = new float[count];
float[] sizeHs = new float[count];
int[] colorss = new int[count];


void setup() { 
  size(800, 800);
  background (255);
  
  //squares
  for (int i=0; i < posXs.length; i++) { 
    posXs[i] = width/2; 
    posYs[i] = height/2; 
    speedXs[i] = random(-1, 1); 
    speedYs[i] = random(-1, 1); 
    sizeWs[i] = random(5, 100); 
    sizeHs[i] = random(50, 100); 
    colorss[i] = int(random(250, 255));
  }

//circles
  for (int o=0; o < posX.length; o++) { 
    posX[o] = width/2; 
    posY[o] = height/2; 
    speedX[o] = random(-10, 10); 
    speedY[o] = random(-10, 10); 
    sizeW[o] = random(5, 100); 
    sizeH[o] = random(5, 100); 
    colors[o] = int(random(10, 20));
  }
} 


void draw() { 
  background(0); 
  fill(255); 
  rect(40, 40, width-80, height-80); 

squares();
circles();
}

void squares(){
  for (int i = 0; i < posX.length; i++) { 

    posXs[i] += speedXs[i]; 
    posYs[i] += speedYs[i]; 

    fill(colorss[i], 130, 90); 
    rect(posXs[i], posYs[i], sizeWs[i], sizeHs[i]); 


    if (posXs[i] < 40+sizeWs[i]/2 || posXs[i] > (width-60)-sizeWs[i]/2 ) { 
      speedXs[i] = -speedXs[i];
    } 
    if (posYs[i] < 40+sizeWs[i]/2 || posYs[i] > (height-60)-sizeWs[i]/2) { 
      speedYs[i] = -speedYs[i];
    }
  }
}



void circles(){
  for (int o = 0; o < posX.length; o++) { 

    posX[o] += speedX[o]; 
    posY[o] += speedY[o]; 

    fill(colorss[o], 10, 20); 
    ellipse(posX[o], posY[o], sizeW[o], sizeW[o]); 


    if (posX[o] < 40+sizeW[o]/2 || posX[o] > (width-40)-sizeW[o]/2 ) { 
      speedX[o] = -speedX[o];
    } 
    if (posY[o] < 40+sizeW[o]/2 || posY[o] > (height-40)-sizeW[o]/2) { 
      speedY[o] = -speedY[o];
    }
  }
}
