Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1, defaults: { format: 'json'} do
    get 'movies', to: 'movies#index'
    get "/movies/:id", to: "movies#show"
    get "/movies/:id/credit", to: "movies#credit"
    get 'search', to: 'search#index'
  end
end
