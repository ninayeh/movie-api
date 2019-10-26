class V1::ImagesController < ApplicationController

  def index
    # image={`${IMAGE_BASE_URL}${BACKDROP_SIZE}/${this.state.heroImage.backdrop_path}`}

    # REACT_APP_IMAGE_BASE_URL =http://image.tmdb.org/t/p/
    # REACT_APP_BACKDROP_SIZE = w1280
    # REACT_APP_POSTER_SIZE = w500

    image_base_url = ENV['REACT_APP_IMAGE_BASE_URL']
    backdrop_size = ENV['REACT_APP_BACKDROP_SIZE']

    backdrop_path = request.query_parameters['path']
    
    @result = ("#{image_base_url}#{backdrop_size}/#{backdrop_path}").to_s
    my_json_string = {heroImage: "#{@result}"};
    
    response = JSON(my_json_string)
    # JSON.parse(response)

    # render json: response
  end

  def image
    
  end
end