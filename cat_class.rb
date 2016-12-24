=begin
This is a simple Class with getter & setter methods.

Programmer: Mike Schram		Date: 12/23/2016  
=end
class Cat
# name
	def set_name=(cat_name)
		@name = cat_name
	end
		
	def get_name
		return @name
	end
# color	
	def set_color=(cat_color)
		@color = cat_color
	end
		
	def get_color
		return @color
	end
# age
	def set_age=(cat_age)
		@age = cat_age
	end
		
	def get_age
		return @age
	end
# size
	def set_size=(cat_size)
		@size = cat_size
	end
		
	def get_size
		return @size
	end
# speaks
	def speaks
		return "\"Meow, meow!\""
	end
# eats
	def eats
		return "\"I can has cheezburger?\" when she is hungry."
	end
# sleeps
	def sleeps
		return "\"Zzzzzz..meow..zzz\" when she is sleeping"
	end
# plays
	def plays
		return "\"Chasing this red light is fun!!\" when she is playing"
	end
# hunts
	def hunts
		return "\"I'm going to get that bird!\" when she is hunting"
	end
end

# MAIN LOGIC

my_cat1 = Cat.new
# set name
my_cat1.set_name = "Rosie"
cat1_name = my_cat1.get_name
puts "#{cat1_name} says #{my_cat1.speaks}"
#set color
my_cat1.set_color = "black & white"
cat1_color = my_cat1.get_color
puts "#{cat1_name} is #{cat1_color}"
#set age
my_cat1.set_age = "6 years"
cat1_age = my_cat1.get_age
puts "#{cat1_name} is #{cat1_age} old"
#set size
my_cat1.set_size = "fun size"
cat1_size = my_cat1.get_size
puts "#{cat1_name} is #{cat1_size}"

# DO STUFF.... 
# eat
puts "#{cat1_name} says #{my_cat1.eats}"
# plays
puts "#{cat1_name} says #{my_cat1.plays}"
# hunt
puts "#{cat1_name} says #{my_cat1.hunts}"

# inspect object
puts "\nThe following shows an inspection of the object:\n" + my_cat1.inspect