puts "Hey bru"
puts "Let's compute some quadform"
puts "Give me an A:"
a = gets.strip.to_i 
puts "Give me a B:" 
b = gets.strip.to_i
puts "Give me a C:" 
c = gets.strip.to_i
puts "beep computing boop boop" 
x1 = ((-1*b) + (Math.sqrt(b*b - 4*a*c)))/(2*a) 
x2 = ((-1*b) - (Math.sqrt(b*b - 4*a*c)))/(2*a) 
puts "x is either" 
puts x1.to_f 
puts "or"
puts x2.to_f
puts "Goodbye!"