class GameController < ApplicationController
  before_action :admin_user

  def index
    @games = Game.all
    @tools = Tool.all
    @tool = Tool.first
  end

  def set_active_game
    respond_to :js
  end

  # Check if user is admin
  def admin_user
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to root_url
    elsif !current_user.is_admin?
      redirect_to(root_url)
      flash[:danger] = "No tienes permisos para acceder a esta página."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end
end
