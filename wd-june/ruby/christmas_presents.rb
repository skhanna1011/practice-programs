class WishlistItem
  attr_accessor :name, :size, :clatters, :weight

  def initialize(details)
    @name = details[:name]
    @size = details[:size]
    @clatters = details[:clatters]
    @weight = details[:weight]
  end

  def guess(presents)
    presents.each { |present| return @name if present[:size] == @size && present[:clatters] == @clatters && present[:weight] == @weight}; nil
  end
end

def guess_gifts(wishlist, presents)
  result = []
  wishlist.each do |item|
    recieved = WishlistItem.new(item).guess(presents)
    result << recieved if !(recieved.nil?)
  end
  result
end
wishlist = [
  {name: "Mini Puzzle", size: "small", clatters: "yes", weight: "light"},
  {name: "Toy Car", size: "medium", clatters: "a bit", weight: "medium"},
  {name: "Card Game", size: "small", clatters: "no", weight: "light"}
]
presents = [
  {size: "medium", clatters: "a bit", weight: "medium"},
  {size: "small", clatters: "yes", weight: "light"}
]
puts guess_gifts(wishlist, presents)