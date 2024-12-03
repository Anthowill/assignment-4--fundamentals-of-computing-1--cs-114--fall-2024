void drawCross(float cellCordinateX, float cellCordinateY){
  float size = min(cellSizeX,cellSizeY);

  stroke(255, 0, 0);
  strokeWeight(4);

  line(cellCordinateX - size/2,cellCordinateY-size/2,cellCordinateX+size/2,cellCordinateY+size/2);
  line(cellCordinateX - size/2,cellCordinateY+size/2,cellCordinateX+size/2,cellCordinateY-size/2);
}

void drawCircle(float cellCordinateX, float cellCordinateY){
  float size = min(cellSizeX,cellSizeY);

  noFill();
  stroke(0, 0, 255);
  strokeWeight(4);

  ellipse(cellCordinateX,cellCordinateY, size, size);}
