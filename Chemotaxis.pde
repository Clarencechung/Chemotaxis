 int x = 250;
 int y = 250;

 Bacteria [] bob;	
 void setup()   
 {     
 	size(500,500);
 	background(192);
 	strokeWeight(1);
 	noStroke();
 	bob = new Bacteria [100];
 	for(int i = 0; i < bob.length; i++)
 	{
 	bob[i]= new Bacteria();
 	}
 }   
 void draw()   
 { 
 	for(int i = 0; i < bob.length; i++)
 	{
 	bob[i].move();
 	bob[i].show();
 	}
 	 
 }  
 class Bacteria    
 {     
 	int myX, myY, mySiz, myColor;
 	Bacteria()
 	{
 		myX = 250;
 		myY = 250;
 		mySiz = 5;
 		myColor = color(random(0,255),random(0,255),random(0,255));
 	}
 	void move()
 	{
 		// if (mouseX > x && mouseY > y)
 		{
	 		myX = myX + (int)(Math.random()*7)-3;
	 		myY = myY + (int)(Math.random()*7)-3;
 		}
 		// else
 		// {
	 		// myX = myX + (int)(Math.random()*5)-3;
	 		// myY = myY + (int)(Math.random()*5)-1;
 		// }
 	}
 	void show()
 	{
		fill(myColor);
 		ellipse(myX, myY, mySiz, mySiz);
 	}
 }    