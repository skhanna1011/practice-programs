mn = {
  #key => value
  :teja => "987654321",
  :rahul => "987654321",
  :sharath => "987654321",
  :harish => "987654321"
}
mn["aditya"] = "987654321"
puts mn
puts mn.keys
puts mn.values
puts mn[:teja]
puts mn.has_key?("teja")
puts mn.has_value?("987654321")
mn .each {|name, no| puts "#{name} - #{no}"}