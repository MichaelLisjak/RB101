# Constants
SUITS = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
         'Jack', 'Queen', 'King', 'Ace']
CARD_VALUES = { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
                '8' => 8, '9' => 9, '10' => 10, 'Jack' => 10, 'Queen' => 10,
                'King' => 10, 'Ace' => 11 }
DEALER_MIN_SCORE = 17
MAX_SCORE = 21

# Method definitions

def create_deck
  deck = []
  SUITS.each do |suit|
    CARDS.each do |card|
      deck << [suit, card]
    end
  end
  deck.shuffle
end

def prompt(msg)
  puts "=> #{msg}"
end

def deal_card!(deck, receiver, amount)
  amount.times { receiver.push(deck.pop) }
end

def display_hands(hand)
  hand_values_only = hand.map(&:last) # { |card| card.last }
  case hand.count
  when 2
    prompt "You have: #{hand_values_only[0..(hand.count - 1)].join(' and ')}"
  else
    prompt "You have: #{hand_values_only[0..(hand.count - 2)].join(', ')} " \
           "and #{hand_values_only[-1]}"
  end
  prompt "Your hand is worth #{calculate_score(hand)}" # replace by local var
end

def display_dealer_first_card(hand)
  prompt "Dealer has: #{hand[0][1]} and unknown card"
end

def display_dealer_full_hand(hand)
  hand_values_only = hand.map(&:last) # { |card| card.last }
  case hand.count
  when 2
    prompt "Dealer has: #{hand_values_only[0..(hand.count - 1)].join(' and ')}"
  else
    prompt "Dealer has: #{hand_values_only[0..(hand.count - 2)].join(', ')} " \
           "and #{hand_values_only[-1]}"
  end
  prompt "Dealer hand is worth #{calculate_score(hand)}" # replace by local var
end

def calculate_score(hand) # hand being the player's or the dealer's hand
  value_array = hand.map { |card| CARD_VALUES[card.last] }
  until value_array.sum <= MAX_SCORE || value_array.count(11) == 0
    index = 0
    loop do
      if value_array[index] == 11
        value_array[index] = 1
        break
      else
        index += 1
      end
    end
  end
  value_array.sum
end

def player_turn!(deck, players_hand)
  choice = ''
  loop do
    prompt "type 'h' if you want to hit, or 's' if you want to stay:"
    until choice == 'h' || choice == 's'
      choice = gets.chomp
      if choice != 'h' && choice != 's'
        prompt "You have to choose either h for hit or s for stay"
      end
    end
    case choice
    when 'h'
      choice = ''
      deal_card!(deck, players_hand, 1)
      display_hands(players_hand)
      if calculate_score(players_hand) > MAX_SCORE
        break
      end
    when 's'
      break
    end
  end
end

def dealer_turn!(deck, dealers_hand)
  until calculate_score(dealers_hand) >= DEALER_MIN_SCORE
    deal_card!(deck, dealers_hand, 1)
  end
end

def determine_winner(dealers_hand, players_hand, total_score)
  players_score = calculate_score(players_hand)
  dealers_score = calculate_score(dealers_hand)
  if players_score > MAX_SCORE
    prompt "Player busted, dealer wins!"
    total_score["Dealer"] += 1
  elsif dealers_score > MAX_SCORE
    prompt "Dealer busted, player wins!"
    total_score["Player"] += 1
  elsif players_score > dealers_score
    display_hands(players_hand)
    display_dealer_full_hand(dealers_hand)
    prompt "Player wins"
    total_score["Player"] += 1
  elsif players_score == dealers_score
    display_hands(players_hand)
    display_dealer_full_hand(dealers_hand)
    prompt "It's a tie!"
  else
    display_hands(players_hand)
    display_dealer_full_hand(dealers_hand)
    prompt "Dealer wins!"
    total_score["Dealer"] += 1
  end
end

def initial_move(deck, players_hand, dealers_hand)
  deal_card!(deck, dealers_hand, 2)
  deal_card!(deck, players_hand, 2)
  display_dealer_first_card(dealers_hand)
  display_hands(players_hand)
end

def play_again?
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

total_score = { "Player" => 0, "Dealer" => 0 }
# Game loop
loop do
  prompt "Welcome to a game of Twenty-One!"
  prompt "--------------------------------"
  deck = create_deck
  players_hand = []
  dealers_hand = []

  initial_move(deck, players_hand, dealers_hand)
  player_turn!(deck, players_hand)
  if calculate_score(players_hand) <= MAX_SCORE
    dealer_turn!(deck, dealers_hand)
  end
  determine_winner(dealers_hand, players_hand, total_score)
  prompt "Score: Player -> #{total_score['Player']} " \
         "Dealer -> #{total_score['Dealer']}"
  if total_score["Player"] == 5
    prompt "Player has 5 points and is the grand winner"
    break
  elsif total_score["Dealer"] == 5
    prompt "Dealer has 5 points and is the grand winner"
    break
  end
  break unless play_again?
end

prompt "Thanks for playing Twenty-One! See you again!"
