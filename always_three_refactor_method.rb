def my_method(number)
	puts 'Always ' + (((number + 5) * 2 - 4) / 2 - number).to_s
end 

print "Give me a number: "
num = gets.to_i
my_method(num)

# below is a different code from the always_three_refactor_method

def my_math_method(num1, num2)
    sum = num1 + num2
	puts "The sum of 2 + 2 is #{sum}"
end

print "Give me a number: "
num1 = gets.to_i

print "Give me another number: "
num2 = gets.to_i

my_math_method(num1, num2)
