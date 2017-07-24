#https://gender-api.com/get?name=real&key=api_key
require "httparty"
require "json"
url = "https://gender-api.com/get?"
api_key = "api_key"
puts "Enter a name to determine gender"
u_name = gets.chomp
puts "#{url}name=#{u_name}&key=#{api_key}"
response = HTTParty.get("#{url}name=#{u_name}&key=#{api_key}")
result = JSON.parse(response.body)
puts "The gender of #{u_name} is #{result["gender"]}"