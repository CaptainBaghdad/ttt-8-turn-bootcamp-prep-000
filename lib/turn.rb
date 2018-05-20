



def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} " 
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} " 
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} " 
 puts "-----------"
 
 
end


def move(board, position, token = "X")
    position = position.to_i
    board[position - 1] = token
end



def input_to_index(user_input)
 a =  user_input.to_i
 a -1

end


def valid_move?(board, position)
    position = input_to_index(position)
    if board[position] < 0 || board[position] > 8 
      puts board[position]
      return false
    end
end

