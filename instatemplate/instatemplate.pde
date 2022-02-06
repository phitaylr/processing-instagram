color[] colors;
int maxd = 0;
int inframe=0;

void setup() {
  //size(1080, 1350);
  size(540, 675);
  colors = new color[1000];
  for (int i=0; i<1000; i++)
    colors[i] = color(0, 255, 255, 100);
}


void draw() {
  drawBG();
  inframe++;

  
  saveFrame("frames/out-####.png");
}

void drawBG() {
  background(0, 200, 0);
  strokeWeight(4);
  for (int i = -250; i < width+250; i+=15) {
    stroke(0, map(i, 0, width, 150, 255), 0);
    line(i+250, 0, i, height);
  }
}

void keyPressed() {
  if (keyCode==UP) {
   
  } else if (keyCode==DOWN) {
    
  } else if(key=='s'){
     save("out"+frameCount+".png"); 
  }
}
