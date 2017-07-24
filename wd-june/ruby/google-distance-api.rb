# https://maps.googleapis.com/maps/api/distancematrix/json?origins=Vancouver+BC|Seattle&destinations=San+Francisco|Victoria+BC&mode=bicycling&language=fr-FR&key=api_key
require "httparty"
require "json"
puts "Enter the source"
from = gets.chomp
puts "Enter the destination"
to = gets.chomp
response = HTTParty.get("https://maps.googleapis.com/maps/api/distancematrix/json?origins=#{from}&destinations=#{to}&mode=driving&language=en-EN&key=api_key")
result = JSON.parse(response.body)
puts "The distance from #{result["origin_addresses"][0]} to #{result["destination_addresses"][0]} is #{result["rows"][0]["elements"][0]["distance"]["text"]} and time taken is #{result["rows"][0]["elements"][0]["duration"]["text"]} fare will be Rs.#{(result["rows"][0]["elements"][0]["distance"]["text"].to_i-1) * 6 + 20} "