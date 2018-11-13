int x;
 int y;
 int c;
 Bacteria[] bs;

 void setup()   
 { 
   size(400,400);
   background(255,255,255);
   frameRate(15);
   x = 200;
   y = 200;
   c = 0;
   bs = new Bacteria[10];
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
  int myX, myY, myColor;
  Bacteria() 
  {
    myX = x;
    myY = y;
    myColor = c;
  }
  
  void move()
  {
    if (mouseX > myX)
    {
      myX = myX + (int)(Math.random()*20)-5;
    } else {
      myX = myX + (int)(Math.random()*20)-15;
    }
    if (mouseY > myY)
    {
      myY = myY + (int)(Math.random()*20)-5;
    } else {
      myY = myY + (int)(Math.random()*20)-15;
    }
    show();
  }
  
  void show()
  {
    stroke(myColor);
    ellipse(myX, myY, 20, 20);
  }
  
}    
