class ArmiesController < ApplicationController
  before_action :set_army, only: [:show, :edit, :update, :destroy]
  before_action :set_variables, except: [:location_list]

  # GET /armies
  def index
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to root_url
    elsif current_user.is_master? || current_user.is_admin?
      @armies = Army.all
      respond_to do |format|
        format.html
        format.csv { send_data @armies.to_csv, filename: "armies-#{Date.today}.csv" }
      end
    else
      @armies = Army.where("array_to_string(visibility, '|') ilike ? and visible = ?", "%#{current_user.house}%", true)
    end
  end

  # GET /armies/1
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
  def create
    @army = Army.new(army_params)

    respond_to do |format|
      if @army.save
        format.html { redirect_to armies_url, success: 'Ejército añadido correctamente.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /armies/1
  def update
    respond_to do |format|
      if @army.update(army_params)
        format.html { redirect_to armies_url, success: 'Ejército editado correctamente.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /armies/1
  def destroy
    @army.destroy
    respond_to do |format|
      format.html { redirect_to armies_url, danger: 'Ejército borrado.' }
    end
  end
  
  def edit_multiple
    @armies = Army.find(params[:army_ids])    
  end
  
  def update_multiple
    @armies = Army.find(params[:army_ids])
    if params[:army][:visibility] == [""] then
      @armies.each do |army|
        army.update_attributes(army_params.except(:visibility).reject { |k,v| v.blank? })
      end
    else
      @armies.each do |army|
        army.update_attributes(army_params.reject { |k,v| v.blank? })
      end
    end
    flash[:success] = "Ejércitos actualizados correctamente."
    redirect_to armies_path
  end

  def import
    Army.import(params[:file])
    flash[:success] = "Ejércitos importados."
    redirect_to armies_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_army
      @army = Army.find(params[:id])
    end
    
    def set_variables
      @next_id = Army.maximum(:aid).nil? ? '100001' : Army.maximum(:aid) + 1
      @status = {"Movilizado": "Movilizado", "Desmovilizado": "Desmovilizado", "Aniquilado": "Aniquilado"}
      @type = {"Leva": "Leva", "Sangrado": "Sangrado", "Mercenario": "Mercenario", "Guardia": "Guardia"}
      @boat = {"No": "No", "Barcoluengos": "Barcoluengos", "Galeras": "Galeras", "Galeras mercantes": "Galeras mercantes", "Dromones": "Dromones"}
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def army_params
      params.require(:army).permit(:aid, {:visibility => []}, :visible, :kingdom, :location, :lord, :name, :position, :mission, :status, :armytype, :num, :vet, :armour, :morale, :infantry, :cavalry, :marine, :boat, :flagship, :notes)
    end
end