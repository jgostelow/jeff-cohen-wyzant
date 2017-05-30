# Ever wonder how ZIP files can be so small?
# The ZIP algorithm is complex, but we can
# get a notion of how to do simple data compression
# by exploring the "Run Length Encoding" algorithm.
# For an overview, see https://en.wikipedia.org/wiki/Run-length_encoding
#
# IMPORTANT: Use the file `data_sample.dat`.
#
# Example:
#
# This raw data:
# rrrrrrrrrrggggbb
#
# should compress to:
# r10g4b2
#
# CHALLENGE: Implement this function so that the code runs successfully.

def compress(filename)
  # Your Code Goes Here
  #
end

result = compress('data_sample.dat')

correct_result = 'r6g7b4r5g3r4b4r3g4r2b14r4g8r3b4r1b1r4b3r5b12g3r11g10' +
                    'r11g3b12r5b3r4b1r1b4r3g8r4b14r2g4r3b4r4g3r5b4g7r6'


if correct_result == result
  puts "Congratulations, you did it!"
else
  puts result
  puts "That isn't quite right.  Try again."
end
