class V1::MoviesController < ApplicationController
  
  API_URL = ENV['REACT_APP_API_URL']
  API_KEY = ENV['REACT_APP_API_KEY']
  
  def index 
    thepage = request.query_parameters['page']

    response = HTTP.get("#{API_URL}movie/popular?api_key=#{API_KEY}&language=en-US&page=#{thepage}").to_s
    parsed_response = JSON.parse(response)
    results = parsed_response
    render json: results
  end

  def show
    movie_id = params[:id]
    response = HTTP.get("#{API_URL}movie/#{movie_id}?api_key=#{API_KEY}&language=en-US").to_s
    parsed_response = JSON.parse(response)

    render json: parsed_response
  end

  def credit
    movie_id = params[:id]
    
    response = HTTP.get("#{API_URL}movie/#{movie_id}/credits?api_key=#{API_KEY}&language=en-US").to_s
    parsed_response = JSON.parse(response)

    render json: parsed_response
  end
end
