Rails.application.routes.draw do

  root 'restaurants#index'

  get "/signup" => 'users#new'
  post "/users" => 'users#create'

  get "/login" => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  resources :restaurants
  resources :neighborhoods
  resources :cuisines
  resources :users

 
end
