def bugged_concatenate(array)
  puts array.inject("") { |output, element| output + element.to_s }.upcase
end


# 1. fix the method call: ArgumentError
bugged_concatenate ([1, 9, 84, " ", 'George Orwell']) 

bugged_concatenate ([78, 11, 0, " " 'Le Vesinet'])
