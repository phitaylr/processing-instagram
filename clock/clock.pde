import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;
 PFont font;
void setup() {
  size(800, 800);
 
  font = loadFont("BerlinSansFBDemi-Bold-60.vlw");
}

void draw() {
  strokeWeight(1);
  stroke(0);
  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss.S");
  LocalDateTime now = LocalDateTime.now();
  int hr = now.getHour();
  int min = now.getMinute();
  float sec = now.getSecond();
  float hrAngle = (hr-3)/12.*2*PI;
  float minAngle = (min-15)/60.*2*PI;
  float secAngle = (sec-15)/60.*2*PI;

  background(255);
  fill(255);
  strokeWeight(10);
  //fill(200, map(sec, 0, 60, 200, 255), map(sec, 0, 60, 200, 255));
  fill(255,255,255);
  strokeWeight(15);
  circle(width/2, height/2, width*.9);
  strokeWeight(3);
  for(int r=(int)(.9*width);r>=0; r-=2){
    stroke( map(r*sec,0,60*.9*width,200,255), 200, map(r*sec,0,60*.9*width,255,200));
    circle(width/2, height/2, r);
  }
  stroke(0);
  fill(0);
  textAlign(CENTER);
  textSize(80);
  textFont(font);
  for (int i=-2; i < 10; i++) {
    text((i+3), width/2+.375*width*cos(i*PI/6), height/2+ .375*width*sin(i*PI/6)+.018*height);
  }
  strokeWeight(2);
  for (int i=0; i < 60; i++) {
    line( width/2+.42*width*cos(i*PI/30), height/2+ .42*width*sin(i*PI/30), width/2+.45*width*cos(i*PI/30), height/2+ .45*width*sin(i*PI/30));
  }

  strokeWeight(20);
  stroke(0,0,200, map(hr,0,12,100,255));
  line( width/2+cos(hrAngle), height/2+ sin(hrAngle), width/2+.25*width*cos(hrAngle), height/2+ .25*width*sin(hrAngle));
  stroke(0,0,200, map(min,0,12,100,255));
  strokeWeight(15);
  line( width/2+cos(minAngle), height/2+ sin(minAngle), width/2+.33*width*cos(minAngle), height/2+ .33*width*sin(minAngle));
  stroke(0, 200, 0,  150);
  line( width/2+cos(secAngle), height/2+ sin(secAngle), width/2+.4*width*cos(secAngle), height/2+ .4*width*sin(secAngle));
}
