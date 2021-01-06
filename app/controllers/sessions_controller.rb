class SessionsController < ApplicationController

  def create
    sso = SsoWithDiscourse::Sso.new
    session[:sso] = sso
    redirect_to sso.request_url
    $sso = sso
  end

  def create_nemo
    cookies.delete(:user)
    cookies.delete(:auth_token)
    cookies.delete(:avatar_url)

    cookies.permanent[:user] = 'Nemo'
    cookies.permanent[:auth_token] = User.find_by(player: 'Nemo').auth_token
    cookies.permanent[:avatar_url] = ''

    redirect_to root_url
  end

  def create_master
    cookies.delete(:user)
    cookies.delete(:auth_token)
    cookies.delete(:avatar_url)

    cookies.permanent[:user] = 'Valar'
    cookies.permanent[:auth_token] = User.find_by(player: 'valar').auth_token
    cookies.permanent[:avatar_url] = ''

    redirect_to root_url
  end

  def destroy
    @id = current_user.external_id.to_s

    @url = 'https://www.valar.es/admin/users/'+ @id +'/log_out'

    con = Faraday.new(
      url: @url,
      headers: {'api-username': 'valar', 'api-key': ENV['DISCOURSE_API']}
    )

    res = con.post @url

    if res.body['success'] == 'success'
      cookies.delete(:user)
      cookies.delete(:auth_token)
      cookies.delete(:avatar_url)

      redirect_to root_url
      flash[:danger] = 'Sesión cerrada correctamente.'
    else
      redirect_to root_url
      flash[:danger] = 'Se ha producido un error, por favor inténtelo de nuevo.'
    end
  end

  def destroy_sso
    cookies.delete(:user)
    cookies.delete(:auth_token)
    cookies.delete(:avatar_url)

    redirect_to 'https://www.valar.es'
  end

  def sso
    sso = $sso
    sso.parse(params)
    if $sso.status == 'success' && User.find_by(player: $sso.user_info[:username]) != nil
      cookies.permanent[:user] = $sso.user_info[:username]
      cookies.permanent[:auth_token] = User.find_by(player: $sso.user_info[:username]).auth_token
      cookies.permanent[:avatar_url] = $sso.user_info[:avatar_url]
      if User.find_by(player: $sso.user_info[:username]).external_id == nil
        User.find_by(player: $sso.user_info[:username]).update(external_id: $sso.user_info[:external_id]))
      end
      redirect_to root_url
      flash[:success] = 'Sesión iniciada correctamente como ' + '.'
    elsif $sso.status == 'success' && User.find_by(player: $sso.user_info[:username]) == nil
      @user = User.new(player: $sso.user_info[:username], house: House.find_by(name: 'Inactivo'), external_id: $sso.user_info[:external_id])
      if @user.save
        cookies.permanent[:user] = $sso.user_info[:username]
        cookies.permanent[:auth_token] = User.find_by(player: $sso.user_info[:username]).auth_token
        cookies.permanent[:avatar_url] = $sso.user_info[:avatar_url]
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
end

#Old session code for handling login in the app

=begin
  def create
    user = User.where('LOWER("player") = ?', "#{params[:player].downcase}").first
    if user && user.authenticate(params[:password])
      cookies.permanent[:auth_token] = user.auth_token
      redirect_to root_url
      flash[:success] = 'Sesión iniciada correctamente como '+current_user.house.name+' .'
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
