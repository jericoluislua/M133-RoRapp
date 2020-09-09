class SessionController < ApplicationController
  def login
    @user = User.new
    @user = User.find_by("username = ?", user_params[:username])
    if @user.present? #&& @user.authenticate(user_params[:pass])
      session[:id] = @user.id
      redirect_to action: "welcome"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "login"
    end
  end

  def user_params
    params.permit(:username, :pass)
  end


  def welcome

  end
end
