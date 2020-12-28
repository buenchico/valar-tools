class ToolsController < ApplicationController
  before_action :admin_user
  before_action :set_tool, only: [:edit, :update]

  def edit
  end

  def update
    @active_games = []
    (tool_params["game_attributes"]).each do |k, v|
      if v["active"] == "true"
        @active_games << Game.find_by(id: v["id"])
      end
    end

    respond_to do |format|
      if @tool.update(game: @active_games) && @tool.update(tool_params.except("game_attributes"))
        $tools = Tool.where(master: false, active: true).joins(:game).where(games: { active: true }).order(:sort).order(:id)
        $master_tools = Tool.where(master: true, active: true).joins(:game).where(games: { active: true }).order(:sort).order(:id)
        format.html { redirect_to game_url, success: 'Herramienta editada correctamente.' }
      else
        format.html { redirect_to game_url, danger: @tool.errors }
      end
    end
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
    def set_tool
      @tool = Tool.find(params[:id])
    end

    def tool_params
      params.require(:tool).permit(:name, :title, :short_title, :path, :icon, :master, :active, :sort, :game_attributes => [:id, :active])
    end
end
