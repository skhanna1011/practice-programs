# http://api.openweathermap.org/data/2.5/weather?q=bangalore,india&units=metric&APPID=api_key
require "httparty"
require "json"
puts "Enter the city"
city = gets.chomp
puts "Enter k for Kelvin c for Celsius and f for fahrenheit"
unit = gets.chomp.downcase
degree = "\u00B0"
format = ""
if unit == "k"
  format = "default"
elsif unit == "c"
  format = "metric"
elsif unit == "f"
  format == "imperial"
end
response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{city}&units=#{format}&APPID=api_key")
result = JSON.parse(response.body)
puts "The current temp in #{result["name"]} (#{result["coord"]["lon"]},#{result["coord"]["lat"]},) is #{result["main"]["temp"]} #{degree.encode("utf-8")}#{unit}"