'''
Tic Tac Toe is a 2 player game played on a 3x3 board. Each player takes a turn and
marks a square on the board. First player to reach 3 squares in a row, including diagonals,
wins. If all 9 squares are marked and no player has 3 squares in a row, then the game is a tie.
'''
'''
5-6. evaluate board method --< return: false is game is not over, true of game is over
- check if winner (own method, parameter is either X or O) return value: 0 no win, 1 win
  - initialize winner variable with -1
  - case statement that checks if parameter fullfills one of the 8 winning cases

- if no winner exists, check if board is full
  - if board is full, it is a tie, since no winner exists so far --> return true
  - display message saying it is a tie situation
- if winner exists, display winner and return true  
- if no winner exists and board is not full, return false
display winner or tie situation depending on return value from check_winner method
return true if game is over, false if not --> evaluate that in a main loop




'''

'''
1. Display the initial empty 3x3 board.
2. Ask the user to mark a square.
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!
'''
require 'pry'

# method definitions

def initialize_board
  index = 0
  empty_board = []
  9.times do
    empty_board[index] = ' '
    index += 1
  end
  empty_board
end

def display_board(board)
  puts ""
  puts "     |     |     "
  puts "  #{board[0]}  |  #{board[1]}  |  #{board[2]}  "
  puts "     |     |     "
  puts "-----|-----|-----"
  puts "     |     |     "
  puts "  #{board[3]}  |  #{board[4]}  |  #{board[5]}  "
  puts "     |     |     "
  puts "-----|-----|-----"
  puts "     |     |     "
  puts "  #{board[6]}  |  #{board[7]}  |  #{board[8]}  "
  puts "     |     |     "
end

def player_turn(board)
  player_input = 0
  valid_choice = false
  until valid_choice do
    puts "Please enter a position from 1 to 9: "
    puts "1|2|3\n4|5|6\n7|8|9"
    player_input = gets.chomp.to_i
    if board[player_input - 1] == ' ' && (player_input >= 1 && player_input <= 9)
      board[(player_input) - 1] = 'X'
      valid_choice = true
    else
      puts "number must be between 1 and 9 and still free"
    end
  end
end

def computer_turn(board)
  free_spaces = []
  board.each_with_index do |space, index|
    if space == ' '
      free_spaces << index
    end
  end
  board[free_spaces.sample] = 'O'
end

def check_winner(board, mark)
  is_winner = false
  
  if board[0] == mark && board[1] == mark && board[2] == mark then is_winner = true
  elsif board[3] == mark && board[4] == mark && board[5] == mark then is_winner = true
  elsif board[6] == mark && board[7] == mark && board[8] == mark then is_winner = true
  elsif board[0] == mark && board[3] == mark && board[6] == mark then is_winner = true
  elsif board[1] == mark && board[4] == mark && board[7] == mark then is_winner = true
  elsif board[2] == mark && board[5] == mark && board[8] == mark then is_winner = true
  elsif board[0] == mark && board[4] == mark && board[8] == mark then is_winner = true
  elsif board[2] == mark && board[4] == mark && board[6] == mark then is_winner = true
  end
  #binding.pry
  is_winner
end

def evaluate_board(board)
  if check_winner(board, 'X')
    puts "The player wins the match!"
    return true
  elsif check_winner(board, 'O')
    puts "The computer wins the match!"
    return true
  elsif board.include?(' ') == false
    puts "It's a tie!"
    return true
  else
    return false
  end
end

# program sequence
board = initialize_board
begin
  display_board(board)
  player_turn(board)
  if evaluate_board(board) == true
    display_board(board)
    break
  end
  computer_turn(board)
  display_board(board)
  if evaluate_board(board) == true
    display_board(board)
    break
  end  
end while evaluate_board(board) == false

puts "game is over!"


