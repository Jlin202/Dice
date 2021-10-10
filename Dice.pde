void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(100);
  int sum = 0;
  for (int y=60; y<=420; y+=120)
  {
    for (int x=60; x<=420; x+=120)
      Die bob = new Die(x,y);
      bob.show();
    if (bob==1)
      sum++;
    else if (bob==2)
      sum+=2;
    else if (bob==3)
      sum+=3;
    else if (bob==4)
      sum+=4;
    else if (bob==5)
      sum+=5;
    else
      sum+=6;
  }
  textSize(50);
  text("The total number of dots displayed is: " + sum, 40, 480);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  Die(int x, int y) //constructor
  {
    roll();
    myX=x;
    myY=y;
  }
  void roll()
  {
    rollnum = (int)(Math.random()*6+1);
    sum = sum + rollnum;
  }
  void show()
  {
    noStroke();
    fill(100);
    rect(myX, myY, 80, 80);
    fill(0);
    if (rollnum==1) {
      ellipse(myX+40, myY+40, 15, 15);
    } else if (rollnum==2) {
      ellipse(myX+40, myY+40, 15, 15);
      ellipse(myX+60, myY+60, 15, 15);
    } else if (rollnum==3) {
      ellipse(myX+50, myY+40, 15, 15);
      ellipse(myX+50, myY+50, 15, 15);
      ellipse(myX+50, myY+60, 15, 15);
    } else if (rollnum==4) {
      ellipse(myX+40, myY+40, 15, 15);
      ellipse(myX+60, myY+40, 15, 15);
      ellipse(myX+40, myY+60, 15, 15);
      ellipse(myX+60, myY+60, 15, 15);
    } else if (rollnum==5) {
      ellipse(myX+50, myY+50, 15, 15);
      ellipse(myX+40, myY+40, 15, 15);
      ellipse(myX+60, myY+40, 15, 15);
      ellipse(myX+40, myY+60, 15, 15);
      ellipse(myX+60, myY+60, 15, 15);
    } else if (rollnum==6) {
      ellipse(myX+40, myY+40, 15, 15);
      ellipse(myX+60, myY+40, 15, 15);
      ellipse(myX+40, myY+50, 15, 15);
      ellipse(myX+60, myY+50, 15, 15);
      ellipse(myX+40, myY+60, 15, 15);
      ellipse(myX+60, myY+60, 15, 15);
    }
