def invert(hash)
	new_hash = {}
	hash.each do |key, value| 
		new_hash[value] = key
	end 
	new_hash
end 

