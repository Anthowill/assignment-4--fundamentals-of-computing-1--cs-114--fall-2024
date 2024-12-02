void drawCross(float cellCordinateX, float cellCordinateY){
  float size = min(cellSizeX,cellSizeY);
  
  line(cellCordinateX - size/2,cellCordinateY-size/2,cellCordinateX+size/2,cellCordinateY+size/2);
  line(cellCordinateX - size/2,cellCordinateY+size/2,cellCordinateX+size/2,cellCordinateY-size/2);
}

void drawCircle(float cellCordinateX, float cellCordinateY){
  float size = min(cellSizeX,cellSizeY);
  
  ellipse(cellCordinateX,cellCordinateY, size, size);}
