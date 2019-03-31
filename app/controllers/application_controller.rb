class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
    $tools = {'routes': {'title': 'Calculadora de rutas', 'short_title': 'Ruta', 'version': '9.03', 'path': '/travel_calculator', 'icon': 'fas fa-map-signs'},
            #  'missions': {'title': 'Calculadora de rutas', 'short_title': 'Misiones', 'version': '9.03', 'path': '/missions', 'icon': 'fas fa-map-signs'},
              'armies': {'title': 'Lista de Ejércitos', 'short_title': 'Ejércitos', 'version': '10.01', 'path': '/armies', 'icon': 'fas fa-chess-knight'},
              }
    
    $static_pages = {'Acerca de': '/about', 'Contacto': '/contact' }
end