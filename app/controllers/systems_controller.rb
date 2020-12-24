class SystemsController < ApplicationController
  before_action :logged_in_user
  before_action :master_user, except: [:index]
  before_action :set_system, except: [:index, :new]

  def index
    if current_user.try(:is_master?)
      @systems = System.all.order(:id)
    else
      @systems = System.where(user: current_user).order(:id)
    end
  end

  # GET /systems/1/edit
  def edit
  end

  # GET /systems/new
  def new
    @system = System.new
  end

  # PATCH/PUT /houses/1
  # PATCH/PUT /houses/1.json
  def update
    @system.update(

    )

    respond_to do |format|
      if @system.update(system_params)
        format.html { redirect_to systems_url, success: 'Sistema editado correctamente.' }
      else
        format.html { redirect_to systems_url, danger: @system.errors }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system
      @system = System.find(params[:id])
    end

    def logged_in_user
      if current_user.nil?
        flash[:danger] = "Por favor, inicia sesión."
        redirect_to root_url
      end
    end

    def master_user
      if current_user.nil?
        flash[:danger] = "Por favor, inicia sesión."
        redirect_to root_url
      elsif !current_user.is_master? && !current_user.is_admin?
        redirect_to(root_url)
        flash[:danger] = "No tienes permisos para acceder a esta página."
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_params
      params.require(:system).permit(:slots, :ic_slots, :ic_bonus, :rp_slots, :rp_bonus, :cp_slots, :cp_bonus, :description, :unrest, :efficiency)
    end
end
