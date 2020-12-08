class System < ApplicationRecord
  belongs_to :user

  def free_slots
    self.slots - ( self.ic + self.rp + self.cp )
  end
end
