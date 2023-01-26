float x,y,t;
float oldx, oldy;


void setup(){  // runs once in beginning
  size(800, 800);
  background(255);
  t=0;
}


void draw(){  // runs once PER FRAME
  x = 400 + 355*pow(cos(5*t), 3);
  y = 400 + 300*pow(sin(7*t), 3);
  if(t > 0){
     float dratio = map(dist(x, y, 400, 400), 0, 400, 0, 1);
     strokeWeight(30*dratio+2);
     stroke(0, 255*(1-dratio), dratio*255);
     line(x, y, oldx, oldy); 
  }
  oldx = x; 
  oldy = y;
  t = t + PI/720;
  //saveFrame("frames/######.png");
}
