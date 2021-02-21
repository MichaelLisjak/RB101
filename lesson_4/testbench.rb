require 'pry'

# Constants
SUITS = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
CARD_VALUES = { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                'Jack' => 10, 'Queen' => 10, 'King' => 10, 'Ace' => 11
}

# Variables
players_hand = [] # move them to the game loop later because they have to be emptied after each round, just have them here for testing
dealers_hand = []
players_score = 0
dealers_score = 0

# Method definitions

def create_deck
  deck = []
  SUITS.each do |suit|
    CARDS.each do |card|
    deck << [suit, card]
    end
  end
  deck.shuffle  # use shuffle so I can just pop an item from deck into player or dealer hand
end

def calculate_score(hand) # hand being the player's or the dealer's hand
  value_array = hand.map { |card| CARD_VALUES[card.last]}
  until value_array.sum <= 21 || value_array.count(11) == 0 do
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


def deal_card!(deck, receiver, amount) # receiver being the player or the dealer
  amount.times{ receiver.push(deck.pop)}
end

#hand = ['Spades', '2']
#p CARD_VALUES[hand.last]
# test cases

p calculate_score([['Spades', '2'], ['Spades', 'Ace'], ['Spades', '5'], ['Spades', 'Ace']]) == 19
p calculate_score([['Spades', 'Ace'], ['Spades', 'Ace'], ['Spades', 'Ace'], ['Spades', 'Ace']]) == 14
p calculate_score([['Spades', 'Ace'], ['Spades', 'Ace']]) == 12
p calculate_score([['Spades', 'Ace'], ['Spades', 'Ace'], ['Spades', 'Ace']]) == 13
p calculate_score([['Spades', 'Ace'], ['Spades', 'Ace'], ['Spades', 'Ace'], ['Spades', 'Ace'], ['Spades', '7']]) == 21 
p calculate_score([['Spades', 'Ace'], ['Spades', 'Ace'], ['Spades', 'Ace'], ['Spades', 'Ace'], ['Spades', '8']]) == 12 


'''
- map values of hand into new array
- check if value array sum exceeds 21
  - if so, check if array includes value 11. if so, replace ONE 11 with 1
  - calculate sum again, if > 21 check if array still includes an 11. if yes, replace ONE 11 with 1
  - repeat the cycle



'''