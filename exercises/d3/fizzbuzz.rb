num = 1 
while num <= 100 
	if (num % 5 == 0) && (num % 3 == 0)
		puts "fizzbuzz"
	elsif num % 3 == 0
		puts "fizz" 
	elsif num % 5 == 0
		puts "buzz" 
	else 
		puts num
	end 
	num += 1 
end 

