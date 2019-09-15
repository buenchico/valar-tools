class SessionsController < ApplicationController

  def create
    user = User.where('LOWER("PLAYER") = ?', "#{params[:player].downcase}").first
    if user && user.authenticate(params[:password]) && verify_recaptcha(model: @user)
      cookies.permanent[:auth_token] = user.auth_token
      redirect_to root_url
      flash[:success] = 'Sesión iniciada correctamente como '+current_user.house+' .'
    else
      redirect_back(fallback_location: root_path)
      unless user && user.authenticate(params[:password])
        flash[:danger] = 'Jugador o contraseña erróneos.' # Not quite right!
      else
        flash[:danger] = 'Por favor, verifica que eres humano.' # Not quite right!
      end
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url
    flash[:warning] = 'Sesión terminada.' # Not quite right!
  end

end