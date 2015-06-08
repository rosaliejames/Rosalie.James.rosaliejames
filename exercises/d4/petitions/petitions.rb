require 'rest-client'
require 'json'

#Greet User
puts "Hello! Welcome to Petitions!" 
puts "What kind of petitions would you like to see? ('open' or 'closed')"
status = gets.strip
offset = 0

puts "Showing petition of status: #{status}"

while true
	#get the petitions 
	#petitions = ["Gun Control", "Cannabis", "Immigration"] 
	begin
		response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json?status=#{status}&offset=#{offset}"
	rescue RestClient::REsourceNotFound
		puts "Sorry, there was an error getting petitions"
	end

	parsed_response = JSON.parse(response)
	petitions = parsed_response["results"]
	if petitions.empty? 
		puts "Sorry, no more petitions to show"
		break
	end

	#print each petition 
	petitions.each_with_index do |petition, index|
		puts "[#{status.upcase}] #{index+1}. #{petition["title"]}"
	end 
	offset += 10
	puts "Would you like to see more? (y/n)"
	break if gets.strip == "n"
end 

puts

#goodbye
puts "Thanks, bye!"