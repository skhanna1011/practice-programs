require "httparty"
headers = { 
  "user-key"  => "api_key", 
}

response = HTTParty.get("https://developers.zomato.com/api/v2.1/categories",
  :headers => headers
  )
p JSON.parse(response.body)