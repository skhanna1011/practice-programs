class Course < ApplicationRecord
  has_many :student_courses
  has_many :students, through: :student_courses
  belongs_to :instrtuctor
  
  validates :name, presence: true, uniqueness: true
end
