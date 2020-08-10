class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  add_flash_types :error, :success, :info, :danger

  def current_user
      @current_user ||= User.where("auth_token = ?", cookies[:auth_token]).first if cookies[:auth_token]
  end

  def location_list
  #Column name must be between double quotes because, by default, pgsql column names are always lowercase
    @locations_list = Location.order(:name_es).where('LOWER("name_es") like ?', "%#{params[:term].downcase}%")
    @locations_list  = @locations_list.limit(20)
    render json: @locations_list.map(&:name_es).uniq
  end

  def family_list
  #Column name must be between double quotes because, by default, pgsql column names are always lowercase
    @families_list = Family.order(:name).where('LOWER("name") like ?', "%#{params[:term].downcase}%")
    @families_list  = @families_list.limit(20)
    render json: @families_list.map(&:name).uniq
  end
end
