class SectorsController < ApplicationController
  before_action :master_user
  before_action :set_sector, except: [:index, :new]

  def index
    @users = []
    User.all.each do |user|
      @users << [user.player,user.id]
    end

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
  end

  # GET /sectors/new
  def new
    @sector = Sector.new
  end

  # PATCH/PUT /houses/1
  # PATCH/PUT /houses/1.json
  def update
    respond_to do |format|
      if @sector.update(sector_params)
        format.html { redirect_to sectors_url, success: 'Sector editado correctamente.' }
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
      params.require(:sector).permit(:q, :r, :sector_type, :sector_users_attributes => [:id, :info, :notes, :user_id, :user_attributes => [:id, :player]])
    end
end
