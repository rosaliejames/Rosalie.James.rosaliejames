def whisper(str)  
	puts str.downcase
end

def twist(str) 
	list = str.split("")
	puts list.shuffle.join
end 