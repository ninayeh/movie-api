Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1, defaults: { format: 'json'} do
    get 'movies', to: 'movies#index'
    get 'movie_detail', to: 'movies#show'
  end
end
