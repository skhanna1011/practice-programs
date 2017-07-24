nums = [1,2,3,4,3,2,1]
length = nums.length
index = nil
nums.each.with_index do |item, i|
  sum_left = nums[0..i-1].inject(:+)
  sum_right = nums[i+1..length-1].inject(:+)
  index = i if sum_left == sum_right
end
if index.nil?
  puts -1
else
  puts index
end