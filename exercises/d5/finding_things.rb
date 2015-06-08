def index_of (haystack, needle) 
	string = haystack.split("")
	string.each_with_index do|letter, index|
		if letter == needle 
			return index
		end 
	end 
	return -1
end 

def find_by_name (haystack, needle) 
	#puts haystack 
	#puts needle 
	haystack.each_with_index do |person, index| 
		#puts index 
		#puts person 
		#puts person[:name]
		#puts person[:name] == needle
		if person[:name] == needle.strip 
			return haystack[index]
		end 
	end 
	return nil
end 

def filter_by_name (haystack, needle) 
	results = []
	haystack.each_with_index do |person, index| 
		if person[:name] == needle 
			results << haystack[index]
		end 
	end 
	return results
end 

puts index_of("abcdefghijklmnop", "m")
# => 12
puts index_of("abcdefghijklmnop", "z")
# => -1

people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]
puts "one:"
puts find_by_name(people, "ski")
# => {:id=>2,:name=>"ski"}

puts "two:"
puts find_by_name(people, "kitten!")
# => nil
puts "three:"
puts filter_by_name(people, "ski")
# => [{:id=>2,:name=>"ski"}, {:id=>4,:name=>"ski"}]
puts "four:"
puts filter_by_name(people, "bru")
# => [{:id=>1,:name=>"bru"}] (Note this is still an array)
puts "five:"
puts filter_by_name(people, "puppy!!!")
# => []