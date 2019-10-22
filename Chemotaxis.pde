 int x = 250;
 int y = 250;

 Bacteria [] bob;	
 void setup()   
 {     
 	size(500,500);
 	background(192);
 	strokeWeight(1);
 	noStroke();
 	bob = new Bacteria [1000];
 	for(int i = 0; i < bob.length; i++)
 	{
 	bob[i]= new Bacteria();
 	}
 }   
 void draw()   
 { 
 	background(192);
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
 		myX = mouseY;
 		myY = mouseX;
 		mySiz = 5;
 		myColor = color(random(0,255),random(0,255),random(0,255));
 	}
 	void move()
 	{
	 		myX = myX + (int)(Math.random()*5)-2;
	 		myY = myY + (int)(Math.random()*5)-2;
 	}
 	void show()
 	{
		fill(myColor);
 		ellipse(mouseX + myX, mouseY + myY, mySiz, mySiz);
 	}
 }    