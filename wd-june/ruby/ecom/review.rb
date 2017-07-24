require "./user"
require "./product"

class Review
  attr_accessor :user_id, :product_id, :review, :date
  attr_reader :id
  @@count = 1

  def initialize(details)
    @user_id = details[:user_id]
    @product_id = details[:product_id]
    @review = details[:review]
    @date = details[:date]
    @id = @@count

    @@count += 1
  end

  def self.all
    $reviews
  end

  def self.find(a)
    $reviews.find{|review| review.id == a}
  end

  def user
    User.find(user_id)
  end

  def product
    Product.find(product_id)
  end

  def details
    "#{id} - #{user.name} - #{product.name} -#{product.category.name} - #{date} - #{review}"
  end
end