# This program decodes a secret message by:
#
# - you can assume everything is in lowercase.
# - advancing each letter by 2 places
# - wrapping back around to "a" if you go past "z"
# - spaces and punctuation must remain unchanged

# Examples:
#   "uwxylr"     decodes into:    "wyzant"
#   "ynnjc"      decodes into:    "apple"
#
# ----------------------------------------------------

secret_message = "g fmnc wms bgbl'r rpylqjyrc gr zw fylb. \
rfyr'q ufyr amknsrcpq ypc dmp."

def decode(encoded_message)
  # Your code goes here
end

puts decode(secret_message)
