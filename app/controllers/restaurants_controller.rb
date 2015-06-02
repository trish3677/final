#patricia corvino
 class RestaurantsController < ApplicationController

  def index
      @restaurants = Restaurant.order('name asc').limit(20)
  end

  def show
     @restaurant = Restaurant.find_by(id: params["id"])
     @reviews= Review.where(restaurant_id: params["id"])

     if @restaurant == nil
       redirect_to restaurants_url, notice: "Restaurant not found."
     end
     
       cookies["restaurant_id"] = Restaurant.find_by(id: params["id"]).id

  end

  def new
    
  end

  def create
    restaurant = Restaurant.new
    restaurant.name = params[:name]
    restaurant.neighborhood_id = params[:neighborhood_id]
    restaurant.address = params[:address]
    restaurant.save

    newtypes = params[:cuisine_ids]
    newtypes.each do |newtype|
      typ = Type.new
      typ.cuisine_id = newtype
      typ.restaurant_id = restaurant.id
      typ.save
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

    type = Type.where(restaurant_id: params["id"])
    type.each do |t|
      t.delete
    end

    # raise params.inspect
    newtypes = params[:cuisine_ids]
    # raise newtypes.inspect
    newtypes.each do |newtype|
      typ = Type.new
      typ.cuisine_id = newtype
      typ.restaurant_id = params[:id]
      typ.save
    end

    redirect_to restaurants_url
  end

  def destroy
    restaurant = Restaurant.find_by(id: params["id"])
    restaurant.delete
    redirect_to restaurants_url
  end
end
