class TechsController < ApplicationController
  before_action :master_user
  before_action :set_tech, only: [:edit, :update, :confirm, :destroy]

  def index
    @techs = Tech.all.order(:house_id, :tech_type, :lvl)
  end

  def edit
    @active_houses = House.where(name: 'Master').or(House.where(name: 'Inactivo')).order(:hid).map { |house| [house.name, house.id] }.concat(House.where(active: true).order(:name).map { |house| [house.name, house.id] })
  end

  def new
    @tech = Tech.new
    @active_houses = House.where(name: 'Master').or(House.where(name: 'Inactivo')).order(:hid).map { |house| [house.name, house.id] }.concat(House.where(active: true).order(:name).map { |house| [house.name, house.id] })
  end

  def create
    @tech = Tech.new(tech_params)

    respond_to do |format|
      if @tech.save
        format.html { redirect_to techs_url, success: 'Tecnología añadida correctamente.' }
      else
        format.html { redirect_to techs_url, danger: @tech.errors }
      end
    end
  end

  def destroy
    if params[:tech][:confirm] == "DELETE" then
      @tech.destroy
      respond_to do |format|
        format.html { redirect_to techs_url, danger: 'Tecnología borrada.' }
      end
    else
      respond_to do |format|
        format.html { redirect_to techs_url, danger: 'Acción cancelada, por favor, confirma correctamente el borrado' }
      end
    end
  end

  def update
    respond_to do |format|
      if @tech.update(tech_params)
        format.html { redirect_to techs_url, success: 'Tecnología editada correctamente.' }
        format.json { respond_with_bip(@tech) }
      else
        format.html { render :edit, danger: @tech.errors }
        format.json { respond_with_bip(@tech) }
      end
    end
  end

  def confirm
    respond_to do |format|
      format.js
      format.html { redirect_to techs_url }
    end
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech
      @tech = Tech.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tech_params
      params.require(:tech).permit(:name, :tech_type, :lvl, :desc, :notes, :house_id)
    end
end
