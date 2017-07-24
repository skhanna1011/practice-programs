# http://api.openweathermap.org/data/2.5/forecast?q=bangalore,india&units=metric&APPID=api_key
require "httparty"
require "json"
require "time"
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
response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?q=#{city}&units=#{format}&APPID=api_key")
result = JSON.parse(response.body)
formated_result = {}
wday = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
result["list"].each do |list|
  date_time = Time.at(list["dt"]).to_a
  date = "#{wday[date_time[6]]}, #{date_time[3]}-#{date_time[4]}-#{date_time[5]}"
  time = "#{date_time[2]} hrs, #{date_time[1]} min"
  formated_result[date] = {} if !(formated_result.has_key?(date))
  formated_result[date][time] = "#{list["main"]["temp"]} #{degree.encode("utf-8")}#{unit}"
end
formated_result.each do |date, data|
  puts "On #{date}"
  data.each {|time,temp| puts "at #{time} the temprature will be #{temp}"}
end


# result["list"].each do |list|
#   date = list["dt_txt"].split(" ")[0]
#   ddmmyy = date.split("-").reverse.join("-")
#   formated_result[ddmmyy] = {} if !(formated_result.has_key?(ddmmyy))
#   time = list["dt_txt"].split(" ")[1]
#   formated_result[ddmmyy][time] = "#{list["main"]["temp"]} #{degree.encode("utf-8")}#{unit}"
# end
# formated_result.each do |date, data|
#   puts "On #{date}"
#   data.each {|time,temp| puts "at#{time} the temprature will be #{temp}"}
# end