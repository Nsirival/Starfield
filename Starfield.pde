
Particle[] hai;
void setup()
{
  size(400, 400);
  noStroke();
  hai = new Particle[100];
  for (int i = 0; i < 5; i++){
    hai[i] = new OddballParticle();
  }
  for (int i = 5; i < 100; i++) {
    hai[i] = new Particle();
  }
}
void draw()
{
  fill(0, 10);
  rect(0, 0, 400, 400);
  for (int i = 0; i < hai.length; i ++) {
    hai[i].move();
    hai[i].show();
  }
}
class Particle
{
  int  col;
  double ang, spdX, spdY, myX, myY, rad;
  Particle() {
    myX = 200;
    myY = 200;
    col = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ang = (Math.random()*2*Math.PI);
    spdX = (Math.random()*4) * Math.cos(ang);
    spdY = (Math.random()*4) * Math.sin(ang);
    rad = 10;
  }
  void move() {
    myX = myX+spdX;
    myY = myY+spdY;
  }
  void show() {
    fill(color(col), 90);
    noStroke();
    ellipse((float)myX, (float)myY, (float)rad, (float)rad);
  }
}

class OddballParticle extends Particle
{
  OddballParticle() {
    myX = 200;
    myY = 200;
    col = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ang = (Math.random()*2*Math.PI);
    spdX = (Math.random()*4) * Math.cos(ang);
    spdY = (Math.random()*4) * Math.sin(ang);
    rad = 10;
  }
  void move() {
    myX = myX+(int)(Math.random()*7)-3;
    myY = myY+(int)(Math.random()*7)-3;
  }
  void show() {
    fill(color(col), 90);
    stroke(0, 10);
    ellipse((float)myX, (float)myY, (float)rad, (float)rad);
  }
}



