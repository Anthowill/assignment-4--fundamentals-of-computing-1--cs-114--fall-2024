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
    return;
  }
}

void keyPressed(){
  if(gameOver){
    println("The game has ended. Please reset to play again.");
    return;
  }
  
  int cell = int(key) - 48;
  
  if(cell >= 0 && cell <= 8){
    if(!playerTurn){
      print("It's the computer's turn. Please wait...");
      return;
    }
    
    if(board[cell] == 0){
      board[cell] = 2;
      println("You placed O at position " + cell);
      
      if(checkWinner(2)){
        println("You win!");
        gameover = true;
        return;
      }
      
      if(isBoardFull()){
        println("It's a draw!");
        gameover=true;
        return;
      }
      
      
