class ArmiesController < ApplicationController
  before_action :set_army, only: [:show, :edit, :update, :destroy]

  # GET /armies
  # GET /armies.json
  def index
    @test = 5 
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to root_url
    elsif current_user.is_master? || current_user.is_admin?
      @armies = Army.all
    else
      @armies = Army.where('"visibility" like ? and "visible" == ?', current_user.house.downcase, true)
    end
  end
  
  # GET /armies/1
  # GET /armies/1.json
  def show
    @army = Army.find(params[:id])    
    respond_to do |format|
      format.js
      format.html { redirect_to armies_url }
    end
  end

  def notes
    @army = Army.find(params[:id])    
    respond_to do |format|
      format.js
      format.html { redirect_to armies_url }
    end
  end  

  # GET /armies/new
  def new
    @army = Army.new
  end

  # GET /armies/1/edit
  def edit
  end

  # POST /armies
  # POST /armies.json
  def create
    @army = Army.new(army_params)

    respond_to do |format|
      if @army.save
        format.html { redirect_to @army, notice: 'Army was successfully created.' }
        format.json { render :show, status: :created, location: @army }
      else
        format.html { render :new }
        format.json { render json: @army.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /armies/1
  # PATCH/PUT /armies/1.json
  def update
    respond_to do |format|
      if @army.update(army_params)
        format.html { redirect_to armies_url, success: 'Ejército editado correctamente' }
        format.json { render :index, status: :ok, location: @army }
      else
        format.html { render :edit }
        format.json { render json: @army.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /armies/1
  # DELETE /armies/1.json
  def destroy
    @army.destroy
    respond_to do |format|
      format.html { redirect_to armies_url, notice: 'Army was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_army
      @army = Army.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def army_params
      params.require(:army).permit(:aid, :visibility, :visible, :kingdom, :location, :lord, :name, :position, :mission, :status, :armytype, :num, :vet, :armour, :morale, :infantry, :cavalry, :marine, :boat, :flagship, :notes)
    end
end
