class Student
  attr_accessor :first_name, :last_name, :age, :gender, :courses
  # attr_writer :first_name, :last_name, :age, :gender, :courses
  # attr_reader :first_name, :last_name, :age, :gender, :courses
end

s1 = Student.new
puts s1

s1.first_name = "Shivam"
puts s1.first_name

s1.last_name = "Khanna"
puts s1.last_name

s1.age = "21"
puts s1.age

s1.gender = "male"
puts s1.gender

s1.courses = ["WD", "JS", "React"]
puts s1.courses