int cellSizeX, cellSizeY;

void drawBoard() {
  cellSizeX = width/3;
  cellSizeY = height/3;
  
  stroke(0);
  line(cellSizeX, 0, cellSizeX, width);
  line(2 * cellSizeX , 0, 2 * cellSizeX, width);
  line(0, cellSizeY, height, cellSizeY);
  line(0, 2 * cellSizeY, height, 2 * cellSizeY);
  
  for(int index = 0; index<9;index++){
    int x = index % 3;
    int y = index / 3;
    float cellCordinateX = x *cellSizeX+cellSizeX/2;
    float cellCordinateY = y *cellSizeY+cellSizeY/2;
  
    if(board[index] == 1){
      drawCross(cellCordinateX,cellCordinateY);
    }else if (board[index] == 2){
      drawCircle(cellCordinateX,cellCordinateY);
    }
  }
}
