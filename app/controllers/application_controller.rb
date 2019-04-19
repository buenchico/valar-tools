class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  add_flash_types :error, :success, :info

    $tools = {'routes': {'title': 'Calculadora de rutas', 'short_title': 'Ruta', 'version': '9.03', 'path': '/travel_calculator', 'icon': 'fas fa-map-signs'},
            'players': {'title': 'Lista de jugadores', 'short_title': 'Jugadores', 'version': '10.03', 'path': '/users', 'icon': 'fas fa-user'},
            #  'missions': {'title': 'Calculadora de rutas', 'short_title': 'Misiones', 'version': '9.03', 'path': '/missions', 'icon': 'fas fa-map-signs'},
            #  'armies': {'title': 'Lista de Ejércitos', 'short_title': 'Ejércitos', 'version': '10.01', 'path': '/armies', 'icon': 'fas fa-chess-knight'},
              }
    
    $master_tools = {'houses': {'title': 'Lista de casas', 'short_title': 'Casas', 'version': '10.01', 'path': '/houses', 'icon': 'fas fa-flag'},
              }
    
    $static_pages = {'Acerca de': '/about', 'Contacto': '/contact' }

  def current_user
      @current_user ||= User.where("auth_token = ?", cookies[:auth_token]).first if cookies[:auth_token]
  end
  
end