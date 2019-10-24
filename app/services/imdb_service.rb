class ImdbServices
  def get_popular_movies_list
    
  end
  
end

# require 'http'

# response = HTTP.get("https://api.themoviedb.org/3/movie/popular?api_key=0b3c0e655bf7fb004141117537bc126b&language=en-US&page=1").to_s
# parsed_response = JSON.parse(response)
# results = parsed_response['results']
# puts results

require 'dotenv/load'

test = ENV['test']
puts "Test = #{test}"