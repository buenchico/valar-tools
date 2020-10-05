class MapController < ApplicationController
  def index
    @locations_main = Location.where('visibility != 99').where('location_type != ?','Ruinas').order(:visibility)
    @location_secondary = Location.where(visibility: 99)
    @location_ruins = Location.where(location_type: "Ruinas").where('kingdom != ?','El Muro')
    @location_wall = Location.where(location_type: "Ruinas").where(kingdom: 'El Muro')
    respond_to do |format|
      format.html
      format.js
    end

  end
end
