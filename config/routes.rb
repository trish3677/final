Rails.application.routes.draw do

  root 'restaurants#index'


  #########################################################
  # The "Golden 7" for accessing the "restaurants" resource


  get '/restaurants/new' => 'restaurants#new', as: 'new_restaurant'
  post '/restaurants' => 'restaurants#create', as: 'restaurants'

  get 'restaurants' => 'restaurants#index'
  get '/restaurants/:id' => 'restaurants#show', as: 'restaurant'

  get '/restaurants/:id/edit' => 'restaurants#edit', as: 'edit_restaurant'
  patch '/restaurants/:id' => 'restaurants#update'

  delete '/restaurants/:id' => 'restaurants#destroy'

 
end
