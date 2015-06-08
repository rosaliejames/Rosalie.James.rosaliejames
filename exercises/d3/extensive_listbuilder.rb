puts "Welcome to list builder++"
list = [] 
run = true;
info = []

while run
	puts "What can I do for you?"
	input = gets.strip
	info = input.split
	if input == "quit" 
		puts "Bye!"
		run = false
	elsif info[0] == "add" 
		list << info[1]
		puts "Added! Your list is: #{list}"
	elsif info[0] == "remove" 
		list.delete(info[1])
		puts "Removed! Your list is #{list}"
	else 
		puts "Invalid Request"
	end 
end 

