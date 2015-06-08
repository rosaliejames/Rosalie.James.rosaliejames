puts "Hello!"
puts "What's your age?"

age = gets.strip.to_i

if age <=21
	puts "Sorry. You're too young"
elsif age >= 50  
	puts "Sorry. You're too old"
else 
	puts "Come on in!"
end 