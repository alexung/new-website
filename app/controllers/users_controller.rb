class UsersController < ApplicationController

  def create
    @user = User.new
    @user.username = params[:users][:username]
    @user.password = params[:users][:password]
    @user.save!

    if @user.password == params[:users][:password]
      #give_token
      redirect_to root_path
    else
      flash[:error] = "Your user information was not found"
      redirect_to users_path
    end
  end

  # def login
  #   @user = User.find_by(username: params[:username])
  #   if @user.password == params[:password]
  #     give_token
  #     redirect_to root_path
  #   else
  #     flash[:error] = "Your user information was not found"
  #     redirect_to users_path
  #   end
  # end

end
