class Vehicle

	def set_name= (name)
		@name = name
	end
 
	def get_name
		return @name
	end
 
	def set_number_of_wheels= (number_of_wheels)
		@number_of_wheels = number_of_wheels
	end
 
	def get_number_of_wheels
		return @number_of_wheels
	end
 
	def set_number_of_passengers= (number_of_passengers)
		@number_of_passengers = number_of_passengers
	end
 
	def get_number_of_passengers
		return @number_of_passengers
	end
  
end


class Boat < Vehicle
 
	def sails
		return "sail on water"
	end
 
end
 
class Car < Vehicle
 
	def rolls
		return "roll on land"
	end
 
end
 
class Plane < Vehicle
 
	def flys
		return "fly through air"
	end
 
end

 
my_boat = Boat.new
my_boat.set_name = "S.S. Minnow"
boatname = my_boat.get_name
my_boat.set_number_of_wheels = "no wheels"
boatwheels = my_boat.get_number_of_wheels
my_boat.set_number_of_passengers = "10"
boatpassengers = my_boat.get_number_of_passengers
 
my_car = Car.new
my_car.set_name = "Herbie the Love Bug"
carname = my_car.get_name
my_car.set_number_of_wheels = "4 wheels"
carwheels = my_car.get_number_of_wheels
my_car.set_number_of_passengers = "5"
carpassengers = my_car.get_number_of_passengers
 
my_plane = Plane.new
my_plane.set_name = "the Spruce Goose"
planename = my_plane.get_name
my_plane.set_number_of_wheels = "10 wheels"
planewheels = my_plane.get_number_of_wheels
my_plane.set_number_of_passengers = "100"
planepassengers = my_plane.get_number_of_passengers

puts "\n" 
puts "#{boatname} will #{my_boat.sails}, 
#{carname} will #{my_car.rolls} 
and #{planename} will #{my_plane.flys}."

puts "\n"  
puts "#{boatname} has #{boatwheels}, 
#{carname} has #{carwheels} 
and #{planename} has #{planewheels}."

puts "\n"  
puts "#{boatname} can carry #{boatpassengers} passengers, 
#{carname} can carry #{carpassengers} passengers
and #{planename} can carry #{planepassengers} passengers."

puts "\n\n"
puts my_boat.inspect
puts my_car.inspect
puts my_plane.inspect