String option = "1D";

void setup() 
{
  size(1200, 1200, P3D);
}

void draw()
{
  background(0);

  if (option == "1D")
  {
    fill(255, 0, 0);
    rect(50, 50, 85, 65, 15, 0, 0, 15);
    fill(255);
    textSize(36);
    text("1D", 72.5, 95); 
    
    for (int i = 0; i < 5; i++)
    {
      fill(i == 2 ? color(50, 125, 200) : color(255));
      square(252.5 + 140 * i, 537.5, 125);
      fill(255, 0, 0);
      textSize(48);
      text(i, 305 + 140 * i, 615); 
    }
  }
  else
  {
    fill(255);
    rect(50, 50, 85, 65, 15, 0, 0, 15);
    fill(0);
    textSize(36);
    text("1D", 72.5, 95);
  }
  
  if (option == "2D")
  {
    fill(255, 0, 0);
    rect(135, 50, 85, 65, 0, 15, 15, 0);
    fill(255);
    textSize(36);
    text("2D", 157.5, 95); 
    
    for (int i = 0; i < 3; i++)
    {
      for (int j = 0; j < 3; j++)
      {
        fill(i == 1 && j == 1 ? color(50, 125, 200) : color(255));
        square(397.5 + 140 * i, 397.5 + 140 * j, 125);
        fill(255, 0, 0);
        textSize(48);
        text(j + ", " + i, 428.75 + 140 * i, 475 + 140 * j); 
      }
    }
  }
  else
  {
    fill(255);
    rect(135, 50, 85, 65, 0, 15, 15, 0);
    fill(0);
    textSize(36);
    text("2D", 157.5, 95); 
  }
}

void mousePressed()
{
  if ((mouseX > 50 && mouseX < 135) && (mouseY > 50 && mouseY < 115))
  {
    option = "1D";
  }
  else if ((mouseX > 135 && mouseX < 220) && (mouseY > 50 && mouseY < 115))
  {
    option = "2D";
  }
}
