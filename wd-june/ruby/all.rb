def all?(arr, pre)
  x = []
  x = arr.find_all{|num| num.pre}
  puts x.empty?
end
all?([1,2,3], &:even?)