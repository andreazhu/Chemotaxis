int x;
int y;
int c;
int s;
int r;
int b;
int g;
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
   r = 255;
   g = 0;
   b = 0;
   s = 10;
   bs = new Bacteria[10];
   for(int i = 0; i < bs.length;i++)
   {
     bs[i] = new Bacteria();
   }
 } 

 void draw()   
 { 
   background(255,255,255);
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
      myX = myX + (int)(Math.random() *2) *mySize;
    } else {
      myX = myX - (int)(Math.random() *2) *mySize;
    }
    if (mouseY > myY)
    {
      myY = myY + (int)(Math.random() *2) *mySize;
    } else {
      myY = myY - (int)(Math.random() *2) *mySize;
    }
    show();
  }
  
  void show()
  {
    colorChange();
    ellipse(myX, myY, mySize, mySize);
  }
  
  void colorChange()
  {
    if( g<255 && r==255 && b==0){
    g++;
  }
  
  if(g == 255 && r>0){
   r--; 
  }
  
  if(r==0 && g==255 && b<255){
  
    b++;
  }
  
  if(b==255 && g>0){
   g--; 
  }

  if(r < 255 && g==0 && b==255){
    r++;
  }

  if(r== 255 && b>0){
     b--;
  }
  fill(r,g,b);
  }
}    
