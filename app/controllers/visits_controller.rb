#patricia corvino
 class VisitsController < ApplicationController

  def new
    visit = Visit.new
    visit.restaurant_id = params["id"]
    visit.user_id= current_user.id
    visit.save
    redirect_to root_url
  end

  def destroy
    visit = Visit.find_by("user_id = ? AND restaurant_id = ?", current_user, params[:id]) 
    visit.delete
    redirect_to root_url
  end

end