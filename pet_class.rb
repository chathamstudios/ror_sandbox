class Pet		#SUPER CLASS

	def set_name= (name)
		@name = name
	end
 
	def get_name
		return @name
	end
 
	def set_owner= (owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
  
end

class Ferret < Pet
	@@total_ferrets = 0
	
	def initialize
		@@total_ferrets += 1
	end
	
	def self.current_count
		puts "There are currently #{@@total_ferrets} instances of the Ferret class."
	end
	
	def squeal
		return "squeeeeee"
	end
 
end
 
class Chincilla < Pet
	@@total_chincillas = 0
		
	def initialize
		@@total_chincillas += 1
	end
	
	def self.current_count
		puts "There are currently #{@@total_chincillas} instances of the Chincilla class."
	end
 
	def squeek
		return "eeeep"
	end
 
end
 
class Parrot < Pet
 	@@total_parrots = 0
		
	def initialize
		@@total_parrots += 1
	end
	
	def self.current_count
		puts "There are currently #{@@total_parrots} instances of the Parrot class."
	end

	def tweet
		return "swaulk!"
	end
 
end

# create a ferret 
my_ferret = Ferret.new
my_ferret.set_name = "Fredo"
ferretname = my_ferret.get_name

# create a ferret  
my_ferret2 = Ferret.new
my_ferret2.set_name = "Jo-Jo"
ferret2name = my_ferret2.get_name

# create a chincilla  
my_chincilla = Chincilla.new
my_chincilla.set_name = "Dali"
chincillaname = my_chincilla.get_name

# create a chincilla  
my_chincilla2 = Chincilla.new
my_chincilla2.set_name = "June"
chincillaname2 = my_chincilla2.get_name

# create a chincilla  
my_chincilla3 = Chincilla.new
my_chincilla3.set_name = "Jeremy"
chincillaname3 = my_chincilla3.get_name

# create a chincilla  
my_chincilla4 = Chincilla.new
my_chincilla4.set_name = "Coco"
chincillaname4 = my_chincilla4.get_name

# create a chincilla  
my_chincilla5 = Chincilla.new
my_chincilla5.set_name = "Jerri"
chincillaname5 = my_chincilla5.get_name

# create a parrot
my_parrot = Parrot.new
my_parrot.set_name = "Budgie"
parrotname = my_parrot.get_name

# create a parrot
my_parrot2 = Parrot.new
my_parrot2.set_name = "Polly"
parrotname2 = my_parrot2.get_name

# create a parrot
my_parrot3 = Parrot.new
my_parrot3.set_name = "Max"
parrotname2 = my_parrot3.get_name

puts "\n#{ferretname} says #{my_ferret.squeal}, 
#{chincillaname} says #{my_chincilla.squeek} 
and #{parrotname} says #{my_parrot.tweet}.\n\n"

Ferret.current_count 
puts Ferret.inspect
puts my_ferret.inspect + "\n\n"

Chincilla.current_count 
puts Chincilla.inspect
puts my_chincilla.inspect + "\n\n"

Parrot.current_count
puts Parrot.inspect
puts my_parrot.inspect + "\n\n" 