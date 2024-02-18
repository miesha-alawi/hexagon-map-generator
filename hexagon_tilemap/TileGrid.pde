class TileGrid {
  Tile[][] grid;
  int cols, rows;
  float radius;
  
  //class constructor
  TileGrid(int ncol, int nrow, int rad)
  {
    //grid parameters
    cols = ncol;
    rows = nrow;
    radius = float(rad);
    
    //2D matrix of tile objects
    grid = new Tile[cols][rows];
    
    //inital x,y
    int x = int(sqrt(3)*radius);
    int y = int(radius);
    
    //cycle through all columns and rows and generate class object
    for(int i = 0; i < rows; i++) 
    {
      for(int j = 0; j < cols; j++)
      {
        grid[j][i] = new Tile(x,y,radius);
        x += radius*sqrt(3); //offset for the next row
      }
      y += (radius*3) /2;
      if((i+1)% 2==0)
        x=int(sqrt(3)*radius);
      else
        x=int(radius*sqrt(3)/2);
    }
    
  }
  
  void draw()
  {
    for( int i=0; i < rows ; i++ ){
      for( int j=0; j < cols; j++)
      {
        grid[j][i].draw();
      }
    }
  }
  
  Tile getTile(int col, int row)
  {
    return grid[col][row];
  }
}
