require 'pry'
# constants
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

STARTING_PLAYER = "choose"

# method definitions
def promt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'cls'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----|-----|-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----|-----|-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def joinor(arr, delimeter = ', ', last_delimeter = 'or ')
  case arr.size
  when 0 then arr.first.to_s
  when 1 then arr.first.to_s
  when 2 then arr.first.to_s + " " + last_delimeter + arr.last.to_s
  else
    arr[0..-2].join(delimeter) + delimeter + last_delimeter + arr[-1].to_s
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    promt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    promt "Sorry, that'S not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def defend_square(brd, mark)
  defence_squares = []
  WINNING_LINES.each do |line|
    if brd[line[0]] == mark &&
       brd[line[1]] == mark &&
       brd[line[2]] == INITIAL_MARKER
    defence_squares << line[2]
    elsif brd[line[0]] == mark &&
          brd[line[1]] == INITIAL_MARKER &&
          brd[line[2]] == mark
      defence_squares << line[1]
    elsif brd[line[0]] == INITIAL_MARKER &&
          brd[line[1]] == mark &&
          brd[line[2]] == mark
      defence_squares << line[0]
    end
  end
  defence_squares
end

def computer_places_piece!(brd)
  square = if !defend_square(brd, COMPUTER_MARKER).empty?
             defend_square(brd, COMPUTER_MARKER).sample
           elsif !defend_square(brd, PLAYER_MARKER).empty?
             defend_square(brd, PLAYER_MARKER).sample
           elsif brd[5] == ' '
             5
           else
             empty_squares(brd).sample
           end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

def determine_starting_player(starting_player)
  if starting_player == 'choose'
    loop do
      promt "Choose if either the 'player' or the 'computer' should start: "
      starting_player = gets.chomp

      if starting_player == 'player' || starting_player == 'computer'
        break
      else
        promt "not a valid choice"
      end
    end
  end
  starting_player
end

def alternate_player(player)
  case player
  when 'player'
    'computer'
  when 'computer'
    'player'
  end
end

def place_piece!(board, player)
  case player
  when 'player'
    player_places_piece!(board)
  when 'computer'
    computer_places_piece!(board)
  end
end

score = { "Player" => 0, "Computer" => 0 }

# game-loop
loop do
  board = initialize_board
  current_player = determine_starting_player(STARTING_PLAYER)

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    promt "#{detect_winner(board)} won!"
    score[detect_winner(board)] += 1
  else
    promt "It's a tie!"
  end
  if score.values.any? { |num| num >= 5 }
    promt "the winner is #{detect_winner(board)}"
    break
  end
  promt "current score is #{score}"
  promt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

promt "Thanks for playing Tic Tac Toe. Good bye!"
