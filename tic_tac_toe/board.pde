int cellSizeX, cellSizeY;

void drawBoard() {
  cellSizeX = width/3;
  cellSizeY = height/3;
  
  stroke(0);
  line(cellSizeX, 0, cellSizeX, width);
  line(2 * cellSizeX , 0, 2 * cellSizeX, width);
  line(cellSizeY, 0, cellSizeY, height);
  line(2 * cellSizeY, 0, 2 * cellSizeY, height);
