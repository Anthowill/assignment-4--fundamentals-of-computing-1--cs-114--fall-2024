int[] board = new int[9];
boolean gameOver = false;
boolean playeTurn = false;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  drawBoard();
}
