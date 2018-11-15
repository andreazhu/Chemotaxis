/** Chemotaxis Project
  * Rainbow Bacteria Colony
  * Biased Random Walk towards Mouse
  * @author Andrea Zhu
  * @date   2018-11-15
  */

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
  for(int i = 0; i < bs.length;i++)
  {
    bs[i].move();
  }
}  
 
void mousePressed()
{
  redraw();
  background(255,255,255);
  r = 255;
  g = 0;
  b = 0;
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
      myX = myX + (int)(Math.random() *2) *mySize; //[0,2)
    } else {
      myX = myX - (int)(Math.random() *2) *mySize; //[0,2)
    }
    if (mouseY > myY)
    {
      myY = myY + (int)(Math.random() *2) *mySize; //[0,2)
    } else {
      myY = myY - (int)(Math.random() *2) *mySize; //[0,2)
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
    if( g<255 && r==255 && b==0)
    {
      g++;
    }
  
   if(g == 255 && r>0)
   {
     r--; 
   }
  
   if(r==0 && g==255 && b<255)
   {
     b++;
   }
  
   if(b==255 && g>0)
   {
     g--; 
   }

   if(r < 255 && g==0 && b==255)
   {
     r++;
   }

  if(r== 255 && b>0)
  {
     b--;
  }
  
  fill(r,g,b);
  }
  
}    
