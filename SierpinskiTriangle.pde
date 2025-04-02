int len = 700;

public void setup()
{
  size(700,700);
  background(220);
}

public void draw()
{
  fill(0);
  sierpinski(0,height, len);
}

//public void mouseMoved()//optional
//{
//  len = 0+mouseX;
//}

public void sierpinski(int x, int y, int len) 
{
  if (len <= 25)
  {
   triangle((float)x, (float)y, (float)(x+len), (float)y, (float)(x+len/2), (float)(y-len));
  }
  else 
  {
   sierpinski(x,y,len/2);
   sierpinski(x+len/2,y,len/2);
   sierpinski(x+len/4,y-len/2,len/2);
  }
}
