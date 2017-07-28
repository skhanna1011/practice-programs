class Product < ApplicationRecord
  validates_presence_of :name, :price, :category_id, :description
  validates_numericality_of :price, :category_id, greater_than_or_equal: 1
end