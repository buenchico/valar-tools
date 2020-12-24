class System < ApplicationRecord
  belongs_to :sector
  belongs_to :user, optional: true

  def slots_free
      self.slots - (self.ic_slots + self.rp_slots + self.cp_slots )
  end
end
