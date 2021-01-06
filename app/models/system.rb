class System < ApplicationRecord
  belongs_to :sector
  belongs_to :house, optional: true
  validate :maximum_slots

  def slots_free
    self.slots - (self.ic_slots + self.rp_slots + self.cp_slots + self.mc_slots)
  end

  def ic_prod
    self.ic_slots * self.ic_bonus * self.efficiency
  end

  def rp_prod
    self.rp_slots * self.rp_bonus * self.efficiency
  end

  def cp_prod
    self.cp_slots * self.cp_bonus * self.efficiency
  end

  private
  def maximum_slots
     if slots_free < 0
       errors.add(:slots)
     end
  end
end
