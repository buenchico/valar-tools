class DesignsController < ApplicationController
  before_action :check_user
  before_action :correct_user, only: [:edit, :update, :confirm, :destroy]
  before_action :set_design, only: [:show, :edit, :update, :confirm, :destroy]


  def index
    if current_user.is_master? || current_user.is_admin?
      @designs = Design.all.order(:id)
    else
      @designs = Design.where(house: current_user.house).order(:id)
    end
  end

  def edit
    @size = @design.size
    @house = @design.house
    if @design.active == true
      respond_to do |format|
        format.js { render 'permissions' }
      end
    end
  end

  def show
    @size = @design.size
    @house = @design.house
  end

  def size_select
    if current_user.is_master? || current_user.is_admin?
      @dock_lvl = 7
    else
      @dock_lvl = ( current_user.house.techs.where(tech_type: 'dock').order(lvl: :desc).first.try(:lvl) || 1 ) + 1
    end
    @available_sizes = $ship_sizes.first(@dock_lvl)
    @active_houses = House.where(name: 'Inactivo').order(:hid).map { |house| [house.name, house.id] }.concat(House.where(active: true).order(:name).map { |house| [house.name, house.id] })
  end

  def new
    @size = params[:size]
    if current_user.is_master? || current_user.is_admin?
      @house = House.find(params[:house_id])
    else
      @house = current_user.house
    end
    @design = Design.new
  end

  def create
    @m = params[:design][:modules]
    @design = Design.new(design_params)

    respond_to do |format|
      if @design.save && @design.update(modules: @m)
        format.html { redirect_to designs_url, success: 'Diseño añadido correctamente.' }
      else
        format.html { redirect_to designs_url, danger: @design.errors }
      end
    end
  end

  def destroy
    if (@design.active == false || params[:design][:confirm] == "DELETE") then
      @design.destroy
      respond_to do |format|
        format.html { redirect_to designs_url, danger: 'Diseño borrado.' }
      end
    else
      respond_to do |format|
        format.html { redirect_to designs_url, danger: 'Acción cancelada, por favor, confirma correctamente el borrado' }
      end
    end
  end

  def update
    @m = params[:design][:modules]

    respond_to do |format|
      if @design.update(design_params)
        unless @m.nil?
          @design.update(modules: @m)
        end
        format.html { redirect_to designs_url, success: 'Diseño editado  correctamente.' }
      else
        format.html { redirect_to designs_url, danger: @design.errors }
      end
    end
  end

  def confirm
    respond_to do |format|
      format.js
      format.html { redirect_to designs_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design
      @design = Design.find(params[:id])
    end

    def check_user
      if current_user.nil?
        flash[:danger] = "Por favor, inicia sesión."
        redirect_to root_url
      end
    end

    def correct_user
      @design = Design.find(params[:id])
      unless current_user.is_master? || current_user.is_admin? || (current_user.house == @design.house)
        respond_to do |format|
          format.js { render 'permissions' }
        end
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_params
      params.require(:design).permit(:name, :desc, :notes, :size, :house_id, :active, :sys_ftl, :sys_engine, :sys_sensors)
    end

end
