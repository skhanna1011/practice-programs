require "./product"

class Category
  attr_accessor :name
  attr_reader :id

  @@count = 1

  def initialize(details)
    @id = @@count
    @name = details[:name]
    @@count += 1
  end

  def details
    "#{id} - #{name}"
  end

  def self.all
    $categories
  end

  def self.find(a)
    $categories.find{|cat| cat.id == a}
  end

  def products
    $products.find_all{|product| product.category.id ==id}
  end
end