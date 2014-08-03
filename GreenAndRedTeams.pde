PVector goalR, goalG;
ArrayList<AgentsGreen> agentsgreen;
ArrayList<AgentsRed> agentsred;
int x;
int ppx, ppy, kkx, kky, si;
color pixel, gre, re, pixel2;
String win;


void setup()
{
  frameRate(30);
  textAlign(CENTER);
  size(500, 500);
  agentsgreen = new ArrayList<AgentsGreen>();
  agentsred = new ArrayList<AgentsRed>();
  x=0;
  re= color(255, 102, 102);
  gre= color(0, 153, 76);
  for(int i = 0; i<100; i++)
  {
    goalG = new PVector(width-25, random(height));
    goalR = new PVector(25, random(height));
    agentsgreen.add(new AgentsGreen());
    agentsred.add(new AgentsRed());
  }
}

void draw()
{

  if (frameCount<100)
  {
    instructions();
  }
  else
  { 
    background(224, 224, 224);
    panel();
  
    if (x<0) //because red is drawn last, it is drawn on top
    {
      addgreen();
      addred();
    }
    else
    {
      addred();
      addgreen();
    }
    rules();
  }
}


void keyPressed()
{
   if (key=='r') x=x+1;
   if (key=='p') x=x-1;
   if (key=='0') setup();
}

