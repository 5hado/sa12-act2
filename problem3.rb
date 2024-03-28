require 'httparty'

response = HTTParty.get("http://worldtimeapi.org/api/timezone/America/New_York")
time = JSON.parse(response.body)

puts "The current time in #{time['timezone']} is #{time['datetime']}"

