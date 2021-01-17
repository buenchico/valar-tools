class DashboardController < ApplicationController
  before_action :master_user, except: [:index, :notes, :notes_save, :tech]
  before_action :set_resource, except: [:index, :notes, :notes_save, :tech]

  def index
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to root_url
    elsif current_user.is_master? || current_user.is_admin?
      @civilizations = House.where(active: true)
    else
      @resource = current_user.house.resource
      @systems = current_user.house.systems
    end
  end

  # GET /dashboard/1/notes
  def notes
    @sectorhouse = SectorHouse.find(params[:id])
    respond_to do |format|
      if @sectorhouse.house.users.exists?(id: current_user.id) || current_user.is_master? || current_user.is_admin?
        format.js
      else
        format.js { render 'layouts/_alert_box', :locals => { alert: 'danger', message: 'No tienes permiso para acceder a este elemento' } }
      end
    end
  end

  def notes_save
    @sectorhouse = SectorHouse.find(params[:id])
    respond_to do |format|
      if @sectorhouse.house.users.exists?(id: current_user.id) || current_user.is_master? || current_user.is_admin?
        if @sectorhouse.update(notes: params[:notes])
          format.html { redirect_to request.referrer, success: 'Notas editadas correctamente.' }
        else
          format.html { redirect_to request.referrer, danger: @sector.errors }
        end
      else
        format.js { render 'layouts/_alert_box', :locals => { alert: 'danger', message: 'No tienes permiso para acceder a este elemento' } }
      end
    end
  end

  def spend_resources
    @resource.ic -= spend_resources_params[:ic_spend].to_i
    @resource.rp -= spend_resources_params[:rp_spend].to_i
    @resource.cp -= spend_resources_params[:cp_spend].to_i
    respond_to do |format|
      if @resource.save
        format.html { redirect_to request.referrer, success: 'Recursos gastados correctamente.' }
      else
        format.html { redirect_to request.referrer, danger: @resource.errors }
      end
    end
  end

  def change_efficiencies
    respond_to do |format|
      if @resource.update(change_efficiencies_params)
        format.html { redirect_to request.referrer, success: 'Eficiencias cambiadas correctamente.' }
      else
        format.html { redirect_to request.referrer, danger: @resource.errors }
      end
    end
  end

  def tech
    if current_user.is_master? || current_user.is_admin?
      @techs = House.find(params[:id]).techs
      @civ = House.find(params[:id])
    else
      @techs = current_user.house.techs
      @civ = current_user.house
    end

    respond_to do |format|
      format.js
    end
  end

private
  def set_resource
    @resource = Resource.find(params[:id])
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

  def spend_resources_params
    params.permit(:ic_spend, :rp_spend, :cp_spend)
  end

  def change_efficiencies_params
    params.permit(:ic_bonus, :rp_bonus, :cp_bonus)
  end
end
