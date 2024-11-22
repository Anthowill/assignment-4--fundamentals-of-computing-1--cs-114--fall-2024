int cellSizeX, cellSizeY;

void drawBoard() {
  cellSizeX = width/3;
  cellSizeY = height/3;
  
  stroke(0);
  line(cellSizeX, 0, cellSizeX, width);
  line(2 * cellSizeX , 0, 2 * cellSizeX, width);
  line(cellSizeY, 0, cellSizeY, height);
  line(2 * cellSizeY, 0, 2 * cellSizeY, height);
  
  for (int index = 0; index<9;indexx++) {
  int x = index % 3;
  int y = index / 3;
  float cellCordinateX = x *cellSizeX+cellSizeX/2;
  float cellCordinateY = y *cellSizeY+cellSizeY/2;
  
    if(board[i]==1) {
      drawCross(cellCordinateX,cellCordinateY);
    }else if (board[i] == 2) {
      drawCircle(cellCordinateX,cellCordinateY);
    }
  }
