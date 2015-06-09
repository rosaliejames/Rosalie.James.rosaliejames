require 'rest-client'
require 'json'

puts "Welcome to Reddit!"
puts "what stories would you like to see? ('top' or 'hot')"
feed = gets.strip 

puts "Which subreddit would you like to see? ('funny', 'aww')"
subreddit = gets.strip

puts "Loading stories..."

response = RestClient.get "http://www.reddit.com/r/#{subreddit}/#{feed}.json?limit=10"


parsed_response = JSON.parse(response)	
stories = parsed_response["data"]["children"]

stories.each_with_index do |story, index| 
	puts "#{index + 1}. #{story["data"]["title"]}"
end 