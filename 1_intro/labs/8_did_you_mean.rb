# Word Distance Calculator
#
# Word distance is defined as the number of letters that
# would need to be changed in the first string in order
# to match the second string.
#
# Examples:
#
# software vs. hardware          => 4
# apple vs. apply                => 1
# coding vs. eating              => 3
# programming vs. projections    => 8
#
# Challenge:
# - Prompt the user for two words
# - Display the distance between the words
#
# Can you think of other ways to make the calculation
# more realistic?

w1 = gets.chomp
w2 = gets.chomp

min_chars = [w1.size, w2.size].min
distance = 0
min_chars.times do |i|
  if w1[i] != w2[i]
    distance += 1
  end
end
distance += (w1.size - w2.size).abs

puts "Distance #{distance}"
