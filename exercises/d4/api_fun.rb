require 'rest-client'
require 'json'
# greet user
puts "Hello! Welcome to the Event App!"
puts "Do you want to search by city or zip code?('city' or 'zip code')"
decision = gets.strip

if decision == "zip code"
	puts "Enter a zip code:"
	zip = gets.strip.to_i
elsif decision == "city" 
	puts "State (two letter abbreviation):"
	state = gets.strip.downcase 
	puts "City:"
	city = gets.strip.downcase
	response = RestClient.get "http://api.zippopotam.us/us/#{state}/#{city}"
	parsed_response = JSON.parse(response)
	zip = parsed_response["places"][0]["post code"].to_i
else 
	puts "Oops, that's not an option"
end 

page = 1
puts "Enter a date(YYYY-MM-DD):"
selected_day= gets.strip

puts "Finding events near you..."

while true
	# get the events 
	begin
		response = RestClient.get "http://api.seatgeek.com/2/events?page=#{page}&geoip=#{zip}&datetime_local.gte=#{selected_day}"
	rescue RestClient::ResourceNotFound
		puts "Sorry, there was an error getting petitions"
	end
	parsed_response = JSON.parse(response)
	events = parsed_response["events"]

	# print events 
	events.each_with_index do |event, index|
		type = event["taxonomies"].first["name"]
		title = event["title"]
		venue = event["venue"]["name"]
		location = event["venue"]["city"]
		date_all = event["datetime_local"]
		year = date_all[0] + date_all[1] + date_all[2] + date_all[3]
		month = date_all[5] + date_all[6]
		day = date_all[8] + date_all[9]
		time = date_all[11] + date_all[12] + date_all[13] + date_all[14] + date_all[15]
		puts "#{index +1}. #{type.upcase}: #{title}. Takes place at #{venue} in #{location} on #{month}/#{day} at #{time}"
	end 
	page += 1
	puts "Would you like to see more options? (y/n)"
	break if gets.strip == "n" 
end 
puts "Thanks, bye!"


