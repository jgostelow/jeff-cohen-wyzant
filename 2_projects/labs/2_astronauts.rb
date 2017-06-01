# Who's in space?
#
# Tip: Install the JSONFormatter extension for Chrome.

require 'open-uri'
require 'json'
astros_url = "http://api.open-notify.org/astros.json"

# CHALLENGE: Print the names of the people in space right now.

data = JSON.load(open(astros_url))
data['people'].each do |person|
  puts person["name"]
end
