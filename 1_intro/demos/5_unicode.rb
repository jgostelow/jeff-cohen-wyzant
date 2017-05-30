# After this session, you can try: 13_blackjack.rb

# Deck of cards
# https://en.wikipedia.org/wiki/Playing_cards_in_Unicode
#
SUITS = "\u2663 \u2665 \u2666 \u2660".split()
VALUES = "A 2 3 4 5 6 7 8 9 10 J Q K".split()

def create_deck_of_cards
  cards = []
  SUITS.each do |suit|
    VALUES.each do |value|
      cards.push(value + suit)
    end
  end
  return cards
end

# Display a deck of cards
deck = create_deck_of_cards
puts deck.join(' ')

# How can we shuffle the deck?

# How can we deal the top two cards from the deck?
