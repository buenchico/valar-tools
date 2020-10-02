class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  before_action :set_variables
  before_action :master_user, except: :index

  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all.order(:lid)
    @families = []
    Family.all.each do |family|
      @families << [family.family_title,family.id]
    end
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to locations_url, success: 'Lugar añadido correctamente' }
      else
        format.html { redirect_to locations_url, danger: @location.error }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to locations_url, success:  'Lugar editado correctamente.' }
      else
        format.html { redirect_to locations_url, danger: @location.error }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Lugar borrado.' }
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
    def set_location
      @location = Location.find(params[:id])
    end

    def set_variables
      @next_id = House.maximum(:hid).nil? ? 300001 : House.maximum(:hid) + 1
      @location_type = {"Castillo" => "Castillo", "Castillo pequeño" => "Castillo pequeño", "Torre" => "Torre", "Ciudad" => "Ciudad", "Pueblo" => "Pueblo", "Ruinas" => "Ruinas", "Mina" => "Mina", "Vado" => "Vado"}
      @families = []
      Family.all.order(:name).each do |family|
        @families << [family.family_title,family.id]
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:lid, :name_es, :name_en, :location_type, :kingdom, :family_id, :x, :y, :visibility)
    end
end
