#patricia corvino
 class CuisinesController < ApplicationController

  def index
      @cuisines = Cuisine.order('name asc').limit(20)
  end

  def show
      @cuisine = Cuisine.find_by(id: params["id"])

     # if @restaurant == nil
     #   redirect_to restaurants_url, notice: "No restaurants not found."
     # end
  end

  def new
    
  end

  def create
    # restaurant = Restaurant.new
    # restaurant.name = params[:name]
    # restaurant.address = params[:address]
    # restaurant.rating = params[:rating]
    # restaurant.notes = params[:description]
    # restaurant.save
    # redirect_to restaurants_url
  end

  def edit
    # @restaurant = Restaurant.find_by(id: params["id"])
  end

  def update
    # restaurant = Restaurant.find_by(id: params["id"])
    # restaurant.name = params[:name]
    # restaurant.address = params[:address]
    # restaurant.rating = params[:rating]
    # restaurant.notes = params[:description]
    # restaurant.save
    # redirect_to restaurants_url
  end

  def destroy
    # restaurant = Restaurant.find_by(id: params["id"])
    # restaurant.delete
    # redirect_to restaurants_url
  end
end
