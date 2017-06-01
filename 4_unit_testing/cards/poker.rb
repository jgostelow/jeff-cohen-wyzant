# Identify the hand of poker.
#
# Given a set of five playing cards,
# your job is return a "value" for the hand.
#
# Poker hands, in increasing value, are:
#
#  High card only
#  Pair
#  Two Pair
#  Three of a Kind
#  Straight
#  Flush
#  Full House
#  Four of a Kind
#  Straight Flush
#  Royal Straight Flush

# Each card is represented with its rank (1-9, T, J, Q, K) and suit (C, S, H, D).
#
# Cards are separated from each other with a single space.

require 'test/unit'
extend Test::Unit::Assertions

require 'poker_hand'

assert :royal_flush == PokerHand.value("AH KH QH JH TH")
assert :royal_flush == PokerHand.value("AC KC QC JC TC")
assert :straight_flush == PokerHand.value("5H 6H 7H 8H 9H")
assert :straight_flush == PokerHand.value("8D 9D TD JD QD")
assert :straight_flush == PokerHand.value("2C 3C 4C 5C 6C")
assert :four_of_a_kind == PokerHand.value("5H 5S 5C 5D 9S")
assert :full_house == PokerHand.value("5H 6S 5C 6D 5S")
assert :flush == PokerHand.value("5H 3H QH JH 4H")
assert :straight == PokerHand.value("5H 6S 7C 8H 9S")
assert :three_of_a_kind == PokerHand.value("5H 5S 7C 5C 9S")
assert :two_pair == PokerHand.value("5H 7S 7C 5C 9S")
assert :pair == PokerHand.value("5H 2S 7C 5C 9S")
assert :high_card == PokerHand.value("5H 2S 7C TH AS")
