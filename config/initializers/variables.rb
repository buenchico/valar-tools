# config/initializers/variables.rb
  
  $tools = {'routes': {'title': 'Calculadora de rutas', 'short_title': 'Ruta', 'version': '1.03', 'path': '/travel_calculator', 'icon': 'fas fa-map-signs'},
    'players': {'title': 'Lista de jugadores', 'short_title': 'Jugadores', 'version': '1.00', 'path': '/users', 'icon': 'fas fa-user'},
    # 'missions': {'title': 'Calculadora de rutas', 'short_title': 'Misiones', 'version': '9.03', 'path': '/missions', 'icon': 'fas fa-map-signs'},
    'armies': {'title': 'Lista de ejércitos', 'short_title': 'Ejércitos', 'version': '1.00', 'path': '/armies', 'icon': 'fas fa-chess-knight'}
    }
    
  $master_tools = {'houses': {'title': 'Lista de casas', 'short_title': 'Casas', 'version': '1.01', 'path': '/houses', 'icon': 'fas fa-flag'}
    }
    
  $static_pages = {'Acerca de': '/about', 'Contacto': '/contact' }

  $kingdoms = ["Dominio","Dorne","Feudos","Islas del Hierro","Islas del Mar Angosto","Norte","Occidente","Rios","Tormenta","Valle"]
  
  $active_houses = ["Master"]
  ($active_houses << House.where(active: true).order(:name).pluck(:name)).flatten! # SELECT house.name_es FROM house WHERE active = true