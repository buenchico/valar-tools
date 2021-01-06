class ReputationsController < ApplicationController
  before_action :master_user

  def index
    @houses = House.where.not(hid: 0).order(:name)
  end

  def change
    @house = House.find_by(name: params[:name])
    if params[:button] == 'up'
      if @house.reputation.nil?
        @rep_value = 0 + 1
      else
        @rep_value = @house.reputation + 1
      end
    elsif
      if @house.reputation.nil?
        @rep_value = 0 - 1
      else
        @rep_value = @house.reputation - 1
      end
    end

    respond_to do |format|
      if House.update(@house.id, reputation: @rep_value)
        @rep_mod = House.find_by(name: params[:name]).rep_mod
        format.js { render 'change_rep' }
      else
        format.js { redirect_to root_path, danger: 'Fallo al actualizar la reputación, por favor inténtelo de nuevo' }
      end
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
end
