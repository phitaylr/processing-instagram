
float springW, springSegmentH, time;
int numTurns;

void setup() {
  size(1000, 800);
  springW=.2*width;
  springSegmentH = 15;
  numTurns = 12;
  time = 0;
}

void draw() {
  background(255);
  fill(200, 0, 200);
  noStroke();
  rect(.3*width, 0, .4*width, .05*height);
  stroke(0);
  strokeWeight(5);
  line(.5*width, .05*height, .5*width, .1*height);
strokeWeight(2);
  noFill();
  float boxHeight = .4*height*sin(time)+.5*height;
  //springSegmentH = map(mouseY, 0, height, -.05,  100);
  springSegmentH = boxHeight/numTurns;
  for (int coil = 0; coil < numTurns; coil = coil + 1) {
    bezier(.5*width + .5*springW, .1*height + (coil*springSegmentH),
           .5*width - .7*springW, .1*height+ (coil*springSegmentH),
           .5*width - .7*springW, .1*height + springSegmentH + (coil*springSegmentH),
           .5*width + .5*springW, .1*height + springSegmentH + (coil*springSegmentH));
  }
  fill(0,0,255);
    rect(.41*width,  numTurns*springSegmentH + .095*height , .2*width, .05*height);
  time+=.05;
}
