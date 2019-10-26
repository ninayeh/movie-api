class V1::SearchController < ApplicationController
  def index
    api_url = ENV['REACT_APP_API_URL']
    api_key = ENV['REACT_APP_API_KEY']
    
    searchTerm = request.query_parameters['query']
    thepage = request.query_parameters['page']
    
    response = HTTP.get("#{api_url}search/movie?api_key=#{api_key}&language=en-US&query=#{searchTerm}&page=#{thepage}").to_s
    therequest = ("#{api_url}search/movie?api_key=#{api_key}&language=en-US&query=#{searchTerm}&page=#{thepage}").to_s
    puts "therequest = #{therequest}  "

    parsed_response = JSON.parse(response)
    results = parsed_response
    render json: results
  end
end
