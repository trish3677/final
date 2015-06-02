#patricia corvino
 class CuisinesController < ApplicationController

  def index
      @cuisines = Cuisine.order('name asc').limit(20)
  end

  def show
      @cuisine = Cuisine.find_by(id: params["id"])
      @types = Type.where(cuisine_id: params["id"])

     if @cuisine == nil
       redirect_to cuisine_url, notice: "Cuisine not found."
     end
  end

end
