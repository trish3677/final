Rails.application.routes.draw do

  root 'restaurants#index'

  get "/signup" => 'users#new'
  post "/users" => 'users#create'
  get '/users/:id' => 'users#show', as: :user

  get "/login" => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  post '/visits/new/:id' => 'visits#new'
  delete '/visits/delete/:id' => 'visits#destroy'


  resources :restaurants
  resources :neighborhoods
  resources :cuisines
  resources :users



 
end
