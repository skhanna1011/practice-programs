require 'httparty'

response = HTTParty.get("http://localhost:3000/api/v1/categories")
categories = JSON.parse(response.body)

categories.each {|category| puts category["name"]}
puts categories.count