class Product
  def name=(name)
    @name = name
  end
  def price=(price)
    @price = price
  end
  def availablity=(avail)
    @availablity = avail
  end
  def name
    @name
  end
  def price
    @price
  end
  def availablity
    @availablity
  end
end
products = []
p1 = Product.new
p1.name = "Apple Iphone"
p1.price = "Rs.17,648"
p1.availablity = true
products << p1

p2 = Product.new
p2.name = "Harry Porter and The Prisoner of Azakaben"
p2.price = "Rs.246"
p2.availablity = true
products << p2

p3 = Product.new
p3.name = "HP Spectre"
p3.price = "Rs.1,46,658"
p3.availablity = false
products << p3

products.each{ |product| puts "#{product.name} : #{product.price}"}