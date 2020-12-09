# config/initializers/variables.rb


$tools = Tool.where(master: false, active: true).joins(:game).where(games: { active: true }).order(:sort).order(:id)
$master_tools = Tool.where(master: true, active: true).joins(:game).where(games: { active: true }).order(:sort).order(:id)
$all_tools = Tool.all.order(:id)

=begin
  $tools = {'routes': {'title': 'Calculadora de rutas', 'short_title': 'Ruta', 'version': '1.03', 'path': '/travel_calculator', 'icon': 'fas fa-route'},
    'map': {'title': 'Mapa', 'short_title': 'Mapa', 'version': '1.01', 'path': '/map', 'icon': 'fas fa-map-signs'},
    'players': {'title': 'Lista de jugadores', 'short_title': 'Jugadores', 'version': '1.01', 'path': '/users', 'icon': 'fas fa-user'},
    'locations': {'title': 'Lugares', 'short_title': 'Lugares', 'version': '1.01', 'path': '/locations', 'icon': 'fab fa-fort-awesome'},
    # 'missions': {'title': 'Calculadora de rutas', 'short_title': 'Misiones', 'version': '9.03', 'path': '/missions', 'icon': 'fas fa-map-signs'},
    'armies': {'title': 'Lista de ejércitos', 'short_title': 'Ejércitos', 'version': '1.00', 'path': '/armies', 'icon': 'fas fa-chess-knight'}
    }

    Game.first.tool.create('title': 'Lista de jugadores', 'short_title': 'Jugadores', 'version': '1.01', 'path': '/users', 'icon': 'fas fa-user')

  $ap_tools  = {'systems': {'title': 'Sistemas', 'short_title': 'Sistemas', 'version': '1.00', 'path': '/ap/systems', 'icon': 'fas fa-globe'}
    }

  $master_tools = {'houses': {'title': 'Lista de casas', 'short_title': 'Casas', 'version': '1.01', 'path': '/houses', 'icon': 'fas fa-flag'},
    'reputation': {'title': 'Reputación', 'short_title': 'Rep', 'version': '1.00', 'path': '/rep', 'icon': 'fas fa-thumbs-up'}
    }
=end

  $static_pages = {'Acerca de': '/about', 'Contacto': '/contact' }

  $kingdoms = ["Dominio","Dorne","Feudos","Islas del Hierro","Islas del Mar Angosto","Norte","Occidente","Ríos","Tormenta","Valle","El Muro","Más-allá-del-muro","Essos"]

  $active_houses = ["Inactivo","Master"]
  if House.table_exists?
    ($active_houses << House.where(active: true).order(:name).pluck(:name)).flatten! # SELECT house.name_es FROM house WHERE active = true
  end
