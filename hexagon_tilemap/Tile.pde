class Tile{
  float centx;
  float centy;
  float radius;
  float angle = TWO_PI / 6;
  boolean fill = false;
  color c;
  
  Tile(float x, float y, float r)
  {
    centx = x;
    centy = y;
    radius = r;
  }
  
  void draw() {
    if(fill)
    {
      fill(c);
    }
    beginShape();
    for (float a = PI/6; a < TWO_PI; a += angle) {
    float sx = centx + cos(a) * radius;
    float sy = centy + sin(a) * radius;
    vertex(sx, sy);
    }
    endShape(CLOSE);
    }
    
    //utility functions
    float centx()
    {
      return centx;
    }
    float centy() 
    {
      return centy;
    }
    color getColour()
    {
      return c;
    }
    void setFillColour(color col)
    {
      fill = true;
      c = col;
    }
    
  }
