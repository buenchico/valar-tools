class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_player(params[:player])
    if user && user.authenticate(params[:password])
      cookies.permanent[:auth_token] = user.auth_token
      redirect_to root_url, notice: 'Logged in!'
    else
      flash.now[:alert] = 'Email or password is invalid'
      redirect_to root_url, notice: 'Logged in!'
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, notice: 'Logged out!'
  end

end