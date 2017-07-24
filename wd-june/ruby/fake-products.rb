require "faker"

class Product
  attr_accessor :name, :price, :description, :category, :available

  def initialize(details)
    @name = details[:name]
    @price = details[:price]
    @description = details[:description]
    @category = details[:category]
    @available = details[:available]
  end

  def details
    "#{name} - INR #{price} - #{category} - #{available}"
  end
end

products = []
100.times do 
  product_details = {
    :name => Faker:: Commerce.product_name,
    :price => Faker:: Commerce.price(50..1000),
    :description => Faker:: Lorem.paragraph,
    :category => Faker:: Commerce.department(1),
    :available => Faker:: Boolean.boolean
  }
  product = Product.new(product_details)
  products << product
end

puts "All Products"
products.each.with_index {|product, i| puts "#{i + 1}. #{product.details}"}
puts "Price Less then 499"
products.select{|product| product.price < 499}.each.with_index{|product,i| puts "#{i + 1}. #{product.details}"}
puts "Category : Kids"
products.select{|product| product.category = "kids"}.each.with_index{|product,i| puts "#{i + 1}. #{product.details}"}
puts "Price from 99-499 and category : kids"
products.select{|product| product.price.between?(99, 499) && product.category = "kids"}.each.with_index{|product,i| puts "#{i + 1}. #{product.details}"}