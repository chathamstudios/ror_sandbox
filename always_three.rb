print "Give me a number: "
number1 = gets
original_number = number1
number1 = number1.to_i
original_number = original_number.to_i
number1 += 5
puts "Add 5 to number: #{number1}" 
number1 *= 2
puts "Multiply result by 2: #{number1}"
number1 -= 4
puts "Subtract result by 4: #{number1}"
number1 /= 2
puts "Divide result by 2: #{number1}"
number1 -= original_number
puts "Subtract first number from the final number: #{number1}"