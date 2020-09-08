class SessionController < ApplicationController
  def login


  end
=begin



    if @user.valid?
      @user.save
      redirect_to action: "login"
    else
      render action: "welcome"
    end
=end

  def welcome

  end
end
