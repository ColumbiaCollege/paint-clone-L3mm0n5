//Caleb - Paint
color cursorcolor = 0;
int green = 0;
int red =0;
int blue=0;
int step = 10;
void setup() {
  size(600, 400);
  background(255);
}


void draw() {
  stroke(0);
  //more green button
  fill(0, green, 0);
  rect(0, 0, 50, 50);
  if (mousePressed && mouseX<50 && mouseY<50) {
    green = green +step;
  } 
  //less green button
  fill(0, green, 0);
  rect(50, 0, 50, 50);
  if (mousePressed && 50<mouseX && mouseX<100 && mouseY<50) {
    green = green -step;
  }
  //more red button
  fill(red, 0, 0);
  rect(100, 0, 50, 50);
  if (mousePressed && 100<mouseX && mouseX<150 && mouseY<50) {
    red = red + step;
  }
  //less red button
  fill(red, 0, 0);
  rect(150, 0, 50, 50);
  if (mousePressed && 150<mouseX && mouseX<200 && mouseY<50) {
    red = red - step;
  }
  //more blue button
  fill(0, 0, blue+25);
  rect(200, 0, 50, 50);
  if (mousePressed && 200<mouseX && mouseX<250 && mouseY<50) {
    blue = blue + step;
  }
  //less blue button
  fill(0, 0, blue+25);
  rect(250, 0, 50, 50);
  if (mousePressed && 250<mouseX && mouseX<300 && mouseY<50) {
    blue = blue - step;
  }
  cursorcolor = color(red, green, blue); 

  //drawing part
  noStroke();
  if (mousePressed) {
    fill(cursorcolor);
    ellipse(mouseX, mouseY, 8, 8);
  }
}
