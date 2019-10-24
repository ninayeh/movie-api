class V1::MoviesController < ApplicationController
  def index
    api_url = ENV['REACT_APP_API_URL']
    api_key = ENV['REACT_APP_API_KEY']
    puts "API = #{api_url}"
    response = HTTP.get("#{api_url}movie/popular?api_key=#{api_key}&language=en-US&page=1").to_s
    parsed_response = JSON.parse(response)
    results = parsed_response['results']
    render json: results
  end
end
