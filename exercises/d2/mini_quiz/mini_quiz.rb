puts "Welcome to Rosalie's mini quiz"
puts "Where am I from?"
answer_1 = gets.strip
points = 0
if answer_1 == "NY" || answer_1 == "New York" 
	puts "Right!" 
	points +=1
else 
	puts "Wrong... I'm from New York."
end 

if points ==1 
	puts "You have 1 point."
else 
	puts "You have #{points} points."
end

puts "What's my middle name?" 
answer_2 = gets.strip
if answer_2 == "Elizabeth" 
	puts "Right!" 
	points += 1
else 
	puts "Wrong... it's Elizabeth."
end 

if points ==1 
	puts "You have 1 point."
else 
	puts "You have #{points} points."
end

puts "How old am I?"
answer_3 = gets.strip.to_i 
if answer_3 == 20 
	puts "Right!"
	points += 1
else 
	puts "Wrong... I'm 20."
end 

if points ==1 
	puts "You have 1 point."
else 
	puts "You have #{points} points." 
end 

puts "Where do I go to school?" 
answer_4 = gets.strip
if answer_4 == "UVA" || answer_4 = "University of Virginia" 
	puts "Right!" 
	points += 1
else 
	puts "Wrong... I go to UVA"
end 

if points ==1 
	puts "You have 1 point."
else 
	puts "You have #{points} points."
end

puts "How many siblings do I have?" 
answer_5 = gets.strip.to_i
if answer_5 == 2
	puts "Right!" 
	points += 1
else 
	puts "Wrong... I have two brothers."
end 

if points ==1 
	puts "You have 1 point."
else 
	puts "You have #{points} points."
end

puts "Am I the oldest or the youngest?" 
answer_6 = gets.strip
if answer_6 == "oldest"
	puts "Right!" 
	points += 1
else 
	puts "Wrong... I'm the oldest."
end 

if points ==1 
	puts "You have 1 point."
else 
	puts "You have #{points} points."
end

puts "Thanks for playing!"