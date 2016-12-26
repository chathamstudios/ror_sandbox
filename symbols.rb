entry_01 = { name: "Linus", email: "linus.wonderful@gmail.com"}
entry_02 = { name: "John", email: "john.wonderful@gmail.com"}
entry_03 = { name: "Rose", email: "rose.wonderful@gmail.com"}
entry_04 = { name: "Daisy", email: "daisy.wonderful@gmail.com"}

i = 1
max = 100

while i < max  do
	r = Random.rand(1...5) 
	case r
	when 1
		winner = entry_01[:name]
	when 2
		winner = entry_02[:name]
	when 3
		winner = entry_03[:name]
	when 4 
		winner = entry_04[:name]
	else
		winner = "No winner this time!"
	end
		
	puts "#{winner} is the WINNER!!!" 
	i += i
end