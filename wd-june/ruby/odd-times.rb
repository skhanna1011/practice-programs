def odd_times(arr)
  arr.each { |num| return num if arr.count(num).odd?}
end
puts odd_times([2,5,4,5,2,1,3,5])