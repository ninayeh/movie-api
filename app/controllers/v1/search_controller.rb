class V1::SearchController < ApplicationController
  def index
    api_url = ENV['REACT_APP_API_URL']
    api_key = ENV['REACT_APP_API_KEY']
    # searchTerm = "joker"  
    searchTerm = request.query_parameters['query']
    puts "searchTerm #{searchTerm}"

    response = HTTP.get("#{api_url}search/movie?api_key=#{api_key}&language=en-US&query=#{searchTerm}").to_s
    
    parsed_response = JSON.parse(response)
    results = parsed_response['results']
    render json: results
  end
end
