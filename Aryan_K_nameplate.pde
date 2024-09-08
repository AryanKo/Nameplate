/*********************
 *Aryan Kotwal*
 * ICS 3U1 - Assignment 1 *
 **
 *    A Nameplate *
 **************************/

//Shapes
//ellipse(400,400,100,100);
//triangle(50,50,280,300,50,700);

void setup() {
  size(800, 400);
  //Methods are tricky and challenging but good practice for a programmer
  drawBackground();
  stroke(#FFFFFF);
  strokeWeight(5);
  outline (55,100);
  fill(#F50000);
  stroke(#FFFFFF);
  strokeWeight (3);
  drawA(100, 150);
  fill(#F50000);
  stroke(#FFFFFF);
  strokeWeight (3);
  drawR(200, 150);
  drawY (300, 150);
  drawA(400, 150);
  drawN (500, 150);
  drawK (650, 150);
}

// This is the letter A
void drawA(int x, int y) {
  rect(x, y, 15, 85);
  rect(x+15, y, 30, 20);
  rect(x+30, y, 15, 85);
  rect(x+15, y+35, 15, 20);
}

//This the letter R
void drawR (int x, int y) {
  triangle (x + 5, y + 40, x + 40, y + 85, x + 60, y + 85);
  rect (x, y, 15, 85);
  rect (x + 15, y, 40, 15);
  rect (x + 40, y + 15, 15, 20);
  rect (x + 15, y + 35, 40, 15);
}

//This is the letter Y
void drawY (int x, int y) {
  triangle ( x +25, y +40, x - 10, y, x + 10, y );
  triangle ( x +20, y +40, x + 30, y, x + 50, y );
  rect ( x + 15, y +35, 15, 50);
}

//This the letter N
void drawN (int x, int y) {
  triangle (x, y, x + 45, y + 85, x + 65, y +85);
  rect (x, y, 20, 85);
  rect (x + 45, y, 20, 85);
}

//This the letter K
void drawK (int x, int y) {
  triangle (x, y + 45, x + 55, y, x + 80, y);
  triangle (x, y + 30, x + 55, y + 85, x + 80, y + 85);
  rect (x, y, 15, 85);
}

//This is the outline
void outline (int x, int y) {
  noFill();
  rect (x, y, 700, 200);
 
}

void drawBackground() {
  // Top color = color(255,0,0);
  // Bottom color = color(0,255,0);
  for (int i = 0; i < 400; i++) {
    stroke(color(0, 255/400.0*i, 255 - 255/400.0*i));
    line(0, i, 800, i);
  }
}
