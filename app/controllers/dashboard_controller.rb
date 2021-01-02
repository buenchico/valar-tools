class DashboardController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to root_url
    elsif current_user.is_master? || current_user.is_admin?
      @civilizations = User.where.not(house: ['Inactivo','Master','Admin'])
    else
      @resource = current_user.resource
      @systems = current_user.systems
    end
  end

  # GET /dashboard/1/notes
  def notes
    @sectoruser = SectorUser.find(params[:id])
  end

  def notes_save
    @sectoruser = SectorUser.find(params[:id])
    respond_to do |format|
      if @sectoruser.update(notes: params[:notes])
        format.html { redirect_to request.referrer, success: 'Notas editadas correctamente.' }
      else
        format.html { redirect_to request.referrer, danger: @sector.errors }
      end
    end
  end

private
  def set_user
    @user = User.find(params[:id])
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
end
