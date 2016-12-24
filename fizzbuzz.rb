def count
# Write a program that prints the numbers from 1 to 100
# For multiples of three, print “Fizz” instead of the number
# For multiples of five, print “Buzz” instead of the number
# For numbers which are multiples of both three and five, print “FizzBuzz” instead of the number

	i = 1
	max = 101

	while i < max  do

	x = i%3
	y = i%5

	if x != 0 && y != 0
		puts i
	end
	
	if x == 0 && y != 0
		puts "#{i} is a Fizz!"
	end

	if x != 0 && y == 0
		puts "#{i} is a Buzz!"
	end

	if x == 0 && y == 0
		puts "#{i} is a FizzBuzz!"
	end

	   i +=1
	end # end while loop

end

puts "\n\nThis program prints the numbers from 1 to 100, IF the number is a multiple of three, print “Fizz”, IF the number
is a multiples of five, print “Buzz”, IF numbers which are multiples of both three and five, print “FizzBuzz” \n\n"
count