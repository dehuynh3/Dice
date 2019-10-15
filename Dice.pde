void setup()
{


 size(800, 300);
  noLoop();
}
void draw()
{
  int sum=0;

  background(225);

  for(int myX=0;myX<300;myX+=100)
  {
    for (int myY=0;myY<300;myY+=100)
    {
    Die first=new Die(myX,myY);
    first.show();
    sum+=first.mynum;
    }
  }
 
textSize(70);
 text(sum, 600, 150);
 textSize(50);
 text("Total = ", 400, 150);
 
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myx,myy,mysize,mynum;
  Die(int x, int y) //constructor
  {
  myx=x;
  myy=y;
  mysize=75;
  roll();
 
  }
  void roll()
  {
  mynum=(int)(Math.random()*6+1);  
  }
  void show()
  {
      fill(255);
      rect(myx, myy, mysize, mysize);
      fill(0);
 stroke(255);    
if (mynum==1) {
ellipse(myx+mysize/2,myy+mysize/2,20,20);      
}
else if (mynum==2)
{
 ellipse(myx+20, myy+20, 20, 20);
 ellipse(myx+60,myy+60,20,20);
}
else if (mynum==3)
{
 ellipse(myx+15, myy+15, 20, 20);
 ellipse(myx+60,myy+60,20,20);
 ellipse(myx+mysize/2,myy+mysize/2,20,20);
}
else if (mynum==4)
{
 ellipse(myx+15, myy+15, 20, 20);
 ellipse(myx+60,myy+60,20,20);
 ellipse(myx+60, myy+15, 20, 20);
 ellipse(myx+15,myy+60,20,20);
 
}
else if (mynum==5)
{
 ellipse(myx+15, myy+15, 20, 20);
 ellipse(myx+60,myy+60,20,20);
 ellipse(myx+60, myy+15, 20, 20);
 ellipse(myx+15,myy+60,20,20);
 ellipse(myx+mysize/2,myy+mysize/2,20,20);
}
  else
{
 ellipse(myx+15, myy+15, 20, 20);
 ellipse(myx+60,myy+60,20,20);
 ellipse(myx+60, myy+15, 20, 20);
 ellipse(myx+15,myy+60,20,20);
 ellipse(myx+60, myy+38, 20, 20);
 ellipse(myx+15,myy+38,20,20);
 
}

  }
}
