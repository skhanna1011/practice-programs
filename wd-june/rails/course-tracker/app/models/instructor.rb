class Instructor < ApplicationRecord
  has_many :courses

  validates_presence_of :name, :bio
  validates :mobile_no, numericality: true, uniqueness: true, length: {is: 10}
end
