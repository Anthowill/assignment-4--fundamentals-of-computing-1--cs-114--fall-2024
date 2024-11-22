int[] board = new int[9];
boolean gameOver = false;
boolean playeTurn = false;

void setup() {
  size(500, 500);
  
  for(int index = 0; index < 9; index++){
    board[index] = 0;
  }

  println("Press a number between 0 and 8 to place your O.");
  println("Computer plays X first.");
  
  computerMove();
}


void draw() {
  background(255);
  drawBoard();
  
  if(gameOver){
    println("The Game has ended.Please reset to plat again.");
  }
}
