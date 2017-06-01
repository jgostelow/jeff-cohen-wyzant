# The Coin Dispenser must determine the optimal
# coin combination for a given amount of money.
#
# For instance, if the input is: 99,
# the change should be: 3 quarters, 2 dimes, and 4 pennies.
#
# The change amount should be represented as a
# simple list of four integers, indicating the number of
# quarters, dimes, nickels, and pennies.
#
# For instance, if the input is: 99
# the return value should be [3, 2, 0, 4].

require 'test/unit'
extend Test::Unit::Assertions

require_relative 'coin_dispenser'

# Ensure the machine knows all coin denominations
assert_equal [25, 10, 5, 1], CoinDispenser::COINS

# Ensure the machine knows how to make change
dispenser = CoinDispenser.new

assert_equal [0,0,0,1], dispenser.make_change(1)
assert_equal [0,0,0,2], dispenser.make_change(2)
assert_equal [0,0,0,3], dispenser.make_change(3)
assert_equal [0,0,0,4], dispenser.make_change(4)
assert_equal [0,0,1,0], dispenser.make_change(5)
assert_equal [0,0,1,1], dispenser.make_change(6)
assert_equal [0,1,0,0], dispenser.make_change(10)
assert_equal [0,1,0,1], dispenser.make_change(11)
assert_equal [0,1,1,0], dispenser.make_change(15)
assert_equal [0,1,1,1], dispenser.make_change(16)
assert_equal [1,0,0,0], dispenser.make_change(25)
assert_equal [2,0,0,1], dispenser.make_change(51)
assert_equal [3,2,0,4], dispenser.make_change(99)

print("Congratulations!  The coin dispenser works!")
