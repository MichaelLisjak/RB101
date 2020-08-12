VALID_PLAYERS = %w(rock paper scissors)

def promt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    promt("You won!")
  elsif win?(computer, player)
    promt("Computer won!")
  else
    promt("it's a tie!")
  end
end

loop do
  player = ''
  loop do
    promt("Choose one: #{VALID_PLAYERS.join(', ')}")
    player = Kernel.gets().chomp()
    if VALID_PLAYERS.include?(player)
      break
    else
      promt("That's not a valid player")
    end
  end
  computer = VALID_PLAYERS.sample()

  Kernel.puts("You chose: #{player}; Computer chose: #{computer}")

  display_results(player, computer)

  promt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
