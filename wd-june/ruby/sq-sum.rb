def sq_sum(arr)
  puts arr.map!{|num| num*num}.inject(:+)
end
sq_sum([1,2,2])