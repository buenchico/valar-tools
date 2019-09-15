class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  add_flash_types :error, :success, :info, :danger

    $tools = {'routes': {'title': 'Calculadora de rutas', 'short_title': 'Ruta', 'version': '9.03', 'path': '/travel_calculator', 'icon': 'fas fa-map-signs'},
            'players': {'title': 'Lista de jugadores', 'short_title': 'Jugadores', 'version': '10.03', 'path': '/users', 'icon': 'fas fa-user'},
            #  'missions': {'title': 'Calculadora de rutas', 'short_title': 'Misiones', 'version': '9.03', 'path': '/missions', 'icon': 'fas fa-map-signs'},
              'armies': {'title': 'Lista de ejércitos', 'short_title': 'Ejércitos', 'version': '10.01', 'path': '/armies', 'icon': 'fas fa-chess-knight'},
              }
    
    $master_tools = {'houses': {'title': 'Lista de casas', 'short_title': 'Casas', 'version': '10.01', 'path': '/houses', 'icon': 'fas fa-flag'},
              }
    
    $static_pages = {'Acerca de': '/about', 'Contacto': '/contact' }
    
    $active_houses = ["Master"]
    ($active_houses << House.where(active: true).order(:name).pluck(:name)).flatten! # SELECT house.name_es FROM house WHERE active = true
    
    $kingdoms = ["Dominio","Dorne","Feudos","Islas del Hierro","Islas del Mar Angosto","Norte","Occidente","Rios","Tormenta","Valle"]
    
  def current_user
      @current_user ||= User.where("auth_token = ?", cookies[:auth_token]).first if cookies[:auth_token]
  end
  
  def location_list
  #Column name must be between double quotes because, by default, pgsql column names are always lowercase
    @locations_list = Location.order(:name_es).where('LOWER("name_es") like ?', "%#{params[:term].downcase}%")
    @locations_list  = @locations_list.limit(20)
    render json: @locations_list.map(&:name_es)
  end
  
  def family_list
  #Column name must be between double quotes because, by default, pgsql column names are always lowercase
    @families_list = Location.order(:house).where('LOWER("house") like ?', "%#{params[:term].downcase}%")
    @families_list  = @families_list.limit(20)
    render json: @families_list.map(&:house)
  end  
end