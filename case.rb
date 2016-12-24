print "What is the weather like today?"
weather = gets
weather.downcase! # sanitize string to remove any caps
#puts "Your response is #{weather}." # debug line

#weather = "sunny" # hard code not recommended	
case weather
when 'sunny'
  puts "It's going to be a great day!"
when 'cloudy'
  puts "Looks like rain. Bring an umbrella just in case."
when 'foggy'
  puts "It will be difficult to see in this thick pea soup."
when 'rainy'
  puts "Definitely bring a rain coat and umbrella!"
when 'snowy'
  puts "You'll need to dress in layers with a heavy coat and snow boots!"
when 'windy'
  puts "Wear your windbreaker least you get blown away."
else
  puts "I'm not sure what that means, so best to be prepared for anything."
end