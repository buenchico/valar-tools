class Location < ApplicationRecord
  belongs_to :family

  def icon
      if  self.location_type.nil?
          nil
      elsif self.location_type == "Castillo"
          ["castle.svg",38]
      elsif self.location_type == "Castillo pequeño"
          ["castle_small.svg",38]
      elsif self.location_type == "Torre"
          ["tower.svg",38]
      elsif self.location_type == "Pueblo"
          ["town.svg",38]
      elsif self.location_type == "Ciudad"
          ["city.svg",38]
      elsif self.location_type == "Ruinas"
          ["ruins.svg",38]
      elsif self.location_type == "Mina"
          ["mine.svg",38]
      elsif self.location_type == "Vado"
          ["ford.svg",38]
      elsif self.location_type == "Puente"
          ["bridge.svg",38]
      else
          nil
      end
  end
end
