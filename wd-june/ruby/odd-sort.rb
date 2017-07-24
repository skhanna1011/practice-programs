nums = [5,3,2,8,1,4]
# 1,3,2,8,5,4
odd = []
index = 0
nums.each { |num| odd << num if num.odd?}
odd.sort!
nums.each.with_index do |num,i|
  if num.odd?
    nums[i] = odd[index]
    index += 1
  end
end
puts nums