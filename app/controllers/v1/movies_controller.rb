class V1::MoviesController < ApplicationController
  def index
    api_url = ENV['REACT_APP_API_URL']
    api_key = ENV['REACT_APP_API_KEY']
    
    thepage = request.query_parameters['page']
    # puts "thepage = #{thepage}"

    response = HTTP.get("#{api_url}movie/popular?api_key=#{api_key}&language=en-US&page=#{thepage}").to_s
    parsed_response = JSON.parse(response)
    results = parsed_response
    render json: results
  end
end
