 class RestaurantsController < ApplicationController

  def index
      @restaurants = Restaurant.order('restaurant_name asc')
  end

  def show
     @restaurant = Restaurant.find_by(id: params["id"])

     if @restaurant == nil
       redirect_to restaurants_url, notice: "Restaurant not found."
     end
  end

  def new
    
  end

  def create
    restaurant = Restaurant.new
    restaurant.restaurant_name = params[:name]
    restaurant.address = params[:address]
    restaurant.rating = params[:rating]
    restaurant.notes = params[:description]
    restaurant.save
    redirect_to restaurants_url
  end

  def edit
    @restaurant = Restaurant.find_by(id: params["id"])
  end

  def update
    restaurant = Restaurant.find_by(id: params["id"])
    restaurant.restaurant_name = params[:name]
    restaurant.address = params[:address]
    restaurant.rating = params[:rating]
    restaurant.notes = params[:description]
    restaurant.save
    redirect_to restaurants_url
  end

  def destroy
    restaurant = Restaurant.find_by(id: params["id"])
    restaurant.delete
    redirect_to restaurants_url
  end
end
