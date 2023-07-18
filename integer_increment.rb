def plus_one(digits)
  new_value = (digits.join.to_i) + 1
  new_value.to_s.chars.map {|digit| digit.to_i}
end

digits = [4,3,2,1]
print plus_one(digits)
