# After this session, you can try these exercises:
# 5_fibonacci.rb
# 6_anagram_checker.rb
# 7_enigma.rb
# 8_syracuse.rb
# 9_did_you_mean.rb

# Let's learn about enumerables so we can do things the "Ruby way".

# puts "Howdy"
# puts "Howdy"
# puts "Howdy"
# puts "Howdy"
# puts "Howdy"


# We can use the "times" method:
# 10.times do
#   puts "Howdy"
# end

# We can use the "upto" method:
# 5.upto(10) do
#   puts "Howdy"
# end

# If we have a collection, we can use the "each" method:

favorites = ["purple", 21, "hockey", "Ruby"]

# for fave in favorites....

favorites.each do |fave|
  puts fave
end

item = favorites.detect do |fave|
  fave == "hockey"
end
