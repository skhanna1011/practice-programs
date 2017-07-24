class Restaurant
  def name=(r_name)
    @name = r_name
  end
  def location=(r_loc)
    @location = r_loc
  end
  def cost_for_two=(cft)
    @cost_for_two = cft
  end
  def rating=(r_rating)
    @rating = r_rating
  end
  def name
    @name
  end
  def location
    @location
  end
  def cost_for_two
    @cost_for_two
  end
  def rating
    @rating
  end
end

r1 = Restaurant.new
r1.name ="Adigas"
r1.location = "Jayanagar"
r1.cost_for_two = 250
r1.rating = 3.5
puts r1.class
puts r1.name
puts r1.location
puts r1.cost_for_two
puts r1.rating

r2 = Restaurant.new
r2.name = "Mc Donalds"
r2.location = "Multiple Locations"
r2.cost_for_two = 550
r2.rating = 3.2
puts r2.class
puts r2.name
puts r2.location
puts r2.cost_for_two
puts r2.rating

r3 = Restaurant.new
r3.name = "Truffles"
r3.location = "Koramangala"
r3.cost_for_two = 1200
r3.rating = 4.0
puts r3.name
puts r3.location
puts r3.cost_for_two
puts r3.rating.rating