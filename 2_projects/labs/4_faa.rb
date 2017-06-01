=begin
 1. Look at these websites first:

    http://www.fly.faa.gov/flyfaa/usmap.jsp
    http://services.faa.gov/docs/services/airport


 2. Write code to report weather information at various airports.

    Your goal is to write code that will display weather
    information for each airport code in the list.

    Example Output:

    ORD (Chicago): The temperature is 30.0 F (-1.1 C), and the wind is Northeast at 8.1 mph.
    SFO (San Francisco): The temperature is 67.0 F (19.4 C), and the wind is South at 28.3 mph.
    JFK (New York): The temperature is 55.0 F (12.8 C), and the wind is West at 14.5 mph.
=end
require 'rest-client'
require 'json'

base_url = "http://services.faa.gov/airport/status"
airport_codes = ['ORD', 'SFO', 'JFK']

airport_codes.each do |airport|
  res = RestClient.get(base_url + "/" + airport + ".json")
  puts "#{airport} : " + JSON.parse(res.body)["weather"]["weather"]
end

