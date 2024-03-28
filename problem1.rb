require 'httparty'

username = '5hado'

response = HTTParty.get("https://api.github.com/users/#{username}/repos")
repositories = JSON.parse(response.body)
maxstar = 0
repositories.each do |repo|   
    puts "Repository Name: #{repo['name']}"
    puts "Repository Description: #{repo['description']}"
    puts "Star Count: #{repo['stargazers_count']}"
    if maxstar < repo['stargazers_count']
        maxstar = repo['stargazers_count']
    end
    puts "Fork Count: #{repo['forks_count']}"
    puts "URL: #{repo['html_url']}"
    puts ""
end

puts "Most Starred Repository"
repositories.each do |repo|   
    
    if maxstar = repo['stargazers_count']
        puts "Repository Name: #{repo['name']}"
    puts "Repository Description: #{repo['description']}"
    puts "Star Count: #{repo['stargazers_count']}"
    puts "Fork Count: #{repo['forks_count']}"
    puts "URL: #{repo['html_url']}"
    puts ""
    break
    end
end



