 //declare bacteria variables here

 void setup()   
 {     
 	size(400,400);//initialize bacteria variables here
 	//frameRate(1);   
 }   
 Bacteria b;
 void draw()   
 {    
 	background(255);//move and show the bacteria
 	Bacteria[] b = new Bacteria[8]; //= new Bacteria (200,200);
 	for (int i = 0; i < b.length;i ++)
 	{
 		b[i] = new Bacteria();//(int)(Math.random()*400),(int)(Math.random()*400));
 		b[i].move();
 		b[i].show();
 	}
 	
 }  
 class Bacteria    
 {     
 	int myX, myY, myCol; //lots of java!
 	Bacteria()
 	{
 		myX=200;//(int)(Math.random()*400);
 		myY=200;//(int)(Math.random()*400);
 		myCol=color(255,0,0);
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}
 	void show()
 	{
 		stroke(myCol);
 		strokeWeight(10);
 		point(myX,myY);
 		
 	}
 }    