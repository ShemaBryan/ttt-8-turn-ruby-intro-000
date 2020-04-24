def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end




def turn(board)
   puts "Please enter 1-9:"
   user_input = gets.strip
   index = input_to_index(user_input)
   if valid_move?(board, index)
      move(board, index, current_player(board))
      turn(board)
end

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



def input_to_index(user_input)
   user_input.to_i - 1
   index -= 1
   return index

   def valid_move?(board, index)
     def position_taken?(array, index)
       if array[index] == " " || array[index] == "" || array[index] == nil
         return false
       else
         return true
       end

       def on_board?(num)
           if num.between?(0, 8) == true
             return true
           else
             return false
           end
           if (position_taken?(board, index)) == false && (on_board?(index) == true)
             return true
           else
             return false
           end

           def move(board, index, character = "X")
             board[index] = character
             return board
           end
           def turn (board)
             puts "Please enter 1-9:"
             num = gets.chomp
             index = input_to_index(num)
             if valid_move?(board, index) == true
               move(board, index)
               display_board(board)
             else
               turn(board)
             end
           end
