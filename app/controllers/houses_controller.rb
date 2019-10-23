class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy]
  before_action :master_user
  before_action :set_variables
  after_action :set_active_houses, only: [:create, :destroy, :update]

  # GET /houses
  # GET /houses.json
  def index
    @houses = House.all
  end

  # GET /houses/1
  # GET /houses/1.json
  def show
  end

  # GET /houses/new
  def new
    @house = House.new
  end

  # GET /houses/1/edit
  def edit
  end

  # POST /houses
  # POST /houses.json
  def create
    @house = House.new(house_params)

    respond_to do |format|
      if @house.save
        format.html { redirect_to houses_url, success: 'Casa añadida correctamente.' }
        format.json { render :show, status: :created, location: @house }
      else
        format.html { render :new }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /houses/1
  # PATCH/PUT /houses/1.json
  def update
    respond_to do |format|
      if @house.update(house_params)
        format.html { redirect_to houses_url, success: 'Casa editada correctamente.' }
        format.json { respond_with_bip @house }
      else
        format.html { render :edit }
        format.json { render json: @house.errors.messages.values.first, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houses/1
  # DELETE /houses/1.json
  def destroy
    @house.destroy
    respond_to do |format|
      format.html { redirect_to houses_url, danger: 'Casa borrada.' }
      format.json { head :no_content }
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
    def set_house
      @house = House.find(params[:id])
    end
    
    def set_variables
      @next_id = House.maximum(:hid).nil? ? 300001 : House.maximum(:hid) + 1
    end
    
    def set_active_houses
      $active_houses = ["Master"]
      ($active_houses << House.where(active: true).order(:name).pluck(:name)).flatten! # SELECT house.name_es FROM house WHERE active = true
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_params
      params.require(:house).permit(:hid, :name, :active)
    end
end