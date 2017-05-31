# After this session, you can try:
# 10_word_freq.rb
# 11_compression.rb
# 12_imdb.rb


# Let's learn about how to read data from files on disk.

# Example of one way to read from a file
file = open("landmarks.txt", "rb")

# To Do: Dispay landmarks here

file.each_line do |line|
  puts line
end


file.close



# CHALLENGE: How many landmarks are there?




# CHALLENGE: Find the average of the numbers in numbers.txt.
