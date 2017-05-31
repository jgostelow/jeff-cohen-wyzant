# Divvy Bikes
#
# API URL: http://www.divvybikes.com/stations/json
#
# Write code in this file to display the name of the nearest Divvy
# station name and the number of available bikes.

# HINTS:
# 1. The JSONFormatter extension for Chrome is very helpful when viewing JSON results
# 2. The Wyzant building is at this latitude and longitude: 41.912853, -87.677375
# 3. To calculate distance, just use the Pythagorean theorem.

require 'json'
require 'open-uri'

file = open("http://www.divvybikes.com/stations/json")
json = file.read
data = JSON.parse(json)

def calculate_distance(lat1, lng1, lat2, lng2)
  latitude_difference = lat2 - lat1
  longitude_difference = lng2 - lng1
  return Math.sqrt(latitude_difference**2 +
                    longitude_difference**2)
end

stations = data['stationBeanList']
nearest_station = stations.first
nearest_distance = calculate_distance(nearest_station['latitude'],
                                      nearest_station['longitude'],
                                      41.912853,
                                      -87.677375)

stations.each do |station|
  distance_away = calculate_distance(station['latitude'],
                                     station['longitude'],
                                     41.912853,
                                     -87.677375)
  if distance_away < nearest_distance
    nearest_station = station
    nearest_distance = distance_away
  end
end

puts "The nearest station is:"
puts nearest_station['stationName']
puts "#{nearest_station['availableBikes']} bikes available."
