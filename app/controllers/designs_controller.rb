class DesignsController < ApplicationController

  def index
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to root_url
    elsif current_user.is_master? || current_user.is_admin?
      @designs = Design.all.order(:id)
      respond_to do |format|
        format.html
      end
    else
      @designs = Design.where(house: current_user.house).order(:id)
    end
  end

end
