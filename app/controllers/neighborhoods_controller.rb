#patricia corvino
 class NeighborhoodsController < ApplicationController

  def index
      @neighborhoods = Neighborhood.order('name asc').limit(20)
  end

  def show
     @neighborhood = Neighborhood.find_by(id: params["id"])

     if @neighborhood == nil
       redirect_to neighborhoods_url, notice: "Neighborhood not found."
     end
  end

end
