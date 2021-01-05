class SectorUser < ApplicationRecord
  belongs_to :sector
  belongs_to :user

  validates :user_id, :uniqueness => { scope: :sector }

  def info_lvl
    if self.sector.system.nil?
      self.info
    else
      if self.sector.system.user == self.user
        'Colonizado'
      else
        self.info
      end
    end
  end
end
