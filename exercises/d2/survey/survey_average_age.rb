puts "Hello!"
puts "How old are you?"
your_age = gets.strip.to_i
puts "How old is your mom?"
moms_age = gets.strip.to_i
puts "How old is your dad?"
dads_age = gets.strip.to_i
average_age = (your_age + moms_age + dads_age)/3
puts "Thanks for answering my creepy questions!"
puts "The average age of your family is #{average_age} years old!"
puts "Goodbye!"