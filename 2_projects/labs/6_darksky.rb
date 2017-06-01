# DarkSky Weather API
#
# Quick: What's the weather in Hawaii right now? (No googling!)
#
# We can find out for ourselves:
#
# Documentation:
# https://darksky.net/dev/docs/forecast
#
# NOTE: You'll need to do 5_geocoding.rb if you haven't already.
#

# Your code goes here:
require 'json'
require 'rest-client'

API_KEY = 'c92b7ef519b22771ab839fbe18a18015'
weather_url = "https://api.darksky.net/forecast/#{API_KEY}/LATITUDE,LONGITUDE"
geo_base_url = "https://maps.googleapis.com/maps/api/geocode/json?address="

puts "Enter the name of a location"
place = gets.chomp
place.gsub!(/\s+/, "+")
geo_res = RestClient.get(geo_base_url + place)

geo_data = JSON.parse(geo_res.body)
latitude = geo_data["results"][0]["geometry"]["location"]["lat"]
longitude = geo_data["results"][0]["geometry"]["location"]["lng"]

weather_url.gsub!(/LATITUDE/, latitude.to_s)
weather_url.gsub!(/LONGITUDE/, longitude.to_s)

puts weather_url
weather_res = RestClient.get(weather_url)
puts "#{geo_data["results"][0]["formatted_address"]} => " + JSON.parse(weather_res.body)["currently"]["summary"].to_s
