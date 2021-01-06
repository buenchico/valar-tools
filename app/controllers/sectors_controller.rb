class SectorsController < ApplicationController
  before_action :master_user
  before_action :set_sector, only: [:edit, :update, :notes]
  before_action :set_user_list, except: [:index, :update]

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

    respond_to do |format|
        format.html
        format.js
    end
  end

  # GET /sectors/1/edit
  def edit
    @available_factions = House.where.not(hid: 0).where(active: true).where.not(id: @sector.houses.pluck(:id))
  end

  # GET /sectors/new
  def new
    @sector = Sector.new
    @available_factions = House.where.not(hid: 0).where(active: true).where.not(id: @sector.houses.pluck(:id))
  end

  # PATCH/PUT /houses/1
  # PATCH/PUT /houses/1.json
  def update
    respond_to do |format|
      if @sector.update(sector_params.except(:new_sector))
        format.html { redirect_to request.referrer, success: 'Sector editado correctamente.' }
      else
        format.html { redirect_to request.referrer, danger: @sector.errors }
      end
    end
  end

  def sector_houses_destroy
    @sector = Sector.find(params[:sector_id])
    @sector_house = @sector.sector_houses.find(params[:id])

    if @sector.try(:system).try(:house) == @sector_house.house
      @forbidden = true
    else
      @forbidden = false
      @sector_house.destroy
    end

    @action = 'destroy'

    @available_factions = House.where.not(hid: 0).where(active: true).where.not(id: @sector.houses.pluck(:id))

    respond_to do |format|
      format.js { render :sector_users }
    end
  end

  def sector_houses_create
    @sector = Sector.find(params[:sector_id])
    @house = params[:house_id].nil? ? nil : House.find(params[:house_id])

    if @house.nil?
      @forbidden = true
    else
      @forbidden = false
      @sector.houses << @house
    end

    @action = 'create'

    @available_factions = House.where.not(hid: 0).where(active: true).where.not(id: @sector.houses.pluck(:id))

    respond_to do |format|
      format.js { render :sector_users }
    end
  end

  def create
    @sector = Sector.new(sector_params)

    respond_to do |format|
      if @sector.save
        format.html { redirect_to sectors_url, success: 'Sector añadido correctamente.' }
      else
        format.html { redirect_to sectors_url, danger: @sector.errors }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sector
      @sector = Sector.find(params[:id])
    end

    def set_user_list
      @house_list = House.where(hid: 0)
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
      params.require(:sector).permit(:name, :q, :r, :sector_type, :notes, :desc, :sector_houses_attributes => [:id, :info, :notes, :user_id], :new_sector => [:user_id, :info], :system_attributes => [:id, :house_id, :slots, :ic_slots, :ic_bonus, :rp_slots, :rp_bonus, :cp_slots, :cp_bonus, :mc_slots, :efficiency, :unrest])
    end
end
