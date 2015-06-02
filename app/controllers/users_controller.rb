class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(email: params[:email], password: params[:password])
    if @user.save
      redirect_to root_url, notice: "Thanks for signing up."
    else
      render "new"
    end
  end

   def index
      @users = User.order('email asc').limit(20)
  end
end