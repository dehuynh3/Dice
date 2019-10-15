Die first=new Die(200,200);
void setup()
{
  size(800, 800);
  noLoop();
}
void draw()
{
  background(0);
  
  first.show();
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
  
  }
  void roll()
  {
  mynum=(int)(Math.random()*5+1);  
  }
  void show()
  {
      fill(255);
      rect(myx, myy, mysize, mysize); 
      fill(0); 
 stroke(255);     
ellipse(myx+mysize/2,myy/2,20,20);    

  }
}