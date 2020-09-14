class SessionController < ApplicationController

  def login
    @user = User.new(user_params)
    @user = User.find_by("username = ?", user_params[:username])
    if @user && @user.authenticate(user_params[:password])
      session[:id] = @user.id
      redirect_to action: "welcome"
    else
      flash[:controller_error] = "Username or password is invalid"
      render "login"
    end
  end

  def user_params
    params.permit(:username, :password)
  end

  def welcome

  end

end
