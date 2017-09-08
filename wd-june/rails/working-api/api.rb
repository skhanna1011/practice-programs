require 'httparty'

response = HTTParty.get("http://localhost:3000/api/v1/categories")
categories = JSON.parse(response.body)

categories.each do |category| 
  puts "Name: #{category["name"]}"
  puts "No of Products: #{category["products"].count}"
  category["products"].each {|product| puts product["name"]}
end