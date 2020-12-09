class GameController < ApplicationController
  before_action :master_user

  def index
    @games = Game.all
    @tools = Tool.all
  end

  def set_active_game
    @game = params[:button]
    Game.all.update(active: false)
    Game.find_by(id: @game).update(active: true)
    $tools = Tool.where(master: false, active: true).joins(:game).where(games: { active: true })
    $master_tools = Tool.where(master: true, active: true).joins(:game).where(games: { active: true })    
  end

  # Check if user is master or admin
  def master_user
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to root_url
    elsif !current_user.is_master? && !current_user.is_admin?
      redirect_to(root_url)
      flash[:danger] = "No tienes permisos para acceder a esta página."
    end
  end
end
