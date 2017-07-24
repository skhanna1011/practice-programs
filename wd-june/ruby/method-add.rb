def arithmetic(n1, n2, opp)
  result = case opp
  when "add"
    n1+n2
  when "subtract"
    n1-n2
  when "multiply"
    n1 * n2
  when "divide"
    n1.to_f/n2
  end
  return result
end
puts arithmetic(5, 2, "add")
puts arithmetic(5, 2, "subtract")
puts arithmetic(5, 2, "multiply")
puts arithmetic(5, 2, "divide")