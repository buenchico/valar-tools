class SectorsController < ApplicationController
  before_action :master_user
  before_action :set_sector, except: [:index, :new, :sector_users_destroy, :sector_users_create]

  def index
    @sectors = Sector.all.order(:id)

    abs_coords = []
    Sector.all.each do |x|
      abs_coords << x.r.abs
      abs_coords << x.q.abs
    end
    @hex_rings = ( abs_coords.max || 0 ) + 1

    @hex_map = {}
    Sector.all.each do |hex|
      @hex_map[hex.q] = {} if @hex_map[hex.q].nil?
      @hex_map[hex.q][hex.r] = {
        :type=> hex.sector_type
        }
    end
  end

  # GET /sectors/1/edit
  def edit
    @available_users = User.where.not(house: ['Inactivo','Admin','Master']).where.not(id: @sector.users.pluck(:id))
  end

  # GET /sectors/new
  def new
    @sector = Sector.new
  end

  # PATCH/PUT /houses/1
  # PATCH/PUT /houses/1.json
  def update
    respond_to do |format|
      if @sector.update(sector_params.except(:new_sector))
        format.html { redirect_to sectors_url, success: 'Sector editado correctamente.' }
      else
        format.html { redirect_to sectors_url, danger: @sector.errors }
      end
    end
  end

  def sector_users_destroy
    @sector = Sector.find(params[:sector_id])
    @sector_user = @sector.sector_users.find(params[:id])

    if @sector.system.user == @sector_user.user
      @forbidden = true
    else
      @forbidden = false
      @sector_user.destroy
    end

    @available_users = User.where.not(house: ['Inactivo','Admin','Master']).where.not(id: @sector.users.pluck(:id))

    respond_to do |format|
      format.js
    end
  end

  def sector_users_create
    @sector = Sector.find(params[:sector_id])
    @user = params[:user_id].nil? ? nil : User.find(params[:user_id])

    if @user.nil?
      @forbidden = true
    else
      @forbidden = false
      @sector.users << @user
    end

    @available_users = User.where.not(house: ['Inactivo','Admin','Master']).where.not(id: @sector.users.pluck(:id))

    respond_to do |format|
      format.js
    end
  end

  def create
    @house = House.new(house_params)

    respond_to do |format|
      if @house.save
        format.html { redirect_to houses_url, success: 'Casa añadida correctamente.' }
      else
        format.html { redirect_to houses_url, danger: @house.errors }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sector
      @sector = Sector.find(params[:id])
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
    def sector_params
      params.require(:sector).permit(:q, :r, :sector_type, :notes, :sector_users_attributes => [:id, :info, :notes, :user_id], :new_sector => [:user_id, :info])
    end
end