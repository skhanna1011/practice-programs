class Category < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name, message:"Category already Exists"
end
