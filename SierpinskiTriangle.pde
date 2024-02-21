public void setup()
{
  background(209,244,255);
  size(800,800);
  sierpinski(160,640,480); //480
}

public void mouseDragged()//optional
{

}

public void sierpinski(int x, int y, int len) 
{
  if(len <= 20)
  {
    triangle(x, y, x+len/2, y-len, x+len, y);
    fill(255,202,229);
  }
  else 
  {
    sierpinski(x,y,len/2);  
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);  
  }
}
