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
      
      playerTurn = false;
      computerMove();
      
      if(isBoardFull()){
        println("It's a draw!");
        gameOver = true;
      } else{
        println("Game is still in play.");
        playerTurn=true;
      }
    }else{
      println("This square is already taken. Please choose another.");
    }
  }else{
    println("Invalid key pressed. Please press a number between 0 and 8.");
  }
}

void computerMove(){
  ArrayList<Integer> availableMoves = new ArrayList<Integer>();
  
  for(int index=0; index<9; index++){
    if(board[index] == 0){
      availableMoves.add(index);
    }
  }
  
  if(availableMoves.size() > 0){
    int move = availableMoves.get((int) random(availableMoves.size()));
    board[move] = 1;
    println("Computer Placed X at position" + move);
  }
  
  if(checkWinner(1)){
    print("Computer wins!");
    gameOver = true;
    return;
  }
  
  if(isBoardfull()){
    println("It's a draw!");
    gameOver = true;
    return;
  }
  
  println("Game is still in play.");
  playerTurn = true;
}

boolean checkWinner(int player){
  int[][] winPatterns = {
    {0,1,2},{3,4,5},{6,7,8},
    {0,3,6},{1,4,7},{2,5,8},
    {0,4,8},{2,4,6}
  };
  
  for(int[][] pattern : winPatterns){
    if(board[pattern[0]] == player && board[pattern[1]] ==player && board[pattern[2]] == player){
      return true;
    }
  }
  
  return false;
}

boolean IsBoardFull(){
  for(int index=0; index<9;index++){
    if(board[index]==0){
      return false;
    }
  }
  return true;
}
