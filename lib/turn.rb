def turn(board)
   puts "Please enter 1-9:"
   user_input = gets.strip
   index = input_to_index(user_input)
   if valid_move?(board, index)
      move(board, index, current_player(board))
      turn(board)
end
  board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]

display_board(board)
def input_to_index(user_input)
   user_input.to_i - 1
end
def move(board, index, player)
   board[index] = player
end
def position_taken?(board, index)
   if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      return false
   else
      return true
   end
end
def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index)
      return true
   end
end
