int rollnum =0;
void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(0);
  int sum =0;
  for (int y=0; y<=300; y+=100)
  {
    for (int x=0; x<=300; x+=100) {
      Die bob = new Die(x, y);
      bob.show();
      if(rollnum==1)        
        sum++;
      else if (rollnum==2)
        sum+=2;
      else if (rollnum==3)
        sum+=3;
      else if (rollnum==4)
        sum+=4;
      else if (rollnum==5)
        sum+=5;
      else
        sum+=6;
    }
    fill(255, 38, 0);
  }
  textSize(20);
  text("The total number of dots displayed is: " +sum, 40, 430);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  Die(int x, int y) //constructor
  {
    roll();
    myX=x;
    myY=y;
  }
  void roll()
  {

    rollnum = (int)(Math.random()*6+1);
  }
  void show()
  {
    noStroke();
    fill((int)(Math.random()*100+120), (int)(Math.random()*100+120), (int)(Math.random()*100+120));
    rect(myX, myY, 80, 80);
    fill((int)(Math.random()*100), (int)(Math.random()*100), (int)(Math.random()*100));
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
  }
}
