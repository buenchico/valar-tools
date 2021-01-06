class SectorHouse < ApplicationRecord
  belongs_to :sector
  belongs_to :house

  validates :house_id, :uniqueness => { scope: :sector }

  def info_lvl
    if self.sector.system.nil?
      self.info
    else
      if self.sector.system.house == self.house
        'Colonizado'
      else
        self.info
      end
    end
  end
end
