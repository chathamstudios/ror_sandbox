class Pet		#SUPER CLASS

	attr_accessor :name, :owner_name
  
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
my_ferret.name = "Fredo"
ferretname = my_ferret.name

# create a ferret  
my_ferret2 = Ferret.new
my_ferret2.name = "Jo-Jo"
ferret2name = my_ferret2.name

# create a chincilla  
my_chincilla = Chincilla.new
my_chincilla.name = "Dali"
chincillaname = my_chincilla.name

# create a chincilla  
my_chincilla2 = Chincilla.new
my_chincilla2.name = "June"
chincillaname2 = my_chincilla2.name

# create a chincilla  
my_chincilla3 = Chincilla.new
my_chincilla3.name = "Jeremy"
chincillaname3 = my_chincilla3.name

# create a chincilla  
my_chincilla4 = Chincilla.new
my_chincilla4.name = "Coco"
chincillaname4 = my_chincilla4.name

# create a chincilla  
my_chincilla5 = Chincilla.new
my_chincilla5.name = "Jerri"
chincillaname5 = my_chincilla5.name

# create a parrot
my_parrot = Parrot.new
my_parrot.name = "Budgie"
parrotname = my_parrot.name

# create a parrot
my_parrot2 = Parrot.new
my_parrot2.name = "Polly"
parrotname2 = my_parrot2.name

# create a parrot
my_parrot3 = Parrot.new
my_parrot3.name = "Max"
parrotname2 = my_parrot3.name

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