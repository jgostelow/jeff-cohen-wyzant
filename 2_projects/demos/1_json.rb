# After this session, you can try: 1_product_search.rb

# Here's some interesting data, but it's in a string (yuck):
#
json = '[
 { "language": "Smalltalk", "year": 1972 },
 { "language": "Ruby", "year": 1995 },
 { "language": "C#", "year": 2001 },
 { "language": "JavaScript", "year": 1995 }
]'

require 'json'

data = JSON.parse(json)


# How can we do anything with this data?
