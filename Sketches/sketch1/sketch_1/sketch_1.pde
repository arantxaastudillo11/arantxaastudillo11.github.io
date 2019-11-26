size(800, 800);
background(127);




for(int i=0; i<height; i+=20) {
fill(0+1);
ellipse(0, i, width, 10);
fill(255);


ellipse(i, 0, 10, height);

fill(150,100,100,250);
ellipse (750, 750,100,100);
line(0, 20, 800, 800);

line(20, 20, 800, 800);
line(40, 20, 800, 800);

point(700, 700);

fill(180,90);
noStroke();
triangle(700, 75, 508, 200, 506, 75);

quad(0, 31, 86, 20, 69, 63, 30, 76);



noFill();
stroke(40);
rect(500, 500, 200, 200);
rect(480, 480, 200, 200);
rect(460, 460, 200, 200);
rect(440, 440, 200, 200);
rect(420, 420, 200, 200);
}

for(int i = 5; i < 95; i += 5) {
if(i < 500) {
line( 300, i+200, 800, i+200 );
stroke(150,100,100,250);
} else {
line( 20, i, 90, i );
}
}
