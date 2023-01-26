float px=0, py=0, t=0, radius=0;

void setup() {
  size(1000, 1000);
  strokeWeight(5);
}

void draw() {
  translate(width/2, height/2);
  rotate(t);
   radius = 1/cos(t)*4;
   println(radius);
  background(map(radius, -80, 80, 225, 255));
 

  for (float theta = 0; theta < 80*PI; theta = theta + .1) {
    stroke(0,  map(theta, 0, 20*PI, 150, 0),map(theta, 0, 40*PI, 50, 255), 150);
    strokeWeight(map(theta, 80*PI, 0, 40, 6));
    if (theta!=0) {
      line(radius*theta*cos(theta), radius*theta*sin(theta), px, py);
    }
    px=radius*theta*cos(theta+.1);
    py= radius*theta*sin(theta+.15);
  }
  
  t+=.0051;
  saveFrame("frames/####.png");
}
