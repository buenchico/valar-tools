class SessionsController < ApplicationController

  def create
    sso = SsoWithDiscourse::Sso.new
    session[:sso] = sso
    redirect_to sso.request_url
    $sso = sso
  end

  def destroy
    cookies.delete(:user)
    cookies.delete(:auth_token)
    cookies.delete(:avatar_url)
    redirect_to root_url
  end

  def sso
    sso = $sso
    sso.parse(params)
    if $sso.status == 'success' && User.find_by(player: $sso.user_info[:username]) != nil
      cookies.permanent[:user] = $sso.user_info[:username]
      cookies.permanent[:auth_token] = User.find_by(player: $sso.user_info[:username]).auth_token
      cookies.permanent[:avatar_url] = $sso.user_info[:avatar_url]
      $a = $sso.user_info
      redirect_to root_url
      flash[:success] = 'Sesión iniciada correctamente como '+current_user.house+'.'
    elsif $sso.status == 'success' && User.find_by(player: $sso.user_info[:username]) == nil
      @user = User.new(player: $sso.user_info[:username], house: 'Inactivo')
      if @user.save
        cookies.permanent[:user] = $sso.user_info[:username]
        cookies.permanent[:auth_token] = User.find_by(player: $sso.user_info[:username]).auth_token
        redirect_to root_url
        flash[:success] = 'Bienvenido a Valar Tools, contacta con los Masters para recibir permisos'
      else
        redirect_to root_url
        flash[:danger] = 'Se ha producido un error, por favor inténtelo de nuevo'
      end
    else
      redirect_to root_url
      flash[:danger] = 'Se ha producido un error, por favor inténtelo de nuevo'
    end
  end

#Old session code for handling login in the app

=begin
  def create
    user = User.where('LOWER("player") = ?', "#{params[:player].downcase}").first
    if user && user.authenticate(params[:password])
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
=end

end
