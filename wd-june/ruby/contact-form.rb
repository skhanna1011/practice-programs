class ContactForm
  attr_accessor :name, :email_id, :subject, :phone, :message
  def details
    "Name : #{name}\nEmail-id : #{email_id}\nSubject : #{subject}\nPhone : #{phone}\n Message : #{message}"
  end
end

c1 = ContactForm.new
c1.name = "Shivam"
c1.email_id = "skhanna1011@gmail.com"
c1.subject = "Hello"
c1.phone = "0987654321"
c1.message = "Hello, How are you?"
puts c1.details

c2 = ContactForm.new
c2.name = "Lorem"
c2.email_id = "lorem@ipsum.com"
c2.subject = "Lorem Ipsum"
c2.phone = "9876543211"
c2.message = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
c2.details