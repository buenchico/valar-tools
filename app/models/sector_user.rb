class SectorUser < ApplicationRecord
  belongs_to :sector
  belongs_to :user

  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :sector

  def info_lvl
    if self.sector.system.nil?
      self.info
    else
      if self.sector.system.user == self.user
        4
      else
        self.info
      end
    end
  end
end
