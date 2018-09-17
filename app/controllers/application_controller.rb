class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
    $tools = {'routes': {'title': 'Calculadora de rutas', 'short_title': 'Ruta', 'version': '9.03', 'path': 'travel_calculator', 'icon': 'white giant-icon fas fa-map-signs'}
              }
    
    $static_pages = {'Acerca de': '/about', 'Contacto': '/contact' }
end