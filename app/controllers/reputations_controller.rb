class ReputationsController < ApplicationController
  before_action :master_user

  def index
    @users = User.where.not(house: "Inactivo").where.not(house: "Admin")
  end

  def uprep
    @player = User.find_by(player: params[:player])
    if @player.reputation.nil?
      @rep_value = 0 + 1
    else
      @rep_value = @player.reputation + 1
    end

    respond_to do |format|
      if User.update(@player.id, reputation: @rep_value)
        @rep_mod = User.find_by(player: params[:player]).rep_mod
        format.js { render 'change_rep' }
      else
        format.js { redirect_to root_path, danger: 'Fallo al actualizar la reputación, por favor inténtelo de nuevo' }
      end
    end
  end

  def downrep
    @player = User.find_by(player: params[:player])
    if @player.reputation.nil?
      @rep_value = 0 - 1
    else
      @rep_value = @player.reputation - 1
    end

    respond_to do |format|
      if User.update(@player.id, reputation: @rep_value)
        @rep_mod = User.find_by(player: params[:player]).rep_mod
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
