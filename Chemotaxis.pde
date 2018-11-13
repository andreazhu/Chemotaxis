int x;
 int y;
 int c;
 int s;
 Bacteria[] bs;

 void setup()   
 { 
   noStroke();
   size(400,400);
   background(255,255,255);
   frameRate(15);
   x = 200;
   y = 200;
   c = 0;
   s = 10;
   bs = new Bacteria[3];
   for(int i = 0; i < bs.length;i++)
   {
     bs[i] = new Bacteria();
   }
 } 

 void draw()   
 { 
   for(int i = 0; i < bs.length;i++)
   {
     bs[i].move();
   }
 }  

class Bacteria    
{     
  int myX, myY, myColor, mySize;
  Bacteria() 
  {
    myX = x;
    myY = y;
    myColor = c;
    mySize = s;
  }
  
  void move()
  {
    if (mouseX > myX)
    {
      myX = myX + (int)(Math.random()*2 + 1)*mySize;
    } else {
      myX = myX - (int)(Math.random()*2 + 1)*mySize;
    }
    if (mouseY > myY)
    {
      myY = myY + (int)(Math.random()*2 + 1)*mySize;
    } else {
      myY = myY - (int)(Math.random()*2 + 1)*mySize;
    }
    show();
  }
  
  void show()
  {
    fill(255,0,0);
    ellipse(myX, myY, mySize, mySize);
  }
  
}    
