$customers = []
class Customer
  attr_accessor :account_no, :name, :balance

  def initialize(details)
    @account_no = details[:account_no]
    @name = details[:name]
    @balance = details[:balance]
  end

  def self.show
    $customers.each{|customer| puts "#{customer.account_no}-#{customer.name}-#{customer.balance}"}
  end

  def transact(amt,code)
    case code
    when 1
      @balance += amt
      return "#{name}-#{balance}"
    when 0
      if @balance < amt
        return "Insufficient Funds"
      else
        @balance -= amt
        return "#{name}-#{balance}"
      end
    else
      return "Invalid code"
    end
  end
end

c1 = Customer.new(:account_no => 235465768798986756, :name => "Ramesh", :balance => 1234)
$customers << c1
c2 = Customer.new(:account_no => 345678987656789550, :name => "Suresh", :balance => 400)
$customers << c2
c3 = Customer.new(:account_no => 235465767890567565, :name => "Mahesh", :balance => 767)
$customers << c3
c4 = Customer.new(:account_no => 234567876543456789, :name => "Ganesh", :balance => 6450)
$customers << c4
c5 = Customer.new(:account_no => 235465768987678987, :name => "Veresh", :balance => 1260)
$customers << c5
Customer.show
puts c1.transact(11234,1)