puts "Welcome to da hip hoppin club. What's your age?"
age = gets.strip.to_i

if age < 21 
	puts "Too young, fool!"
elsif age >= 65 
	puts "Go back to the nursing home!"
else 
	puts "Aw yeah c'com in"
end 