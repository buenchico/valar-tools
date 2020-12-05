class SessionsController < ApplicationController

  def new
  end

  def create
    sso = SsoWithDiscourse::Sso.new
    session[:sso] = sso
    redirect_to sso.request_url
    $sso = sso
  end

  def destroy
    cookies.delete(:user)
    cookies.delete(:auth_token)
    redirect_to root_url
  end

  def sso
    sso = $sso
    sso.parse(params)
    if $sso.status == 'success' && User.find_by(player: $sso.user_info[:username]) != nil
      cookies.permanent[:user] = $sso.user_info[:username]
      cookies.permanent[:auth_token] = User.find_by(player: $sso.user_info[:username]).auth_token
      redirect_to root_url
    elsif $sso.status == 'success' && User.find_by(player: $sso.user_info[:username]) == nil
      @user = User.new(player: $sso.user_info[:username])
      if @user.save
        cookies.permanent[:user] = $sso.user_info[:username]
        cookies.permanent[:auth_token] = User.find_by(player: $sso.user_info[:username]).auth_token
        redirect_to root_url
      else
        format.html { redirect_to root_url, danger: 'Se ha producido un error, por favor inténtelo de nuevo' }
      end
    else
      cookies.permanent[:session] = 'ERROR'
    end
  end
end
