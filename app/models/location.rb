class Location < ApplicationRecord
  belongs_to :family

  def icon
      if  self.location_type.nil?
          nil
      elsif self.location_type == "Castillo"
          ["castle.svg",36,24]
      elsif self.location_type == "Castillo pequeño"
          ["castle_small.svg",36,24]
      elsif self.location_type == "Torre"
          ["tower.svg",36,24]
      elsif self.location_type == "Pueblo"
          ["town.svg",36,24]
      elsif self.location_type == "Ciudad"
          ["city.svg",45,30]
      elsif self.location_type == "Ruinas"
          ["ruins.svg",18,12]
      elsif self.location_type == "Mina"
          ["mine.svg",18,12]
      elsif self.location_type == "Vado"
          ["ford.svg",18,12]
      elsif self.location_type == "Puente"
          ["bridge.svg",18,12]
      else
          nil
      end
  end
end
