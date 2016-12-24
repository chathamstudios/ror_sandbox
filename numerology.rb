# Program to convert a person's birth date into a Numerology code and 
# then use that code to look up a person's outlook with the Numerology chart. 
# Programmer: Mike Schram	Date: 12/15/2016 

# prompt for user's birthdate and move the date into an array
puts "\n\nFinding your Birth Path Number \n\n
The birth path number, which suggests your overall path in life and place in the world, is based on your complete birth date. It is easy to calculate. Simply add up the digits of your birth data, and keep “reducing” (explained via the example here) to a single digit.

Example:

If your birthday is April 28, 1968, for example, note it as follows:

Birth Month is April, which is the 4th month = 4 Birth Day is 28 = 28
Birth Year is 1968 = 1968.

Add up the digits of all of these numbers: 4+2+8+1+9+6+8 = 38

Further “reduce” this number to a single digit by adding its digits: 3+8 = 11

And then further reduce it, if necessary: 1+1 = 2

The final digit, 2, is the Birth Path Number! \n\n\
================================================================================================ \n\n" 

print "What is your birthdate using the MMDDYYYY format?" 
birthdate = gets
birthdate.chars.to_a

# iterate through the birthdate array and add up each number 
i = 0
num = birthdate.length
total = 0

while i < num  do
   #puts "Value for array index #{i} is  #{birthdate[i]}." # debug line
   total += birthdate[i].to_i
   i +=1
end

puts "\n These numbers add up to #{total} \n\n Next add these two numbers together\n" 

# convert the total array back to a string so its individual array components can be totalled 
sum = total.to_s 

i = 0
num = sum.length
total2 = 0

while i < num  do
   total2 += sum[i].to_i
   i +=1
end

puts "\n These two numbers add up to #{total2} \n" 

# now determine if total2 is > 9, if it is then add those two numbers together 
if total2.to_i > 9
	sum = total2.to_s 

	i = 0
	num = sum.length
	total2 = 0

	while i < num  do
		total2 += sum[i].to_i
		i +=1
end

puts "\n Will have to add these two numbers together since the sum is greater than 9: These two numbers add up to #{total2} \n\n" 	
end 

# now that the number is reduced to its lowest numeric value use a case statement to 
# provide output to the user telling them what their number is and what it means 

case total2
when 1
  puts "Number One

One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.

Keywords: independent, creative, original, ambitious, determined, self-assured. If expressed negatively: arrogant, stubborn, impatient, self-centered.

As lovers: Number ones take the lead in love. Love and/or the chase is of utmost importance to these lovers. There can be self-centeredness, however. These lovers are willing to experiment, and they can be quite exciting–they can also require a lot of excitement because they can bore easily."
when 2
  puts "Number Two

This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon.

Keywords: diplomatic, warm, peaceful, sensitive. If expressed negatively: too dependent, manipulative, passive-aggressive.

As lovers: Number Twos will bend over backwards to keep a relationship running smoothly. They offer emotional security to their lovers. The number two is associated with the Moon and, since the Moon rules Cancer in astrology, is similar to the Cancer vibration."
when 3
  puts "Number Three

Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter.

Keywords: jovial, friendly, positive, adventurous, self-expressive. If expressed negatively: extravagant, scattered, superficial.

As lovers: Number Threes are fun, energetic, and willing to experiment. These lovers need space and contact with others in order to feel content. If they feel confined, they will be unhappy and restless. Allowed the freedom to socialize and scatter their energies, they are exciting and happy lovers."
when 4
  puts "Number Four

This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus.

Keywords: trustworthy, helpful, steady, logical, self-disciplined, problem-solving. If expressed negatively: contrary, stubborn, narrow.

As lovers: Although steady and generally trustworthy, Fours can be quite emotional and frustrated if they feel caged in. They tend to need some level of confrontation in their love lives. A relationship that stagnates will bring out their contrary nature. They love to solve problems, and if allowed to “take on” and tackle predicaments, they are very loyal lovers."
when 5
  puts "Number Five

This is the freedom lover. The number five is an intellectual vibration. These are “idea” people with a love of variety and the ability to adapt to most situations. Ruled by Mercury.

Keywords: adaptable, freedom-loving, romantic, resourceful, witty, fun-loving, curious, flexible, accommodating. If expressed negatively, non-committal, irresponsible, inconsistent.

As lovers: These lovers are generally attractive to others, as they are adaptable, curious, and friendly. Their wit and love of fun is unmistakable. In order to be happy in love, they need some level of change and variety. They also require mental stimulation. They are quick to adapt to ups and downs, but when under-stimulated, they can be inconsistent and resisting of making commitments."
when 6
  puts "Number Six

This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus.

Keywords: compassionate, stable, family-loving, trustworthy, domesticated. If expressed negatively, superficial, jealous, possessive, unwilling to change.

As lovers: Number Sixes have a deep dislike of discord and will generally work hard at keeping the peace. They are very attached to their homes and their families. At their best, they are devoted and stable partners who do whatever they can to maintain balance and harmony. At their worst, they take their peace-loving natures too far, and become lethargic, diplomatic to the point of superficiality, and jealous."
when 7
  puts "Number Seven

This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.

Keywords: unusual, introspective, intuitive, psychic, wise, reserved. If expressed negatively: melancholic, odd, leaves too much to chance, hard to reach.

As lovers: These lovers are a little spaced out, and sometimes hard to reach and to understand. However, their disinterest in material things and focus on spirituality makes for interesting, if a little kooky, bed partners and mates. They are intuitive, some are psychic, and although they can be loners at different times in their lives, they are often devoted partners. They can reach levels of intimacy and romance beyond many people’s imaginations. However, their goals in love may be too lofty and thus they can be prone to disappointment when relationships inevitably fall short of ideal."
when 8
  puts "Number Eight

This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn.

Keywords: ambitious, business-minded, practical, leading, authoritative, successful, courageous, accomplished, organized.  If expressed negatively: tense, narrow, materialistic, forceful.

As lovers: These lovers take a commitment with responsibility and bravery. When they treat relationships like business deals, however, they can easily alienate partners and fall short of creating a tolerant and romantic atmosphere. Eights are generally practical and secure, and offer their mates stability and security."
when 9
  puts "Number Nine

This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars.

Keywords: jack of all trades, humanitarian, sympathetic, helpful, emotional, tolerant, active, determined. If expressed negatively: financially careless, moody, bullying, overly emotional, sullen, restless.

As lovers: These lovers are involved and helpful. Because they are sympathetic, they can easily be doormats. They show their love by helping their partners, and assuming their lovers’ problems. If triggered, their emotions can be volcanic, and a seemingly meek personality can resort to bullying tactics when unhappy."
else
  puts "Something went wrong. Contact programmer."
end 

message = "\n\nTo learn more visit: cafeastrology.com/numerology.html\n\n Chatham Studios, 2016"
message.upcase
puts message 

