puts "Enter a number"
input = gets.strip.to_i
number = input - 2
calculator = 0
one = 1 
two = 1
fib = 0

while calculator < number 
	fib = one + two 
	two = one 
	one = fib 
	calculator+=1
end 

puts "Fibonacci at #{input}:#{fib}"