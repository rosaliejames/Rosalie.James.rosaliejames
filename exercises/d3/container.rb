puts "Welcome to container builder!"
run = true
data = {}

while run
	puts "What can I do for you?"
	input = gets.strip
	info = input.split
	if input == "quit" 
		puts "Bye!"
		run = false
	elsif info[0] == "add" 
		if data.has_key? info[1] 
			data[info[1]] = (data[info[1]] + 1)  
		else 
			data[info[1]] = 1
		end
		puts "Added! Your container has:"
		puts "#{data}"
	elsif info[0] == "remove" 
		if data.has_key? info[1] 
			if data[info[1]] == 1 
				data.delete(info[1])
			else 
				data[info[1]] = (data[info[1]] - 1)  
			end 
			puts "Removed! Your container has:"
			puts "#{data}"
		else 
			puts "Woops, that's not in your container!"
			puts "Your container has:"
			puts "#{data}"	
		end
	else 
		puts "Invalid Request"
	end 
end 

