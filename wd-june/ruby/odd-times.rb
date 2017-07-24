def odd_times(arr)
  arr.each { |num| return num if arr.count(num).odd?}
end
puts odd_times([3,2,4,2,2,5,5,3,4])