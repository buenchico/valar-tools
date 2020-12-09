class GameController < ApplicationController
  before_action :admin_user

  def index
    @games = Game.all.order(:id)
    @tools = Tool.all.order(:sort).order(:id)
  end

  def set_active_game
    if params[:confirm] == 'SETUP'
      if Game.all.update(active: false) && Game.find_by(id: params[:game]).update(active: true)
        $tools = Tool.where(master: false, active: true).joins(:game).where(games: { active: true }).order(:sort).order(:id)
        $master_tools = Tool.where(master: true, active: true).joins(:game).where(games: { active: true }).order(:sort).order(:id)        
        redirect_to game_url
        flash[:success] = "La partida se ha inicializado correctamente"
      else
        redirect_to game_url
        flash[:danger] = "Se ha producido un error, por favor intentalo de nuevo."
      end
    else
      redirect_to game_url
      flash[:danger] = "Necesitas confirmar la acción para terminar la inicialización."
    end
  end

  # Check if user is admin
  def admin_user
    if current_user.nil?
      redirect_to root_url
      flash[:danger] = "Por favor, inicia sesión."
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
