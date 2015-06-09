#patricia corvino
 class RestaurantsController < ApplicationController

  def index
      @restaurants = Restaurant.order('name asc').page(params[:page]).per(8)
  end

  def show
     @restaurant = Restaurant.find_by(id: params["id"])

     if @restaurant == nil
       redirect_to restaurants_url, notice: "Restaurant not found."
     end
     
      cookies["restaurant_id"] = Restaurant.find_by(id: params["id"]).id
  end

  def new
     @neighborhoods = Neighborhood.order('name')
  end

  def create
    restaurant = Restaurant.new
    restaurant.name = params[:name]
    restaurant.neighborhood_id = params[:neighborhood_id]
    restaurant.address = params[:address]
    restaurant.save

    newtypes = params[:cuisine_ids]
    newtypes.each do |newtype|
      genre = Genre.new
      genre.cuisine_id = newtype
      genre.restaurant_id = restaurant.id
      genre.save
    end

    redirect_to restaurants_url
  end

  def edit
    @restaurant = Restaurant.find_by(id: params["id"])
    
  end

  def update
    restaurant = Restaurant.find_by(id: params["id"])
    restaurant.name = params[:name]
    restaurant.address = params[:address]
    restaurant.save

    genre = Genre.where(restaurant_id: params["id"])
    genre.each do |g|
      g.delete
    end

    # raise params.inspect
    newgenres = params[:cuisine_ids]
    # raise newtypes.inspect
    newgenres.each do |newgenre|
      genr = Genre.new
      genr.cuisine_id = newgenre
      genr.restaurant_id = params[:id]
      genr.save
    end

    redirect_to restaurants_url
  end

  def destroy
    restaurant = Restaurant.find_by(id: params["id"])
    restaurant.delete
    redirect_to restaurants_url
  end


end
