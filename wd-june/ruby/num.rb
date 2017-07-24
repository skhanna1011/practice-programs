n1 = 18.3
n2 = 16.7
n3 = 20
n4 = -125

puts n1.class #Float
puts n2.class #Float
puts n3.class #float
puts n4.class #float

puts n1.round # 18
puts n2.round # 16

puts n1 #18.3
puts n2 #16.7

puts n1.ceil # 19
puts n2.ceil # 17
puts n2.floor # 16

puts n1.to_i # 18
puts n3.to_f # 20.0
puts n1.to_s # "18.3"
puts n4.to_f # -125.0

puts n4.abs # 125
puts n3.next #21