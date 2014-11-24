class SessionsController < ApplicationController
  def index
    redirect_to root_path
  end

  def new
  end

  def create
    user = User.authenticate(params["session"]["username"], params["session"]["password"])
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in!"
    else
      flash.now.alert = "Invalid username or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    #logout
    redirect_to root_path, notice: "Logged out!"
  end

end
