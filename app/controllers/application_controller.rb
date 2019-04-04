class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  
    $tools = {'routes': {'title': 'Calculadora de rutas', 'short_title': 'Ruta', 'version': '9.03', 'path': '/travel_calculator', 'icon': 'fas fa-map-signs'},
            #  'missions': {'title': 'Calculadora de rutas', 'short_title': 'Misiones', 'version': '9.03', 'path': '/missions', 'icon': 'fas fa-map-signs'},
            #  'armies': {'title': 'Lista de Ejércitos', 'short_title': 'Ejércitos', 'version': '10.01', 'path': '/armies', 'icon': 'fas fa-chess-knight'},
              }
    
    $master_tools = {'players': {'title': 'Lista de jugadores', 'short_title': 'Jugadores', 'version': '10.03', 'path': '/users', 'icon': 'fas fa-user'},
              }
    
    $static_pages = {'Acerca de': '/about', 'Contacto': '/contact' }

  def current_user
      @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end
  
  def logged_in_user
    if current_user.nil?
      flash[:danger] = "Por favor, inicia sesión."
      redirect_to login_url
    end
  end
  
  def correct_user
    @user = User.find(params[:id])
    if @user != current_user && current_user.house != 'Master'
      redirect_to(root_url)
      flash[:danger] = "No tienes permisos para acceder a esta página."
    end
  end
  
end