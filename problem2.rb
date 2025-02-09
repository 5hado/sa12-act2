require 'httparty'

response = HTTParty.get('https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd')
crypto_data = JSON.parse(response.body)

crypto_data.sort_by { |crypto| -crypto['market_cap'] }

puts "Top 5 Cryptocurrencies by Market Cap:"
crypto_data[0..4].each_with_index do |crypto, index|
    puts "##{index + 1}: #{crypto['name']} - Price: $#{crypto['current_price']} - Market Cap: $#{crypto['market_cap']}"
end

