class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
    $tool_pages = {'Calculadora de rutas': '/travel_calculator', 'Calculadora de misiones': '/missions' }
    $static_pages = {'Acerca de': '/about', 'Contacto': '/contact' }
end