print "Do you love me, Y or N?" 
answer = gets.downcase

#puts "Answer is: #{answer}"

if answer = "n"
	puts "Too bad..."
else
	all_lines = ["Roses are red,", "Violets are blue,", "Sugar is sweet,", "And so are you!"]

	total_number_of_lines = all_lines.size
	lines_displayed = 0

	while (lines_displayed <= total_number_of_lines)
		puts all_lines[lines_displayed]
		lines_displayed += 1
	end # end of loop

end # end of if 