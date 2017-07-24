arr = [34, -345, -1, 100]
min = arr[0]
arr.each do |no|
  min = no if no < min
end
puts min