winnerlist = [
{:team => "Barcelona",:country => "Spain"},
{:team => "Munich", :country => "Germany"},
{:team => "Real Madrid",:country => "Spain"},
{:team => "Manchaster United", :country=> "U.K."},
{:team => "Manchaster City", :country=> "U.K."},
{:team => "Barcelona",:country => "Spain"},
{:team => "Real Madrid",:country => "Spain"},
{:team => "Milan", :country => "Italy"}
]
puts "Enter the country to search"
search_country = gets.chomp.capitalize
count_country = 0
count_team = 0
teams = {}
winnerlist.each do |winner|
  if winner[:country] == search_country
    count_country += 1
    search_team = winner[:team]
    winnerlist.each do |team|
      count_team += 1 if team[:team] == search_team
      teams[search_team] = count_team
    end
    count_team = 0
  end
end
teams.each {|team, times| puts "#{team} won #{times} times"}
puts "The country won #{count_country} times"