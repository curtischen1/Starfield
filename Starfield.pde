Star[] bob = new Star[3000];
void setup()
{
  size(800, 800);
  frameRate(15);
  for (int i = 0; i < bob.length; i++) {
    bob[0] = new Starship();
    bob[i] = new Star();
  }
}
void draw()
{
  background(84, 45, 200);
  for (int i = 0; i < bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
  bob[0].show();
  bob[0].move();
}
class Star
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Star() {
    myX = 400;
    myY = 400;
    myColor = ((int)(Math.random()*256));
    mySpeed = Math.random() * 10;
    myAngle = Math.random() * 2 * Math.PI;
  }

void move() {
    myX = myX + mySpeed*Math.cos(myAngle);
    myY = myY + mySpeed*Math.sin(myAngle);
  }
  void show() {
    fill(myColor, (int)(Math.random()*256), (int)(Math.random()*256));
    ellipse((float)myX, (float)myY, 5, 5);
  }
}
  class Starship extends Star
  {
    Starship() {
      myX = 400;
      myY = 400;
      mySpeed = 0;
    }
    void show() {
       fill((int)(Math.random()*256));
      triangle((float)myX, (float)myY, (float)myX-20, (float)myY+40, (float)myX+20, (float)myY+40);
   
    }
    void move() {
      if (mouseX > myX && myX < 600) {
        myX = myX + 10;
      } else if (mouseX < myX && myX >200) {
        myX = myX - 10;
      }
      if (mouseY > myY && myY < 600) {
        myY = myY + 10;
      } else if (mouseY < myY && myY > 200) {
        myY = myY - 10;
      }
    }
  }
