class Location < ApplicationRecord
  belongs_to :family

  def icon
      if  self.location_type.nil?
          nil
      elsif self.location_type == "Castillo"
          "castle.svg"
      elsif self.location_type == "Castillo pequeño"
          "castle_small.svg"
      elsif self.location_type == "Torre"
          "tower.svg"
      elsif self.location_type == "Pueblo"
          "town.svg"
      elsif self.location_type == "Ciudad"
          "city.svg"
      elsif self.location_type == "Ruinas"
          "ruins.svg"
      elsif self.location_type == "Mina"
          "mine.svg"
      elsif self.location_type == "Vado"
          "ford.svg"
      elsif self.location_type == "Puente"
          "bridge.svg"
      else
          nil
      end
  end
end
