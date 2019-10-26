Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # namespace :v1, defaults: { format: 'json'} do
  namespace :v1  do
    get 'movies', to: 'movies#index', :format => "json"
    get 'search', to: 'search#index', :format => "json"
    get 'images', to: 'images#index', :format => "html"

    
  
  end
end
