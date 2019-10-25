class ArmiesController < ApplicationController
  before_action :set_army, only: [:edit, :notes, :update, :confirm, :destroy]
  before_action :set_variables, except: [:location_list]
  before_action :correct_user, only: [:edit, :notes, :edit_multiple]
  before_action :master_user, only: [:new, :import, :destroy]

  # GET /armies
  def index
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to root_url
    elsif current_user.is_master? || current_user.is_admin?
      @armies = Army.all.order(:aid)
      respond_to do |format|
        format.html
        format.csv { send_data @armies.to_csv, filename: "armies-#{Date.today}.csv" }
      end
    else
      @armies = Army.where("array_to_string(ARRAY[visibility], '|') ilike ? and visible = ?", "%#{current_user.house}%", true)
    end
    
    @total_str = []
    @total_num = []
    if !@armies.nil? then
      @armies.each do |army|
        @total_str << army.army_str
      end
      @armies.each do |army|
        @total_num << ( ( army.num.nil? ? 0 : army.num + 5 )  * ( army.status == 'Aniquilado' ? 0 : 1 ) )
      end
    end
  end

  # GET /armies/1/notes
  def notes
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

  # GET /armies/1/confirm
  def confirm
    respond_to do |format|
      format.js
      format.html { redirect_to armies_url }
    end    
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
        format.json { render :json => {"army" => @army.as_json.merge(:strenght => @army.army_str)} }
      else
        format.html { render :edit }
        format.json { respond_with_bip(@army) }
      end  
    end
  end

  # DELETE /armies/1
  def destroy
    if params[:army][:confirm] == "DELETE" then
      @army.destroy
      respond_to do |format|
        format.html { redirect_to armies_url, danger: 'Ejército borrado.' }
      end
    else
      respond_to do |format|
        format.html { redirect_to armies_url, danger: 'Acción cancelada, por favor, confirma correctamente el borrado' }
      end
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
  
  def destroy_multiple
    @armies = Army.find(params[:army_ids])    
    if params[:army][:confirm] == "DELETE ALL" then
      @armies.each do |army|
        army.destroy
      end
      flash[:danger] = "Ejércitos borrados correctamente."
      redirect_to armies_path
    else
      flash[:danger] = "Acción cancelada, por favor, confirma correctamente el borrado."
      redirect_to armies_path
    end  
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
      if current_user.try(:is_master?) then
        @filter = [ "Ejército", "Rasgos", "Posición", "Misión", "Embarcado", "Tipo", "Visibilidad" ]
      else
        @filter = [ "Ejército", "Rasgos", "Posición", "Misión", "Embarcado" ]
      end
      @status = {"Movilizado" => "Movilizado", "Desmovilizado" => "Desmovilizado", "Aniquilado" => "Aniquilado"}
      @type = {"Leva" => "Leva", "Sangrado" => "Sangrado", "Mercenario" => "Mercenario", "Guardia" => "Guardia"}
      @boat = {"No" => "No", "Sí, Barcoluengos" => "Sí, Barcoluengos", "Sí, Galeras" => "Sí, Galeras", "Sí, Galeras mercantes" => "Sí, Galeras mercantes", "Sí, Dromones" => "Sí, Dromones"}
    end

    def correct_user
      if current_user.nil?
        flash[:danger] = "Por favor, inicia sesión."
        render js: "window.location.replace('#{root_url}');"
      elsif params[:button] == "multiple" || params[:button] == "visibility" || params[:button] == "delete" then
        @armies = params[:army_ids]
        @armies.each do |x|
          if current_user.house !~ /#{Army.find(x).visibility.join()}/  && !current_user.is_master? && !current_user.is_admin?
            flash[:danger] = "No tienes permisos para acceder a esta página."
            render js: "window.location.replace('#{armies_url}');"            
          end
        end
      elsif current_user.house !~ /#{@army.visibility.join()}/ && !current_user.is_master? && !current_user.is_admin?
        flash[:danger] = "No tienes permisos para acceder a esta página."
        render js: "window.location.replace('#{root_url}');"
      end
    end
    
    # Check if user is master or admin
    def master_user
      if current_user.nil?
        flash[:danger] = "Por favor, inicia sesión."
        render js: "window.location.replace('#{root_url}');"
      elsif !current_user.is_master? && !current_user.is_admin?
        flash[:danger] = "No tienes permisos para acceder a esta página."
        render js: "window.location.replace('#{root_url}');"
      end
    end    

    # Never trust parameters from the scary internet, only allow the white list through.
    def army_params
      if current_user.try(:is_master?) then
        params.require(:army).permit(:aid, {:visibility => []}, :visible, :kingdom, :location, :lord, :name, :position, :mission, :status, :armytype, :num, :vet, :armour, :morale, :infantry, :cavalry, :marine, :boat, :flagship, :notes, :confirm)
      else  
        params.require(:army).permit(:name, :position, :mission, :status, :armytype, :num, :vet, :armour, :morale, :infantry, :cavalry, :marine, :boat, :flagship, :notes)
      end  
    end
end