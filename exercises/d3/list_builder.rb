puts "Welcome to list builder!"
list = []

while true 
	puts "What can I add?" 
	add = gets.strip
	list << add
	puts "Added! Your list is:"
	puts list
end 

