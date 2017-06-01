# Pulling data from a file into a complex data structure makes parsing much
# simpler. Many programming languages support the JSON format, a popular way
# of representing data.
#
# Create a program that takes a product name as input and retrieves the
# current price and quantity for that product. The product data is in a
# data file named "products.json".
#
# Print out the product name, price, and quantity if the product is found.
# If no product matches the search, state that no product was found and start over.
#
# Example Output
#        What is the product name? iPad
#        Sorry, that product was not found in our inventory.
#        What is the product name? Widget
#        Name: Widget
#        Price: $15.00
#        Quantity on hand: 5
#
# Constraints
# • The file is in the JSON format. Use a JSON parser to pull the values out of the file.
# • If no record is found, prompt again.
# • Ensure that the product search is case insensitive.
#
# Bonus Challenges
# • Allow the user to search by part of the product name. Use the first match.
# • Allow the user to search by part of the product name,
#   and show all matches if there is more than one.

require 'json'

products = JSON.load('products.json')
puts products

