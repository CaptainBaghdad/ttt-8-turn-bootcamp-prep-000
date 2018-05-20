



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
    if board[position] < 0 || board[position] > 9 
      puts board[position]
      return false
    end
end

# check if position is taken
def position_taken?(board, position)
    if ((board[input_to_index(position)] == "X") || (board[input_to_index(position)] == "O"))
        return true
    else
        return false
    end
end



def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    if (valid_move?(board, input_to_index(input)))
        move(board, input_to_index(input))
        display_board(board)
    else
        if (!(valid_move?(board, input_to_index(input))))
            turn(board)
        end
    end
end