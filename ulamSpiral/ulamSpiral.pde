
int x, y;
int cols=100;
int rows = 100;
int cell_width;
int cell_height;

int step=1;
int stepsThisRound = 1;
int direction = 0;
int sides = 0;

void setup() {
  size(1080, 1080);
  x = width/2;
  y = height/2;
  cell_width = width/cols;
  cell_height = height/rows;
  textAlign(CENTER);
  background(255);
  fill(0);
  textSize(24);
}

void draw() {


  for (int i = step; i < step+stepsThisRound; i++) {
    if (isPrime(i)) {
      //text(i, x, y);
      noStroke();
      fill(random(25), random(150), random(255), 200);
      int growth=0;
      int r = 5;
      if (x > 10 && x < width-10 && y > 10 && y < height -10) {
        if (get(x+cell_width, y) != color(255)) growth++;
        if (get(x+cell_width, y+cell_height) != color(255)) growth++;
        if (get(x, y+cell_height) != color(255)) growth++;
        if (get(x-cell_width, y+cell_height) != color(255)) growth++;
        if (get(x-cell_width, y) != color(255)) growth++;
        if (get(x-cell_width, y-cell_height) != color(255)) growth++;
        if (get(x, y-cell_height) != color(255)) growth++;
        if (get(x+cell_width, y-cell_height) != color(255))growth++;
      }
      circle(x, y, r+growth*3);
    }
    if (direction%4 ==0) x += cell_width;
    if (direction%4 ==1) y -= cell_height;
    if (direction%4 ==2) x -= cell_width;
    if (direction%4 ==3) y += cell_height;
  }

  sides++;
  if (sides%2==0) {
    stepsThisRound++;
    step--;
  }
  direction++;
  step+=stepsThisRound;
  if (step>40000) {noLoop();
  save("spiral.png");
  }
}

boolean isPrime(int a) {
  for (int i = 2; i < (int)sqrt(a); i++) {
    if (a%i==0) return false;
  }
  return true;
}
