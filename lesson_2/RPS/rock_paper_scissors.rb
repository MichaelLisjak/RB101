# Variables & Constants
VALID_PLAYERS = %w(r p sc l sp)
PLAYER_CHOICES = <<-MSG
Choose one:
"r" for rock
"p" for paper
"sc" for scissors
"l" for lizard
"sp" for spock
MSG
score = [0, 0]
# Method definitions
def promt(message)
  puts("=> #{message}")
end

def display_choice_fully(player, computer)
  abbreviations = {
    "r" => "rock",
    "p" => "paper",
    "sc" => "scissors",
    "l" => "lizard",
    "sp" => "spock"
  }
  puts("You chose: #{abbreviations[player]}; " \
    "Computer chose: #{abbreviations[computer]}")
end

def beats?(first, second)
  what_beats_what = {
    "r" => ["sc", "l"],
    "p" => ["r", "sp"],
    "sc" => ["p", "l"],
    "l" => ["sp", "p"],
    "sp" => ["sc", "r"]
  }
  first_wins = false
  what_beats_what.each do |k, v|
    if first == k && v.include?(second)
      first_wins = true
    end
  end
  first_wins
end

def display_results(player, computer)
  if beats?(player, computer)
    promt("You won this round!")
  elsif beats?(computer, player)
    promt("Computer won this round!")
  else
    promt("it's a tie!")
  end
end

def declare_grand_winner(player, computer, score)
  if beats?(player, computer)
    score[0] += 1
  elsif beats?(computer, player)
    score[1] += 1
  else
    score[0] += 1
    score[1] += 1
  end
  if score[0] == 3
    promt("You are the grand winner of the match!")
    score[0] = 0
    score[1] = 0
  elsif score[1] == 3
    promt("the computer is the grand winner of the match")
    score[0] = 0
    score[1] = 0
  end
end
# Program logic
loop do
  player = ''
  loop do
    promt(PLAYER_CHOICES)
    player = gets.chomp
    if VALID_PLAYERS.include?(player)
      break
    else
      promt("That's not a valid player")
    end
  end
  computer = VALID_PLAYERS.sample

  display_choice_fully(player, computer)
  display_results(player, computer)
  declare_grand_winner(player, computer, score)
  p "score variable after method invocation: #{score}"

  promt("Do you want to play again? press y for yes")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
