Rails.application.routes.draw do

  root 'restaurants#index'


  #########################################################
  # The "Golden 7" for accessing the "restaurants" resource



  resources :restaurants
  resources :neighborhoods
  resources :cuisines

 
end
