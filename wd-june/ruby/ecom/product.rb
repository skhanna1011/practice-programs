require "./category"
require "./review"

class Product
  attr_accessor :name, :price, :category_id
  attr_reader :id

  @@count = 1

  def initialize(details)
    @id = @@count
    @name = details[:name]
    @price = details[:price]
    @category_id = details[:category_id]

    @@count += 1
  end

  def self.all
    $products
  end

  def self.find(a)
    $products.find{|product| product.id == a}
  end

  def category
    Category.find(category_id)
  end

  def details
    "#{id} - #{name} - #{category.name} - #{price}"
  end

  def reviews
    $reviews.find_all{|review| review.product.id == id}
  end
end