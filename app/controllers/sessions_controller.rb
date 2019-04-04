class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_player(params[:player])
    if user && user.authenticate(params[:password])
      cookies.permanent[:auth_token] = user.auth_token
      redirect_to root_url
      flash[:success] = 'Sesión iniciada correctamente como '+current_user.house+' .'
    else
      render 'new'
      flash[:danger] = 'Jugador o contraseña erróneos.' # Not quite right!
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url
    flash[:warning] = 'Sesión terminada.' # Not quite right!
  end

end