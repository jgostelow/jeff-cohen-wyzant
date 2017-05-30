# Game of Blackjack

# Required Implemention:
#
# - Human player gets the first two cards
# - Human player plays the rest of their hand
# - Human player can choose to "stand" (stop taking cards) anytime
# - Then computer gets next two cards
# - Computer must take cards score  < 17
# - Computer must stand when score >= 17
# - Aces always count as 11
# - A player loses immediately if their score is becomes more than 21
# - Human player wins immediately when their score becomes exactly 21
# - If both human and computer stand with scores less than 21,
#   the winner is the one with the higher score.
#   If scores are equal, nobody wins.

# (Optional) Extras
# - 1. Aces should count as 1, if counting as 11 would have made the score > 21
# - 2. Initally, human and dealer both get two cards; only one dealer card is face up
# - 3. Allow the user to play as many games as they want
# - 4. Dealing cards to the cmputer should have a dramatic, 4-second delay

# To see the final result, here's a video of this challenge as presented
# in my Python class: https://www.youtube.com/watch?v=RwjOS9-fMrc&feature=youtu.be


# Here's a start:

SUITS = "\u2663 \u2665 \u2666 \u2660".split()
FACES = "A 2 3 4 5 6 7 8 9 10 J Q K".split()

# The rest of your solution goes here:
