Bacteria [] bob;
class Bacteria
{
  int myX, myY, myColor;
  Bacteria()
  {
  myX = 300;
  myY = 300;
  myColor = color(0,(int)(Math.random()*256)+200, 200);
  }
  void walk()
  {

    if (mousePressed == false)
    {
      if (mouseX > myX)
        myX = myX + (int)(Math.random()*7)-2;
      else
        myX = myX + (int)(Math.random()*7)-4;
      if (mouseY > myY)
        myY = myY + (int)(Math.random()*7)-2; 
      else
        myY = myY + (int)(Math.random()*7)-4; 
    }
   
    
  }
  void show() {
    fill(myColor);
    tint(10);
    ellipse(myX, myY, 20, 20);
  }
}
void setup() {
  size(500,500);
  bob = new Bacteria[200];
  for(int i = 0; i < bob.length; i++) {
    bob[i] = new Bacteria();
  }
  
}
void draw() {
  background(0);
  for(int i = 0; i<bob.length; i++) {
    bob[i].show();
    bob[i].walk();
  }
}
