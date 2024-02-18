
TileGrid g;
int rad, nwide, nhigh;
color[] mainpallet = {#38F266, #38CAF2};

void setup()
{
size(1920,1080);
background(0);

//grid parameters
rad=60;
nhigh = height/100;
nwide = width/105;

//generate grid object
g = new TileGrid(nwide, nhigh, rad);

//choose colour
for(int i=0; i < nwide*nhigh; i++)
  {
    Tile selected = g.getTile(int(random(nwide)), int(random(nhigh)));
    selected.setFillColour(mainpallet[int(random(2))]);
  }
  
g.draw();
}

void draw()
{
  g.draw();
  
  
  
}


 
