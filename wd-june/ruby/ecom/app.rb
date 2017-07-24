$users = []
$categories = []
$products = []
$reviews = []
require "faker"
require "./user"
require "./category"
require "./product"
require "./review"
require "pry"

20.times do
  u_name = Faker::Internet.user_name
  user_params = {
    :name => u_name,
    :email => Faker::Internet.safe_email(u_name)
  }
  user = User.new(user_params)
  $users << user
end

while $categories.length < 10
  category_params = {
    :name => Faker::Commerce.department(1)
  }
  if $categories.find{|category| category.name == category_params[:name]}
    next
  else
    category = Category.new(category_params)
    $categories << category
  end
end

100.times do
  product_params = {
    :name => Faker::Commerce.product_name,
    :price => Faker::Commerce.price,
    :category_id => $categories.sample.id
  }
  product = Product.new(product_params)
  $products << product
end

100.times do 
  review_params = {
    :user_id => $users.sample.id,
    :product_id => $products.sample.id,
    :review => Faker::Lorem.sentence,
    :date => Faker::Date.between(Date.parse("2017-01-01"), Date.today)
  }
  review = Review.new(review_params)
  $reviews << review
end
puts "#" * 150

puts "Listing Users"
puts "#" * 150
User.all.each{|user| puts user.details}

puts "#" * 150

puts "Listing Categories"
puts "#" * 150
Category.all.each{|category| puts category.details}

puts "#" * 150

# puts "Listing Products"
# puts "_" * 150
# Product.all.each{|product| puts product.details}

# puts "*" * 150

# puts "Listing Review"
# puts "#" * 150
# Review.all.each{|review| puts review.details}

# puts "#" * 150

puts "Products by Categories"
Category.all.each do |category|
  puts "*" * 150
  puts category.details
  puts "_" * 150
  if category.products.empty?
    puts "No Products in the category"
  else
    category.products.each.with_index do |product,i|
      puts "#{i+1} - #{product.name} - INR #{product.price}"
      puts "    Reviews"
      if product.reviews.empty?
        puts "        No Reviews"
      else
        product.reviews.each.with_index{|review,i| puts "        #{i+1} - #{review.user.name} - #{review.review}"}
      end
    end
  end
end