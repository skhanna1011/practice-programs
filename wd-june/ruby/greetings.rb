class Person
  attr_accessor :first_name, :last_name

  def initialize(details)
    @first_name = details[0]
    @last_name = details[1]
  end
  def greet
    "Hello, #{first_name} #{last_name}!"
  end
end

name = "Bob Smith"
p1 = Person.new(name.split(" "))
puts p1.greet