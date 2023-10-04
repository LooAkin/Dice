//reserve name
Die one;

void setup()
{
  size(1000, 900);
  background(175, 40, 40);
  textAlign(CENTER,CENTER);
  noLoop();
}
int total, totalOne, totalTwo, totalThree, totalFour, totalFive, totalSix;
void draw()
{
  fill(0);
  rect(820, 25, 150, 825);  
  total = 0;
  totalOne = 0;
  totalTwo = 0;
  totalThree = 0;
  totalFour = 0;
  totalFive = 0;
  totalSix = 0;
  int k = 50;
  while (k < 800){
    int i = 50;
   while (i < 850){ 
     one = new Die (k, i);  
     one.roll();
     one.show();
     i = i + 60;
   }
   k = k + 60;
  }
  textSize(20);
  text("TOTAL: ", 900, 75);  
  text(total, 900, 95);
  text("TOTAL ONES: ", 900, 150);  
  text(totalOne, 900, 170);
  text("TOTAL TWOS: ", 900, 205);  
  text(totalTwo, 900,225);
  text("TOTAL THREES: ", 900, 260);  
  text(totalThree, 900, 280);
  text("TOTAL FOURS: ", 900, 
  305);  
  text(totalFour, 900, 325);
  text("TOTAL FIVES: ", 900, 360);  
  text(totalFive, 900, 380);
  text("TOTAL SIXES: ", 900, 415);  
  text(totalSix, 900, 
  435); 
}
void mousePressed()
{
  redraw();
}

class Die
{
  boolean middle, upDown, downUp, middleTwo; 
  int myX, myY, pips;

  //three member functions
  Die(int x, int y) //constructor
  {
    middle = false;
    upDown = false;
    downUp = false;
    middleTwo = false;
    myX = x;
    myY = y;
    pips = (int) ((Math.random() * 6) + 1);
  }
  void roll()
  {
    if((pips == 1) || (pips == 3) || (pips == 5))
      middle = true;
      if (pips == 1)
      totalOne = totalOne + 1;
      if (pips == 3)
      totalThree = totalThree + 1;
      if (pips == 5)
      totalFive = totalFive + 1;
    if((pips == 2) || (pips == 5) || (pips == 3) || (pips == 4) || (pips == 6))
      downUp = true;
      if(pips == 2)
      totalTwo = totalTwo + 1;
    if ((pips == 4) || (pips == 5) || (pips == 6))
      upDown = true;
      if (pips == 4)
      totalFour = totalFour + 1;
    if (pips == 6){
      middleTwo = true;
      totalSix = totalSix + 1;
    }
  }
  void show()
  {
    fill(200, 30, 200);
    rect(myX-25, myY-25, 50, 50); 
    fill(30, 225, 30);
    if (middle == true)
      ellipse(myX, myY, 10, 10);
    if (middleTwo == true){
      ellipse(myX-15, myY, 10, 10);
      ellipse(myX+15, myY, 10, 10);
    }
    if (downUp == true){
      ellipse(myX-15, myY+15, 10, 10);
      ellipse(myX+15, myY-15, 10, 10);
    }
    if (upDown == true){
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
    }
 total = totalOne + 2 * totalTwo + 3 * totalThree + 4 * totalFour + 5 * totalFive + 6 * totalSix; 
  }
}
