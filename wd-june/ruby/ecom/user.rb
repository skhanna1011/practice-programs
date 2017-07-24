class User
  attr_accessor :name, :email
  attr_reader :id

  @@count = 1

  def initialize(details)
    @name = details[:name]
    @email = details[:email]
    @id = @@count
    @@count += 1
  end

  def details
    "#{id} - #{name} - #{email}"
  end

  def self.all
    $users
  end

  def self.find(a)
    $users.find{|user| user.id == a}
  end
end