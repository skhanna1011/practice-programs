def cart_total(*prices)
  return prices.sum
end
total = cart_total(100)

def calc_total(total, loyality_points=5,discount=10)
  return total - (total*discount/100)
end

puts calc_total(total)
total = cart_total(500,500)
puts calc_total(total,25)
puts calc_total(total,100,25)

def calc_total_hash(details)
  total = details[:total]
  loyality_points = details[:loyality_points].nil? ? 5 :details[:loyality_points]
  discount = details[:discount].nil? ? 10 :details[:discount]
  return total - (total*discount/100)-loyality_points
end

puts calc_total_hash({:total=> 100})
puts calc_total_hash({:total=> 1000, :discount => 25})
puts calc_total_hash({:total=> 1000, :discount => 25, :loyality_points => 100})