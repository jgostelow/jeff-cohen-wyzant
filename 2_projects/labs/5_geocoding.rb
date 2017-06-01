# Geocoding

# Determine the geocoordinates of these famous Chicago landmarks:
#
# United Center
# Millenium Park
# Sears Tower
# Wyzant Offices
#
# https://developers.google.com/maps/documentation/geocoding/intro

# Example API endpoint:
require 'rest-client'
require 'json'

url = "https://maps.googleapis.com/maps/api/geocode/json?address=Millenium+Park,+Chicago,+IL"
base_url = "https://maps.googleapis.com/maps/api/geocode/json?address="
places = [
 "United Center",
 "Millenium Park",
 "Sears Tower",
 "Wyzant Offices",
]

places.each do |place|
  sanitised_place = place.gsub /\s+/, "+"
  res = RestClient.get(base_url + sanitised_place)
  puts "#{place} : " + JSON.parse(res.body)["results"][0]["geometry"]["location"].to_s
end
