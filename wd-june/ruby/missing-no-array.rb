def missing_no(given_array)
  n = given_array.last
  nos_till_n = (1..n).to_a
  nos_till_n.each{|no| return no if !given_array.include?(no)}
end
array = [1,2,3,5]
puts missing_no(array)