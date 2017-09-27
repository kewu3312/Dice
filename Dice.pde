void setup()
{
	size(320,350);
	background (0);
	noLoop();
}
void draw()
{
  for(int y=1; y<=320; y=y+55  ) 
  {
    for (int x=1; x<=320; x=x+55 )
    {
      Die bob = new Die(x,y);
      bob.roll();
      bob.show();
    }
  }
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{

	



	//variable declarations here
	int myX, myY,num;
	
	Die(int x, int y) //constructor
	{

		 myX=x;
    	 myY=y;
    	 
    	 
		//variable initializations here
	}
	void roll()
	{
		num=(int)((Math.random()*6)+1);
	}
	void show()
	{
	noStroke();
    fill(255,0,0);
    rect(myX,myY,50,50);
    fill(255);
    if (num==1)
    	ellipse(myX+25, myY+25, 10, 10);
		//your code here
	}
}

