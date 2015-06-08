result = []

evals = {"Google" => "OK","Bing" => "Bad"}

engines = ["Google", "Bing", "Ask Jeeves"]
engines.each do |e|
	if evals.has_key?e
		result << evals[e]
	else 
		result << "What is that"
	end 
end 

puts "#{result}"
